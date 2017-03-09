# frozen_string_literal: true
class LikesController < ApplicationController
  def create
    like = Like.new(like_params)
    respond_to do |format|
      if like.save
        format.text { render plain: 'ok' }
        format.json { render json: like, status: created }
      else
        format.text { render plain: 'error' }
        format.json { render json: like.errors, status: :unprocessable_entity }
      end
    end
  end

  # def destroy
  #   like = Like.where(like_params)
  #   respond_to do |format|
  #     if like.destroy
  #       format.json { render plain: 'destroyed' }
  #     else
  #       format.json { render plain: 'failed' }
  #     end
  #   end
  # end

  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end
end
