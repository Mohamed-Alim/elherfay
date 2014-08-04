require 'rails_helper'

RSpec.describe "rates/index", :type => :view do
  before(:each) do
    assign(:rates, [
      Rate.create!(
        :cleanliness => 1,
        :quality => "",
        :price => 2,
        :punctulity => 3,
        :average => "9.99",
        :dealing => 4
      ),
      Rate.create!(
        :cleanliness => 1,
        :quality => "",
        :price => 2,
        :punctulity => 3,
        :average => "9.99",
        :dealing => 4
      )
    ])
  end

  it "renders a list of rates" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
