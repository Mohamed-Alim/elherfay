# encoding: utf-8

namespace :db do
  desc "fill database with sample data"
  task populate: :environment do
    make_admin
    make_businesses
    make_workers
    make_rates
 end
end

 def make_admin
   Admin.create(:email => "test@example.com", :password => "123456789", :password_confirmation => "123456789")
 end
 
 def make_businesses
   4.times do |n|
     Business.create(:name => Faker::Name.name, :picture => File.open(Dir.glob(File.join(Rails.root, 'app/assets/images/sampleimages', '*')).sample))
   end
 end
 
 def make_workers
   Business.all.each do |b|
      20.times do |n|
        name= Faker::Name.name
        telephone=Faker::PhoneNumber.cell_phone
        avcomment=Faker::Lorem.sentence(3)
        region=Faker::Lorem.sentence(2)
        Worker.create!(business_id: b.id, availability: [true, false].sample, name: name, avcomment: avcomment,region: region, telephone: telephone   )
    end
   end
 end
 
 def make_rates
  
  workers=Worker.all #.limit(6)
  
  10.times do
    
    workers.each{|worker| worker.rates.create!(price:rand(1..5), quality:rand(1..5), cleanliness: rand(1..5), 
      punctuality:rand(1..5), dealing:rand(1..5), comment: Faker::Lorem.sentence(8))}
  end
 end
 
 
 

