
feature 'Viewing links' do

  scenario 'I can see existing links on the links page' do

    Link.create(url: 'www.google.com', title: 'Google')

    visit '/links'



    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
