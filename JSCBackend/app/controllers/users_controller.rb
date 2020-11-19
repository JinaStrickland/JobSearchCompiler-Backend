class UsersController < ApplicationController

    before_action :find_user, only: [:show, :update, :destroy]
    # skip_before_action :logged_in?, only: [:index, :show, :create]
    
    def index
        @users = User.all
        render json: @users
    end

    def show 
        render json: @user
        # render json: @user, only: [:username, :email, :image], include: [:questions => {include: :answers, only: [:title, :body, :tag]}]
    end

    def create
        user = User.new(user_params)
        user.save 
        render json: user

        # if user.valid?
        #     render json: { user: user }, status: :created 

        # else
        #     render json: { error: "Failed to create a user" }, status: 404
        # end
    end

    def update 
        @user.update(user_params)
        render json: @user 
    end

    def destroy
        @user.destroy 
        user = User.all 
        if @user.destroy
            render json: {
                user: user, 
                errors: "Account has been Deleted",
                success: true
            }
        else 
            render json: {
                success: false,
                errors: user.errors.full_messages
            }
        end
    end




private 
    def find_user 
        @user = User.find(params[:id])
    end

    def user_params 
        params.require(:user).permit(:username, :email, :password, :image, :company_id)
    end

end

