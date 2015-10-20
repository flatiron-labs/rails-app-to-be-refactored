class PicturesController < ApplicationController
  def create
    # Only allow users with names who last signed in within a week ago to create
    # pictures
    if user.name && user.last_sign_in_at < 1.week.ago
      picture = Picture.create(params[:picture])
      if picture
        # Send an email telling the user their picture was successfully created
        PictureMailer.send_email_added_success(current_user, picture)
      end
    end
  end
end
