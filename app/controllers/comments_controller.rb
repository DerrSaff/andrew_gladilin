class CommentsController < ApplicationController
  before_action :set_comment, only: [:update, :destroy]

  def create
    # I just don't know how to do that better.
    @resource = eval("comment_params[:resource_type].chop.capitalize.classify.constantize.find(comment_params[:resource_id])")
    @resource.comments.create(user_id: comment_params[:user_id], message: comment_params[:message], answer: comment_params[:answer])
    redirect_to @resource
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:user_id, :message, :resource_id, :answer, :resource_type)
    end
end
