class UsersController < ApplicationController
    

    # new
    get "/users/new" do
      erb :"users/new.html"
    end


    # create
    post "/users" do
      user = User.create(params)
      session[:user_id] = user.id
      redirect "/"
     
    end

    # users show
    get "/users/:id" do
      @user = User.find(params[:id])
     erb :"users/show.html"
    end

    get "/login" do
       erb :"users/login.html"
    end 
    
    post "/users/login" do
      user = User.find_by_username(params[:username])
      if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/"
      else 
        @errors = "No such account exists. Please try again or signup for a new account."
        erb :"users/login.html"
      end
    end
    
    get "/logout" do
      session.clear
      redirect "/"
    end  
end

