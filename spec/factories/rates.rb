# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rate do
    cleanliness 1
    quality 1
    price 1
    punctulity 1
    dealing 1
    average "9.99"
    comment "MyText"
  end
end
