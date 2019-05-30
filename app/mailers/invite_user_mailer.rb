class InviteUserMailer < ApplicationMailer
  def invite
    @user = params[:user]
    @password = params[:password]

    mail to: @user.email
  end
end
