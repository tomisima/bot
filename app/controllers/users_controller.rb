class UsersController < ApplicationController
  def index
    @users = User.all
    #@user = User.find_by(params[:id])
  end
 
  def new
    @users = User.new
   # @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
 
  def create
    @users = User.all
   # @name = params[:user][:name]
    @user = User.new(apple_params)
    respond_to do |format|
      if @user.save
        format.html
        format.js
      else
        format.js {render :new}
      end
    end
  end
  
  def edit
    @user = User.find(params[:id])
    @users = User.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
 
  def update
    @users = User.all
   # @name = params[:user][:name]
    @user = User.find(params[:id])
    @user.update(apple_params)
    respond_to do |format|
      if @user.save
        format.html
        format.js
      else
        format.js {render :new}
      end
    end
  end
  
  def update_last
    @user = User.find(params[:id])
      @user.update(apple_params)
         if @user.save
           redirect_to "/bots/index"
           flash[:success] = "登録が完了しました"
         else
            render "edit"
         end
  end

  def apple_params
    params.require(:user).permit(:name, :tel, :address)
  end
end
