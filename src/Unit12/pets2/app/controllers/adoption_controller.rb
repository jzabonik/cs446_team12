class AdoptionController < ApplicationController
  include CurrentConsideration
  before_action :set_consideration
  
  def index
	@sort = params[:sort]
	if @sort
		if @sort == 'breed'		# user chose to sort by breed
			@animals = Animal.order(:breed)
		else					# user chose to sort by animal name(default)
			@animals = Animal.order(:name)
		end
	else
		@animals = Animal.order(:name)
	end
  end
end
