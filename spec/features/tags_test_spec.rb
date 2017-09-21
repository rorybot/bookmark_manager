feature 'Adding tags' do

  scenario 'I can add a single tag to a new link' do
    visit '/links/new'
    fill_in 'url_address', with: 'https://wikileaks.org/'
    fill_in 'link_name', with: 'Wikileaks'
    fill_in 'tags', with: 'secrets!'

    click_button 'Create link'
    link = Link.first
    p link
    expect(link.tags.map(&:name)).to include('secrets!')
  end

  scenario 'I can add a many tags to a new link' do
    visit '/links/new'
    fill_in 'url_address', with: 'https://wikileaks.org/'
    fill_in 'link_name', with: 'Wikileaks'
    fill_in 'tags', with: 'secrets!, gossip, russia'
    click_button 'Create link'
    link = Link.first
    p link
    expect(link.tags.map(&:name)).to include('russia')
    expect(link.tags.map(&:name)).to include('secrets!')
  end

end
