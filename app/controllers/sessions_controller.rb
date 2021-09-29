class SessionsController < ApplicationController

  def create
    @player = Player.find_by(username: params[:username])
    if @player&.authenticate(params[:password])
      login_player
      render json: @player, status: :ok
    else
      render json: {errors: "Username or password doesn't match"}, status: :unauthorized
    end
  end

  def destroy
    session.delete :player_id
    head :no_content
  end


end
