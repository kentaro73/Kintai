class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]
  before_action :require_admin, only: [:index, :destroy]
  before_action :find_params, only: [:show, :destroy]

  def index
    @users = User.all
  end

  def show
    @attendances = @user.attendances.all.order(created_at: :desc)
  end

  def destroy
    @user.destroy
    redirect_to users_path, notice: "'#{@user.name}' を削除しました"
  end

  private

    def require_admin
      redirect_to root_path, notice: "You're not authorized." unless current_user&.admin?
    end

    def correct_user
      @user = User.find_by(id: params[:id])
      redirect_to root_path, notice: '権限がありません' unless @user.id == current_user.id
    end

    def find_params
      @user = User.find(params[:id])
    end
end
