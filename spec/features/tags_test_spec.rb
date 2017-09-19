feature 'Adding tags' do

  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in 'url_address', with: 'https://wikileaks.org/'
    fill_in 'link_name', with: 'Wikileaks'
    fill_in 'tags', with: 'secrets!'

    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('secrets!')
  end

end
