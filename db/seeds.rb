require 'faker'

6.times do
  @template = Template.create!(name: Faker::TvShows::BigBangTheory.character)
  rand(3..8).times do
    @template.tasks.create(description: Faker::TvShows::BigBangTheory.quote)
  end
end

puts "Seeded #{Template.count} templates."
