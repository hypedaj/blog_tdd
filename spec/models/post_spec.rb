require "spec_helper"

describe Post do
	context "validations" do
		it { should validate_presence_of(:title) }
		it { should validate_presence_of(:user) }
		it { should validate_presence_of(:blog) }
	
	end

	context "assocations" do
		it { should belong_to(:user) }
		it { should have_many(:messages) }
	
	end
end