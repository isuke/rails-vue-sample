class PagesController < ApplicationController
  before_action :set_script_path

  def home
    render 'empty'
  end

  def user
    render 'empty'
  end

private

  def set_script_path
    @script_path = script_for('main')
  end
end
