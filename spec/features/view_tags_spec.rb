
feature 'When viewing the tags page' do

  before(:each) do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tags: [Tag.first_or_create(name: 'makers')])
    Link.create(url: 'http://www.google.com', title: 'Google', tags: [Tag.first_or_create(name: 'search')])
    Link.create(url: 'http://www.infogalactic.com', title: 'Infogalactic', tags: [Tag.first_or_create(name: 'bubbles')])
    Link.create(url: 'http://www.dancinghamster.com', title: 'A dancing hamster website', tags: [Tag.first_or_create(name: 'bubbles')])
  end

  scenario 'I can see just specific tags' do

    visit '/tags/bubbles'
    expect(page.status_code).to eq(200)

    within 'ul#links' do
      expect(page).not_to have_content('Makers Academy')
      expect(page).not_to have_content('Code.org')
      expect(page).to have_content('Infogalactic')
      expect(page).to have_content('A dancing hamster website')
    end

  end

end
