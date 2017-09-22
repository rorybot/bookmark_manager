require 'web_helper'

feature 'When visiting the signup page' do

  scenario 'I can  see a signup form, enters the wrong password and no user is created' do
    sign_up_wrong_password
    # expect { sign_up }.to change(User, :count).by(1)
    expect(User.map(&:email_address)).to eq []

  end

end
