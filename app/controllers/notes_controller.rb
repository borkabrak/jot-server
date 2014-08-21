class NotesController < ApplicationController
  def index
    @notes = Note.all
    respond_to do |format|
      format.html
      format.json { render json: @notes }
    end
  end

  def new
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
  end

  def show
    @note = Note.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @note }
    end
  end

  def create
    @note = Note.new(note_params)
    @note.save
    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:body)
  end

end
