# frozen_string_literal: true

FactoryBot.define do
  factory :railway_station do
    title 'Station'
    # body 'MyText'
  end

  factory :invalid_railway_station, class: 'RailwayStation' do
    title nil
    # body nil
  end
end
