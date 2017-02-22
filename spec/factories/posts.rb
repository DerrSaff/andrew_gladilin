FactoryGirl.define do
  factory :post do
    sequence(:header) { |n| "Header №#{n}" }
    sequence(:text) { |n| "Post text №#{n}" }
    sequence(:summary) { |n| "Post summary №#{n}" }
    author {Faker::Name.name}
    link {Faker::Internet.url}
    original_header 'Original header'
    views 0
    tags
  end
end
