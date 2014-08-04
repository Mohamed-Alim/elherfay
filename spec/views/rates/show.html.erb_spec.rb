require 'rails_helper'

RSpec.describe "rates/show", :type => :view do
  before(:each) do
    @rate = assign(:rate, Rate.create!(
      :cleanliness => 1,
      :quality => "",
      :price => 2,
      :punctulity => 3,
      :average => "9.99",
      :dealing => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/4/)
  end
end
