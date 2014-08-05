require 'rails_helper'

RSpec.describe "rates/show", :type => :view do
  before(:each) do
    @rate = assign(:rate, Rate.create!(
      :quality => 1,
      :price => 2,
      :cleanliness => 3,
      :punctuality => 4,
      :dealing => 5,
      :average => "9.99",
      :worker_id => 6,
      :review => "Review"
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
    expect(rendered).to match(/6/)
    expect(rendered).to match(/Review/)
  end
end
