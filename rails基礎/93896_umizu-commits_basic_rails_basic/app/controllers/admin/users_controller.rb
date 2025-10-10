class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: %i[show edit update destroy]
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.page(params[:page])
  end

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user), success: t('defaults.flash_message.updated', item: User.model_name.human)
    else
      flash.now[:danger] = t('defaults.flash_message.not_updated', item: User.model_name.human)
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy!
    redirect_to admin_users_path, success: t('defaults.flash_message.deleted', item: User.model_name.human), status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :role, :avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
