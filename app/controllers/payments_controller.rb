class PaymentsController < ApplicationController
  def index;
    @payments = Payment.where(user_id: current_user.id)
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.create(payment_params)
    @payment.user_id = current_user.id
    @group = Group.find_by(id: params[:group_id])
    @group.payments << @payment
    # group_payment = GroupsPayment.create(group_id: group.id, payment_id: @payment.id)

    if @payment.save 
      flash[:success] = 'purchase saved successfully'
      redirect_to group_payments_path
    else
      render :new
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:name, :amount)
  end
end
