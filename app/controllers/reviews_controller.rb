class ReviewsController < ApplicationController
include ReviewsHelper

 def create
  @review = Review.new(review_params)
  @game = Game.find(params[:game_id])
  @review.reviewer_id = current_user.id
  @review.game_id = @game.id
  if @review.save
    if request.xhr?
      render "_review", locals: {review: @review}, layout: false
    else
      redirect_to @game
    end
  end
end

end