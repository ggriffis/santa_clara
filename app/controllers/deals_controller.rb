class DealsController < ApplicationController
  def index
    @deals = Deal.all
    @new_consumer = Consumer.new
  end
end