require 'rails_helper'

RSpec.describe 'User' do
  before { driven_by(:headless_chrome) }

  before { visit user_path }

  subject { page }

  it 'exists contens' do
    is_expected.to have_content 'Users'

    is_expected.to have_content 'Ciar Gethsemane'
    is_expected.to have_content 'Sundara Josefa'
    is_expected.to have_content 'Zisel Itzel'
    is_expected.to have_content 'Hadriana Daniele'
  end
end
