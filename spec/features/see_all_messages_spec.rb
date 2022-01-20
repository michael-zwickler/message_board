# frozen_string_literal: true

feature 'shows all messages' do
  scenario 'when you add 2 messages, both should appear' do
    visit('/')
    fill_in('name', with: 'Jason')
    fill_in('message', with: 'I will get you Freddy!!!')
    click_button('Submit')
    fill_in('name', with: 'Freddy')
    fill_in('message', with: 'We will see!!!')
    click_button('Submit')
    expect(page).to have_content('Jason')
    expect(page).to have_content('I will get you Freddy!!!')
    expect(page).to have_content('We will see!!!')
  end
end
