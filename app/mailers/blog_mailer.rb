class BlogMailer < ApplicationMailer
  
  def blog_mail(blog)
    @blog = blog

    mail to: @blog.user.email, subject: "blogの投稿確認メール"
  end

end
