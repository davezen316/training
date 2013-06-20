class PostMailer < ActionMailer::Base
  default from: "Ventech Sdn. Bhd."
	
  def post_information(post)
  	@post = post
  	@user = @post.user
    attachments.inline['apple_logo.png'] = File.read("#{Rails.root.to_s}/public/images/apple_logo.png")
  	mail(to: @user.email, subject: 'Thanks for new post')
  end

  def post_update(post)
  	@post = post
  	@user = @post.user
    attachments.inline['apple_logo.png'] = File.read("#{Rails.root.to_s}/public/images/apple_logo.png")
  	mail(to: @user.email, subject: 'Post has updated')
  end
end
