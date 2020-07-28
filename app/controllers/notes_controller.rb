class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: NoteSerializer.new(notes)
    end

    def show
        note = Note.find(params[:id])
        render json: NoteSerializer.new(note)
    end

    def create
        note = Note.create(note_params)
        if note.valid?
            render json: NoteSerializer.new(note) 
        else 
            render json: { error: 'failed to create note'}, status: :not_acceptable
        end
    end

    def update 
        note = Note.find(params[:id])
        note.update(note_params)
        if note.valid?
            render json: NoteSerializer.new(note)
        else 
            render json: { error: 'failed to update '} 
        end 
    end 

    def destroy 
        note = Note.find(params[:id])
        note.destroy 
        render json: NoteSerializer.new(note)
    end 

    private
    def note_params
        params.require(:note).permit(:title, :content, :completed, :starred, :user_id)
    end

end
