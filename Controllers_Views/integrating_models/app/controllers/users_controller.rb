class UsersController < ApplicationController
    def index
        @users = User.all
        render 'index'
    end
    def new
        render 'new'
    end
    def create
        @user = User.create( name: params[:name])
        puts "Successfully added new user."
        redirect_to '/users'
    end
    def show
        render json: User.find(1)
    end
    def edit
        @user = User.find(1)
    end
    def update
        redirect_to '/users/1'
    end
    def total
        render text: User.count
    end
end
    
