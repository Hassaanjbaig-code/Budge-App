class PaymentsController < ApplicationController
  def index
    @group = Group.find_by(id: params[:group_id])
    @payments = @group.payments
  end

  def new
    @payment = Payment.new
    @groups = current_user.group
  end

  def create
    @payment = Payment.create(payment_params)
    @group = Group.find(params[:payment][:group_id])
    @payment.user_id = @group.user_id
    @group.payments << @payment

    if @payment.save
      redirect_to group_payments_path(@group)
    else
      render :new
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:name, :amount)
  end
end
