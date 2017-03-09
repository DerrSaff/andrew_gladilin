# frozen_string_literal: true
FactoryGirl.define do
  factory :report do
    message 'MyText'
    user_id 1
    email 'MyString'
    name 'MyString'
  end
end
