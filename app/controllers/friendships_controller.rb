class FriendshipsController < ApplicationController
    def index
        @friendships = Friendship.all 
        render json: @friendships
    end

    def create
        @friendship = Friendship.create(user_id: logged_in_user.id, friend_id: params[:friend_id],)
        render json: @friendship
    end

    def destroy
        @friendship = Friendship.find(params[:id])
        @friendship.destroy
    end

private
    def friendship_params
        params.permit(:user_id, :friend_id)
    end
end
