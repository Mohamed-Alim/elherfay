# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rate do
    quality 1
    price 1
    cleanliness 1
    puctuality 1
    dealing 1
    average "9.99"
  end
end
