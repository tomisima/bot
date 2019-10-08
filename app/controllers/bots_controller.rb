class BotsController < ApplicationController
  def index
    @user = User.new
    
    
     @name = params[:name]
    respond_to do |format|
      format.html
      format.js
    end
  end
end
