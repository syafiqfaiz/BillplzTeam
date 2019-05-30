# Preview all emails at http://localhost:3000/rails/mailers/invite_user_mailer
class InviteUserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/invite_user_mailer/invite
  def invite
    InviteUserMailer.invite
  end

end
