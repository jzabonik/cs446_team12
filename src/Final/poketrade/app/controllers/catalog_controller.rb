class CatalogController < ApplicationController
  before_filter :check_logged_in!

  def index
  end
  
  private
  
    def check_logged_in! # if admin is not logged in, user must be logged in
      if !admin_signed_in?
        authenticate_trainer!
	  else
		authenticate_admin!
      end   
    end
end
