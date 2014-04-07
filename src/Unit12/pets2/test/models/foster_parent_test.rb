require 'test_helper'

class FosterParentTest < ActiveSupport::TestCase
	
	test "foster parent attributes must not be empty" do
		foster_parent = FosterParent.new
		assert foster_parent.invalid?
		assert foster_parent.errors[:name].any?
		assert foster_parent.errors[:address].any?
		assert foster_parent.errors[:email].any?
	end
end
