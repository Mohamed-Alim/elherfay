require 'rails_helper'

RSpec.describe "rates/index", :type => :view do
  before(:each) do
    assign(:rates, [
      Rate.create!(
        :cleanliness => 1,
        :quality => 2,
        :price => 3,
        :punctulity => 4,
        :dealing => 5,
        :average => "9.99",
        :comment => "MyText"
      ),
      Rate.create!(
        :cleanliness => 1,
        :quality => 2,
        :price => 3,
        :punctulity => 4,
        :dealing => 5,
        :average => "9.99",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of rates" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
