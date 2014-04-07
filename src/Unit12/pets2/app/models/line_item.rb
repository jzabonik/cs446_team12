class LineItem < ActiveRecord::Base
  belongs_to :animal	# each line item is an animal
  belongs_to :consideration		# each line item is a consideration
end
