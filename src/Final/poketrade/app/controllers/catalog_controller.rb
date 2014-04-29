class CatalogController < ApplicationController
  before_filter :check_logged_in!

  def index
  end
  
  private
  
    def check_logged_in! # if admin is not logged in, user must be logged in
      authenticate_trainer! 
    end
end
