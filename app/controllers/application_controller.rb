class ApplicationController < ActionController::API
    before_action :authorized 

    def encode_token(payload)
        JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end 

    def auth_header
        request.headers['Authorization']
    end 

    def decoded_token
        p auth_header
        if auth_header 
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil                
            end
        end
    end 

    def current_user
        p "Made it to current user"
        if decoded_token
            user_id = decoded_token[0]['user_id']
            user = User.find_by(id: user_id)
        end 
    end 

    def logged_in?
        p "Made it to logged in"
        !!current_user 
    end 

    def authorized
        p "Made it to authorized"
        render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
    end
end
