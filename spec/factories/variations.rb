FactoryBot.define do
  factory :variation do
    kind { "PDF" }

    association :book
  end
end
