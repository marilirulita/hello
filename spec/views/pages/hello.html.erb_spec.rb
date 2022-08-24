require 'rails_helper'

RSpec.describe 'Pages', type: :system do
  describe 'hello page' do
    it 'shows the right content' do
      visit root_path
      sleep(5)
      expect(page).to have_content('Hello, World!')
    end
  end
end