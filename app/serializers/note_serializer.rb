class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :content, :completed, :starred, :user_id, :created_at
  belongs_to :user
end
