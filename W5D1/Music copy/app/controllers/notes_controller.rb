class NotesController < ApplicationController

  def create
    @track = Track.find_by(id: params[:track_id])
    @notes = @track.notes
    @note = Note.create(note_params)
    @note.track_id = @track.id
    @note.user_id = current_user.id

    if @note.save
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @note.errors.full_messages
      render 'tracks/show'
    end
  end

  def destroy
    @note = Note.find_by(id: params[:id])
    if @note.user_id == current_user.id
      @note.destroy

      redirect_to track_url(@note.track_id)
    else
      render text: "You cannot destroy what is not yours", status: 403
    end
  end

  private

  def note_params
    params.require(:note).permit(:content, :email)
  end
end
