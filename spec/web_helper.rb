
def sign_up(email: 'HarryBCDresden@aol.com',
            password: 'hunter2')
  visit '/signup'
  expect(page.status_code).to eq(200)
  expect(page).to have_content('New User Registration')
  fill_in :email_address, with: email
  fill_in :password_to_be_hashed, with: password
  click_button 'Sign up!'
end
