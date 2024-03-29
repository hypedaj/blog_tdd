require "spec_helper"

describe User do
	it { should validate_presence_of(:email) }
	it { should validate_presence_of(:first_name) }
	it { should have_many(:posts) }
	it { should have_many(:messages) }
end
