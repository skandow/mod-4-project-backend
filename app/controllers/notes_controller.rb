class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: NoteSerializer.new(notes)
    end

    def show
        note = Note.find(params[:id])
        render json: NoteSerializer.new(note)
    end
end
