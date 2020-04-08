class BabblesController < ApplicationController
    before_action :authorized, only: [:create, :update]

    def index
        @babbles = Babble.all
        render json: @babbles
    end

    def create
        # byebug
        @babble =  @user.babbles.create(babble_params)
        render json: @babble 
    end

    def update
        @babble = Babble.find(params[:id])
        @babble.update
        render json: @babble
    end

private

    def babble_params
      params.permit(:text)
    end
end
