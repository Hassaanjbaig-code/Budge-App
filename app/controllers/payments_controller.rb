class Payments < ApplicationController
  def index
    @payment = Payment.all
  end
end
