require 'rails_helper'

RSpec.describe Rate, :type => :model do

let(:worker){FactoryGirl.create(:worker)}
before do
  @rate= worker.rates.build(price:3, cleanliness:3, punctuality:2, dealing:1, comment:"good worker")
  
end
subject{@rate}
it {should respond_to(:price)}
it {should respond_to(:cleanliness)}
it {should respond_to(:punctuality)}
it {should respond_to(:dealing)}
it {should respond_to(:comment)}
its(:worker){should == worker}

it {should be_valid}
end
