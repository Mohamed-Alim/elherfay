require 'rails_helper'

RSpec.describe "workers/show", :type => :view do
  before(:each) do
    @worker = assign(:worker, Worker.create!(
      :name => "Name",
      :telephone => 1,
      :availability => false,
      :totalavg => "9.99",
      :avcomment => "Avcomment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Avcomment/)
  end
end
