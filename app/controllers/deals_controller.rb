class DealsController < ApplicationController
  def index
    @deals = Deal.order("created_at")
    @new_consumer = Consumer.new
  end
end