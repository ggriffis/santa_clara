class ConsumersController < ApplicationController
  def create
    @consumer = Consumer.new
    @consumer.email = params[:email]
    if @consumer.save
      flash[:notice] = "You have been added to the email list!"
      redirect_to :root
    else
      flash[:alert] = @consumer.errors.values.join('. ')
      redirect_to :root
    end
  end
end