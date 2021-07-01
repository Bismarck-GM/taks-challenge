class ApplicationController < ActionController::Base
  before_action :current_templates
  def current_templates
    @current_templates = Template.all
  end
end
