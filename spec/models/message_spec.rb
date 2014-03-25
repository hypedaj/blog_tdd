require "spec_helper"

describe Message do
	context "validations" do
		it { should validate_presence_of(:user) }
		it { should validate_presence_of(:post) }
		it { should validate_presence_of(:message) }
	
	end

	context "assocations" do
		it { should belong_to(:user) }
		it { should belong_to(:post) }
		
	
	end
end