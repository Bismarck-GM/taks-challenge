FactoryBot.define do
  factory :task do
    description { Faker::TvShows::BigBangTheory.quote }
    template
    project
  end
end
