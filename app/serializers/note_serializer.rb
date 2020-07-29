class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :content, :starred, :user_id, :created_at
  belongs_to :user
end
