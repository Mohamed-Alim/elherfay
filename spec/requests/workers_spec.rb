require 'rails_helper'

RSpec.describe "Workers", :type => :request do
  
  describe "home" do
    it {should have_link('الرئيسية')} 
    describe "as an admin" do
      let(:admin){FactoryGirl.create(:admin)}
      before do
        sign_in admin
      end
      it{should have_link('الحساب')}
    end
  end
  
  
  
  
end
