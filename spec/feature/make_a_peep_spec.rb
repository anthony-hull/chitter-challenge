feature 'make a peep' do
  scenario 'add a new peep and view it' do
    visit '/'
    click_link('Add a new peep')
    fill_in 'peep', with: 'I am the best'
    click_button('Submit peep')
    expect(page).to have_content 'I am the best'
  end
end