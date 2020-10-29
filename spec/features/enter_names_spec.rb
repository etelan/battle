
# Tests if names are submitted
feature 'Enter Names' do
  scenario 'Submitting Names' do

    sign_in_and_play

    # Check the new page has David vs Goliath
    expect(page).to have_content 'David'
    expect(page).to have_content 'Goliath'
  end
end
