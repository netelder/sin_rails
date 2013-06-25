FactoryGirl.define do
  factory :user do |f|
    f.name "Mark Smith"
    f.password "password"
    f.email "mark@smith.com"
  end 
end
