# frozen_string_literal: true

FactoryBot.define do
  factory :route do
    name 'ROUTE1'
    # body 'MyText'
  end

  factory :invalid_route, class: 'Route' do
    name nil
    # body nil
  end
end
