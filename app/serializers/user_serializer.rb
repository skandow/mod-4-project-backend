class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :email, :age, :gender, :image_url, :notes
end
