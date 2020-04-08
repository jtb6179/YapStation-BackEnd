class Api::V1::UsersController < ApplicationController
    before_action :authorized, only: [:persist]
    
    def index
        @users = User.all
        render json: @users
    end

    def create
        # byebug
        @user = User.create(user_params )
            
        if @user.valid?
            infoToSaveInBox = {user_id: @user.id}
            wristband = encode_token(infoToSaveInBox)
            render json: { user: UserSerializer.new(@user), token: wristband }, status: 201
        else
            render json: {error: @user.errors.full_messages}
        end
    end

    def login
        @user = User.find_by(username: params[:username])
        
        if @user && @user.authenticate(params[:password])
            infoToSaveInBox = {user_id: @user.id}
            wristband = encode_token(infoToSaveInBox)
            render json: { user: UserSerializer.new(@user), token: wristband }, status: 201
        else
            render json: {error: "Invalid Username or Password, Try again please", status: 401}
        end
    end

    def persist
        infoToSaveInBox = {user_id: @user.id}
        wristband = encode_token(infoToSaveInBox)
        render json: { user: UserSerializer.new(@user), token: wristband }
    end
    
private 

    def user_params
        params.permit(:username, :password, :profile_name, :bio, :age, :location, :education_status)
    end

end
