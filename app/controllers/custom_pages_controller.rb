class CustomPagesController < ApplicationController
  def hello
    # render "greet_the_world"
    render layout: 'mailer'
  end
end
