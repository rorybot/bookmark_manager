require 'web_helper'

feature 'When visiting the signup page' do

  scenario 'I can  see a signup form, enters an email and password and submits the form' do
    sign_up
    # expect { sign_up }.to change(User, :count).by(1)
    expect(User.first.email_address).to  include('HarryBCDresden@aol.com')
    expect(page).to have_content('Welcome to the Links page, HarryBCDresden@aol.com')



  end

end
