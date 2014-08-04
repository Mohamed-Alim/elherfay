require 'rails_helper'

RSpec.describe "workers/index", :type => :view do
  before(:each) do
    assign(:workers, [
      Worker.create!(
        :name => "Name",
        :telephone => 1,
        :availability => false,
        :totalavg => "9.99",
        :avcomment => "Avcomment"
      ),
      Worker.create!(
        :name => "Name",
        :telephone => 1,
        :availability => false,
        :totalavg => "9.99",
        :avcomment => "Avcomment"
      )
    ])
  end

  it "renders a list of workers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Avcomment".to_s, :count => 2
  end
end
