# frozen_string_literal: true

feature 'homepage shows a form that can be filled in' do
  scenario 'when you submit the form, the message will be printed' do
    visit('/')
    fill_in('name', with: 'Jason')
    fill_in('message', with: 'I will get you Freddy!!!')
    click_button('Submit')
    expect(page).to have_content('Jason')
    expect(page).to have_content('I will get you Freddy!!!')
  end
end
