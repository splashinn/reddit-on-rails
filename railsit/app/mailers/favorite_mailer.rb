class FavoriteMailer < ActionMailer::Base
  default from: "example@example.com"

  def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    # New Headers
    headers["Message-ID"] = "<comments/#{@comment.id}@railsit.example>"
    headers["In-Reply-To"] = "<post/#{@post.id}@railsit.example>"
    headers["References"] = "<post/#{@post.id}@railsit.example>"

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
