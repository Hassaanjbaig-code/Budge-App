class GroupsController < ApplicationController
  def index
    @user = current_user
    @groups = Group.includes([:payments]).where(user_id: @user.id)
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
