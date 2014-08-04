require 'rails_helper'

RSpec.describe "rates/edit", :type => :view do
  before(:each) do
    @rate = assign(:rate, Rate.create!(
      :cleanliness => 1,
      :quality => 1,
      :price => 1,
      :punctulity => 1,
      :dealing => 1,
      :average => "9.99",
      :comment => "MyText"
    ))
  end

  it "renders the edit rate form" do
    render

    assert_select "form[action=?][method=?]", rate_path(@rate), "post" do

      assert_select "input#rate_cleanliness[name=?]", "rate[cleanliness]"

      assert_select "input#rate_quality[name=?]", "rate[quality]"

      assert_select "input#rate_price[name=?]", "rate[price]"

      assert_select "input#rate_punctulity[name=?]", "rate[punctulity]"

      assert_select "input#rate_dealing[name=?]", "rate[dealing]"

      assert_select "input#rate_average[name=?]", "rate[average]"

      assert_select "textarea#rate_comment[name=?]", "rate[comment]"
    end
  end
end
