class ApplicationController < ActionController::API
  include ActionController::Cookies

  def login_player
    session[:player_id] = @player.id
  end

  def logged_in?
    !!session[:player_id]
  end

  def current_player
    Player.find_by_id(session[:player_id])
  end

end
