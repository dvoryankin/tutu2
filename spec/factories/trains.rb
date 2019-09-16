# frozen_string_literal: true

FactoryBot.define do
  factory :train do
    number 123
    route
    current_station
    # body 'MyText'
  end

  factory :invalid_train, class: 'Train' do
    number nil
    # body nil
  end
end
