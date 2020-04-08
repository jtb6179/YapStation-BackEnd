class BabbleLikesController < ApplicationController

    def index
        @babble_likes = BabbleLike.all 
        render :json @babble_likes
    end

    def create
        @babble_like =  @user.babble_like.create(babble_like_params)
        render :json @babble_like 
    end

private

    def babble_like_params
        params.permit(:a_like,  :babble_id)
    end
end
