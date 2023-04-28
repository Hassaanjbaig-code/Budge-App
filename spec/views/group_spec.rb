require 'rails_helper'

RSpec.describe 'Groups', type: :system do
  describe 'GET /index' do
    before do
      visit user_session_path

      fill_in 'Email', with: 'foo@yopmail.com '
      fill_in 'Password', with: '1234567'

      click_on 'Log in'

      sleep 1
    end
    it 'should create a group' do
      click_on 'New Category'

      sleep 1

      fill_in 'Name', with: 'Group 1'
      fill_in 'Icon', with: 'https://images.unsplash.com/photo-1583840726841-c35239a17b23?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'

      click_on 'Create Catagories'

      sleep 1

      expect(page).to have_content('Group 1')
      expect(page).to have_selector(
        # rubocop:disable Metrics/LineLength
        'img[src="https://images.unsplash.com/photo-1583840726841-c35239a17b23?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"]', visible: true
        # rubocop:enable Metrics/LineLength
      )
    end
  end
end
