class Payments < ApplicationController
  def new
    @payment = Payment.new
  end
end
