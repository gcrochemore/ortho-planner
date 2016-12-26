FactoryGirl.define do
  factory :user do
  	sequence(:id) do |i|
      "#{i}"
    end
  	email "mail@user.fr"
    password "password"
  end

  factory :admin do

  end
end