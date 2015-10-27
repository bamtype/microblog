
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    # @post.watcher = current_watcher.username
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    # @watcher = Watcher.find(params[:id])
    @post=Post.find(params[:id])
  end

  # GET /posts/new
  def new
    if session[:user_id]=true
    @post = Post.new
  else
    flash[:notice]="Please sign in again"
    redirect_to login_path
    end
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.watcher_id = current_watcher  
    # @post = current_watcher.post.build(params[:post])
    @post.user_id = session[:id]
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        
      else
        format.html { render :new }
      end
    end
  end

  # def current_watcher
  #         Watcher.find(session[:watcher_id])
  # end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
        
      end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
     
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :kind, :content).merge(watcher: current_watcher)
    end
end
