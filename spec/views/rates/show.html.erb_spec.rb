require 'rails_helper'

RSpec.describe "rates/show", :type => :view do
  before(:each) do
    @rate = assign(:rate, Rate.create!(
      :cleanliness => 1,
      :quality => 2,
      :price => 3,
      :punctulity => 4,
      :dealing => 5,
      :average => "9.99",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
  end
end
