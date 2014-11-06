class StaticPagesController < ApplicationController
  def home
  	@request = request
  	@response = response
  end
end
