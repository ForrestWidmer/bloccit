class FavoriteMailer < ActionMailer::Base
  default from: "fwid77@gmail.com"


  def new_comment(user, post, comment)
    @user = user
    @post = post
    @comment = comment

    headers["Message-ID"] = "<comments/#{@comment.id}@forrest-bloccit.example>"
    headers["In-Reply-To"] = "<post/#{@post.id}@forrest-bloccit.example>"
    headers["References"] = "<post/#{@post.id}@forrest-bloccit.example>"
  
    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
