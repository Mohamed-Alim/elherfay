# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :worker do
    name "MyString"
    telephone 1
    availablility false
    totalavg "9.99"
  end
end
