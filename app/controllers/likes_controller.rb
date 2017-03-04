class LikesController < ApplicationController
  def create
    like = Like.new(like_params)
    like.save
    respond_to do |format|
      if like.save
        format.json { head :ok }
      else
        format.json { render status: :unprocessable_entity }
      end
    end
  end

  def destroy

  end

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end
end
