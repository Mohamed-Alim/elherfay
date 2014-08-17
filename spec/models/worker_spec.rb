require 'rails_helper'

RSpec.describe Worker, :type => :model do

subject {@worker}

it {should respond_to(:name)}
it {should respond_to(:telephone)}
it {should respond_to(:availability)}
it {should respond_to(:totalavg)}
it {should respond_to(:avcomment)}
it {should respond_to(:region)}
it {should respond_to(:worker_type)}

it {should be_valid}

describe " when name is not present" do
  before {@worker.name=" "}
  it {should_not be_valid}
end
describe "when telephone is not present" do
  before {@worker.telephone=" "}
  it {should_not be_valid}
end







end
