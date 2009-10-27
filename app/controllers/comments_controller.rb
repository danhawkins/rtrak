class CommentsController < ApplicationController
  before_filter :find_commenter
  
  def index
    @comments = Comment.all
  end
  
  def show
    @comment = Comment.find(params[:id])
  end
  
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = @commenter.comments.create(params[:comments])
    respond_to do |format|
      format.html {redirect_to :controller => @commenter.class.to_s.pluralize.downcase, :action => :show, :id => @commenter.id}
    end
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Successfully updated comment."
      redirect_to @comment
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Successfully destroyed comment."
    redirect_to comments_url
  end
  
  private
    
    def find_commenter
      @klass = params[:commentable_type].capitalize.constantize
      @commenter = klass.find(params[:commentable_id])
    end
end
