class NotesController < ApplicationController
  def index
    @notes = Notes.all
  end
end
