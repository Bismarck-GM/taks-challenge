require 'rails_helper'

RSpec.describe 'Index Projects', type: :feature do

  scenario 'Projects Index / Root path - should contain project name' do
    project = create(:project)
    visit root_path
    expect(page).to have_content(project.name)
  end

  scenario 'Projects Index / Root path - should contain a list of Tasks' do
    tasks = project_with_tasks
    visit root_path
    expect(page).to have_content(tasks.tasks[0].description)
    expect(page).to have_content(tasks.tasks[1].description)
  end
end
