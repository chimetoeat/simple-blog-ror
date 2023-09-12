require "test_helper"

class CommentMailerTest < ActionMailer::TestCase
  test "comment_created" do
    mail = CommentMailer.comment_created
    assert_equal "Comment created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
