require 'rails_helper'

RSpec.describe 'Home' do
  before { driven_by(:headless_chrome) }

  before { visit home_path }

  subject { page }

  it 'exists contens' do
    is_expected.to have_content 'Hello Home'
  end
end
