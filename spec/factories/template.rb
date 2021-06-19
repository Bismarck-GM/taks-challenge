FactoryBot.define do
  factory :template do
    name { Faker::TvShows::BigBangTheory.character }
  end
end
def template_with_tasks(tasks_count: 5)
  FactoryBot.create(:template) do |template|
    FactoryBot.create_list(:task, tasks_count, template: template)
  end
end
