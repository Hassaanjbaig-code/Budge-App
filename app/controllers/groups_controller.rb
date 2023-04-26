class GroupsController < ApplicationController
 def index
   @user = current_user
   @groups = Group.where(user_id: @user.id)
   # payment = Payment.where(user_id: @user.id)
   # @amount = GroupPayment.where(group_id: @groups.ids).joins(:payment).select('sum(payments.amount) as total_amount').group(:group_id)
 end
 def new
   @group = Group.create
 end
   def create
       @group = Group.create(group_params)
       @group.user_id = current_user.id
       if @group.save
          redirect_to groups_path
       else
          render :new
       end
   end

   private 

   def group_params
      params.require(:group).permit(:name, :icon)
   end
end