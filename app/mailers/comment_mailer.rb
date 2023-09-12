class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.comment_created.subject
  #
  def comment_created
    @user = params[:user]
    @comment = params[:comment]
    @blog = @comment.blog
    @user = @blog.user
    @greeting = "Hi"
    
    mail to: @user.email, subject: "New Comment Created"
  end
end