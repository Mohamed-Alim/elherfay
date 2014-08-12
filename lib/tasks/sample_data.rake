# encoding: utf-8

namespace :db do
  desc "fill database with sample data"
  task populate: :environment do
    make_workers
    make_rates
 end
end

 def make_workers
   
      99.times do |n|
        name= Faker::Name.name
        telephone=Faker::PhoneNumber.cell_phone
        avcomment=Faker::Lorem.sentence(3)
        region=Faker::Lorem.sentence(2)
        type=Faker::Lorem.word
        Worker.create!(availability: [true, false].sample, name: name, avcomment: avcomment,region: region,worker_type:type, telephone: telephone   )
    end
 end
 
 def make_rates
  
  workers=Worker.all #.limit(6)
  
  10.times do
    
    workers.each{|worker| worker.rates.create!(price:rand(1..5), quality:rand(1..5), cleanliness: rand(1..5), 
      punctuality:rand(1..5), dealing:rand(1..5), comment: Faker::Lorem.sentence(8))}
  end
 end
 
 
 

