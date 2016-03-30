module ReviewsHelper
  def review_params
    params.require(:review).permit(:body, :rating)
  end
end