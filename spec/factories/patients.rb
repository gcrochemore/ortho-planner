FactoryGirl.define do
  factory :patient do
    first_name "Nom de famille"
    sequence(:last_name) do |i|
      "Prénom #{i}"
    end
    birth_date "04/10/90"
    birth_place "Rouen"
    phone_number "0606060606"
  end

  factory :patient_invalid do
  	birth_date "toto"
  end
end