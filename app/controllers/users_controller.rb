class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    params[:user].delete(:password) if params[:user][:password].blank?
    params[:user].delete(:password_confirmation) if params[:user][:password].blank? and params[:user][:password_confirmation].blank?
    if @user.update_attributes(user_params)
      flash[:notice] = "Successfully updated User."
      redirect_to root_path
    else
      render :action => 'edit'
    end
  end

  def index
    @users = User.all.order("name ASC")
  end
  
  private
   # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :account_balance, :email, :account_balance_out)
    end

end
