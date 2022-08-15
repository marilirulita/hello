class PagesController < ApplicationController
  def index
    puts params[:action]
  end
  def hello
    @info = 'This is a new info'
  end
end
