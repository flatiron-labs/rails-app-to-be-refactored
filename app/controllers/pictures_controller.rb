class PicturesController < ApplicationController
  before_action :validate_user_participation!

  def create
    @picture = current_user.pictures.new(picture_params)

    if @picture.save
      # TODO: check this method... currently undefined
      # PictureMailer.send_email_added_success(current_user, @picture)
      redirect_to root_path, notice: 'Success! Check your inbox.'
    else
      redirect_to root_path, alert: 'Something went wrong... try again?'
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:url)
  end
end
