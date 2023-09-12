# Preview all emails at http://localhost:3000/rails/mailers/comment_mailer
class CommentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/comment_mailer/comment_created
  def comment_created
    CommentMailer.with(user: User.first, comment: Blogcomment.first).comment_created
  end

end
