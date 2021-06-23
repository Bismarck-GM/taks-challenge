FactoryBot.define do
  factory :project do
    name { Faker::TvShows::BigBangTheory.character }
  end
end

def project_with_tasks(tasks_count: 5)
  FactoryBot.create(:project) do |project|
    FactoryBot.create_list(:task, tasks_count, project: project)
  end
end
