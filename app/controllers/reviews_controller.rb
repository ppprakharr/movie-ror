class ReviewsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_movie, only: [:create, :new]

    def new
        @review = @movie.reviews.new
      end
    def create
        @review = @movie.reviews.new(review_params)
        @review.rating = correct_rating(@review.rating)
        @review.user =current_user
        if @review.save
            redirect_to root_path, notice: 'Review submitted successfully'
        else
            redirect_to fallback_location: root_path, alert: 'Unable to submit the review'
        end

    end



    private

    def set_movie
        @movie = Movie.find(params[:movie_id])
    end
    def correct_rating(rating)
        rating - 1
        
    end

    def review_params
        params.require(:review).permit(
            :description,
            :rating
        )
    end
end