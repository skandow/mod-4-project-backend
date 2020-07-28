class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :content, :completed, :starred, :user_id
  belongs_to :user
end
