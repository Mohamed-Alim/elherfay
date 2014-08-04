require 'rails_helper'

RSpec.describe "workers/new", :type => :view do
  before(:each) do
    assign(:worker, Worker.new(
      :name => "MyString",
      :telephone => 1,
      :availability => false,
      :totalavg => "9.99",
      :avcomment => "MyString"
    ))
  end

  it "renders new worker form" do
    render

    assert_select "form[action=?][method=?]", workers_path, "post" do

      assert_select "input#worker_name[name=?]", "worker[name]"

      assert_select "input#worker_telephone[name=?]", "worker[telephone]"

      assert_select "input#worker_availability[name=?]", "worker[availability]"

      assert_select "input#worker_totalavg[name=?]", "worker[totalavg]"

      assert_select "input#worker_avcomment[name=?]", "worker[avcomment]"
    end
  end
end
