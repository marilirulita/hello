class PagesController < ApplicationController
  def index
    puts params[:action]
  end
  
  def hello
    session[:current_name] = 'Mar y sol'
    @greeting = 'Hello, World!'
    @info = 'This is a new info'
    @answer = true
    @isTrue = 'This variable is true'
    @isFalse = 'This variable is false'
    @other_name = session[:current_name]
  end

  def set_session
    session[:current_name] = 'Mar y sol'
  end
end
