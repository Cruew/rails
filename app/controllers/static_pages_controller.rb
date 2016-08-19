class StaticPagesController < ApplicationController
  
  def landing_page
  	@product = Product.limit(3)
  end

  def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	ActionMailer::Base.mail(:from => @email,
  		:to => 'hello@hello.com',
  		:subject => "A new contact form message from #{@name}",
  		:body => @message).deliver_now
  end
end
