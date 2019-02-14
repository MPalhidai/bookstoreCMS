FactoryBot.define do
  factory :comment do
    rating { 1 }
    content { "MyString" }
    book { nil }
    user { nil }
  end
end
