class PagesController < ApplicationController
  def index
    puts params[:action]
  end

  def hello
    session[:current_name] = 'Mar y sol'
    @other_name = session[:current_name]
  end

  def set_session
    session[:current_name] = 'Mar y sol'
  end
end
