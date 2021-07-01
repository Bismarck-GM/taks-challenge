require 'rails_helper'

RSpec.describe 'Create Projects', type: :feature do

  scenario 'Create Project with a Task' do
    visit new_project_path

    fill_in 'project[name]', with: 'Some Random Project'
    fill_in 'project[tasks_attributes][0][description]', with: 'Some Random Task'
    click_button 'Submit Project'
    expect(page).to have_content('Some Random Project')
  end

  scenario 'Loads template into project form' do
    template = template_with_tasks

    visit new_project_path(template: template)

    expect(page).to have_content(template.name)
    expect(page).to have_content(template.tasks[0].description)
    expect(page).to have_content(template.tasks[1].description)
  end

end
