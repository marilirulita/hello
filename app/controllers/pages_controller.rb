class PagesController < ApplicationController
  def index
    puts params[:action]
  end
  
  def hello
    @greeting = 'Hello World'
    @info = 'This is a new info'
    @answer = false
    @isTrue = 'This variable is true'
    @isFalse = 'This variable is false'
  end
end
