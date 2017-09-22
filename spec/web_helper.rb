
def sign_up(email: 'HarryBCDresden@aol.com',
            password: 'hunter2')
  visit '/signup'
  expect(page.status_code).to eq(200)
  expect(page).to have_content('New User Registration')
  fill_in :email_address, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password
  click_button 'Sign up!'
end



def sign_up_wrong_password(email: 'HarryBCDresden@aol.com',
            password: 'hunter2',
            wrong_password: 'hunter3')
  visit '/signup'
  expect(page.status_code).to eq(200)
  expect(page).to have_content('New User Registration')
  fill_in :email_address, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: wrong_password
  click_button 'Sign up!'
end
