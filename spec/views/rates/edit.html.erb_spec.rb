require 'rails_helper'

RSpec.describe "rates/edit", :type => :view do
  before(:each) do
    @rate = assign(:rate, Rate.create!(
      :quality => 1,
      :price => 1,
      :cleanliness => 1,
      :punctuality => 1,
      :dealing => 1,
      :average => "9.99",
      :worker_id => 1,
      :review => "MyString"
    ))
  end

  it "renders the edit rate form" do
    render

    assert_select "form[action=?][method=?]", rate_path(@rate), "post" do

      assert_select "input#rate_quality[name=?]", "rate[quality]"

      assert_select "input#rate_price[name=?]", "rate[price]"

      assert_select "input#rate_cleanliness[name=?]", "rate[cleanliness]"

      assert_select "input#rate_punctuality[name=?]", "rate[punctuality]"

      assert_select "input#rate_dealing[name=?]", "rate[dealing]"

      assert_select "input#rate_average[name=?]", "rate[average]"

      assert_select "input#rate_worker_id[name=?]", "rate[worker_id]"

      assert_select "input#rate_review[name=?]", "rate[review]"
    end
  end
end
