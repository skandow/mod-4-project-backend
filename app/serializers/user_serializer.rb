class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :age, :gender, :image_url, :notes
end
