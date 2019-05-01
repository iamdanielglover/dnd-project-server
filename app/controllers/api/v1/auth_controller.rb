class Api::V1::AuthController < ApplicationController

  def login
     @user = User.find_by(username: params[:username])

     if @user && @user.authenticate(params[:password])

       token = encode_token(@user.id)

       render json: {user: @user, token: token}
     else
       render json: {errors: "You dun goofed!"}
     end
   end

   def get_current_user
     if session_user
       render json: {user: session_user}
     else
       render json: {errors: "Whoa! Hold your horses!"}
     end
   end

end
