FactoryGirl.define do
  factory :bill do
    title "Responsable commercial H/F"
    customer_name "L'Oréal"
    reference_bill "LORA1234"
    created_at DateTime.now
    association :announcement
  end
end
