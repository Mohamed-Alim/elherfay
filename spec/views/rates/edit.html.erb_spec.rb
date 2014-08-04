require 'rails_helper'

RSpec.describe "rates/edit", :type => :view do
  before(:each) do
    @rate = assign(:rate, Rate.create!(
      :cleanliness => 1,
      :quality => "",
      :price => 1,
      :punctulity => 1,
      :average => "9.99",
      :dealing => 1
    ))
  end

  it "renders the edit rate form" do
    render

    assert_select "form[action=?][method=?]", rate_path(@rate), "post" do

      assert_select "input#rate_cleanliness[name=?]", "rate[cleanliness]"

      assert_select "input#rate_quality[name=?]", "rate[quality]"

      assert_select "input#rate_price[name=?]", "rate[price]"

      assert_select "input#rate_punctulity[name=?]", "rate[punctulity]"

      assert_select "input#rate_average[name=?]", "rate[average]"

      assert_select "input#rate_dealing[name=?]", "rate[dealing]"
    end
  end
end
