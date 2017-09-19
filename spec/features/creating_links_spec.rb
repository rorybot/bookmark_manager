

feature 'When creating links' do

  scenario 'I can see my new links on the links page' do

    visit '/links/new'
    fill_in :link_name, with: 'Infogalactic News'
    fill_in :url_address, with: 'new.infogalactic.com'
    click_button 'Create link'
    visit '/links'

    within 'ul#links' do
      expect(page).to have_content('Infogalactic News')
    end

  end

end
