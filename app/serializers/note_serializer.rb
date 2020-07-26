class NoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :completed, :starred
  belongs_to :user
end
