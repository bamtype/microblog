class WatchersController < ApplicationController
  before_action :set_watcher, only: [:show, :edit, :update, :destroy]

  def index
    @watchers = Watcher.all
  end

  def show
    @watchers = Watcher.find params[:id]
  end

  def new
    @watcher = Watcher.new
  end



  def edit
  end

  def create
    @watcher = Watcher.new(watcher_params)
    # if pw == pw conf

    respond_to do |format|
      if @watcher.save
        format.html { redirect_to @watcher, notice: 'Watcher was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  def update
    respond_to do |format|
      if @watcher.update(watcher_params)
        format.html { redirect_to @watcher, notice: 'Watcher was successfully updated.' }
       
      else
        format.html { render :edit }
        
      end
    end
  end

  def destroy
    @watcher.destroy
    respond_to do |format|
      format.html { redirect_to watchers_url, notice: 'Watcher was successfully destroyed.' }
    end
  end

  private

    def set_watcher
      @watcher = Watcher.find(params[:id])
    end

    def watcher_params
      params.require(:watcher).permit(:username, :fname, :lname, :password, :password_confirmation, :email)
    end
end
