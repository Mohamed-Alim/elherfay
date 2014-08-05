require 'rails_helper'

RSpec.describe "rates/index", :type => :view do
  before(:each) do
    assign(:rates, [
      Rate.create!(
        :quality => 1,
        :price => 2,
        :cleanliness => 3,
        :punctuality => 4,
        :dealing => 5,
        :average => "9.99",
        :worker_id => 6,
        :review => "Review"
      ),
      Rate.create!(
        :quality => 1,
        :price => 2,
        :cleanliness => 3,
        :punctuality => 4,
        :dealing => 5,
        :average => "9.99",
        :worker_id => 6,
        :review => "Review"
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
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "Review".to_s, :count => 2
  end
end
