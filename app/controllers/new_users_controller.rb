class NewUsersController < ApplicationController
  before_action :set_new_user, only: [:show, :edit, :update, :destroy]

 
  def index
    @new_users = NewUser.all
  end


  def show
  end

 
  def new
    @new_user = NewUser.new
  end

 
  def edit
  end

 
  def create
    @new_user = NewUser.create(new_user_params)

    respond_to do |format|
      if @new_user.save
        format.html { redirect_to welcome_path, notice: 'New user was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  def update
    respond_to do |format|
      if @new_user.update(new_user_params)
        format.html { redirect_to new_users_path, notice: 'New user was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end


  def destroy
    @new_user.destroy
    respond_to do |format|
      format.html { redirect_to new_users_url, notice: 'New user was successfully destroyed.' }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_user
      @new_user = NewUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_user_params
      params.require(:new_user).permit(:email, :password)
    end
end
