
# Testing default health points
feature 'Attack Button' do

  before :each do
    srand(67809)
  end

  scenario 'Clicks the attack button' do

    sign_in_and_play

    click_button 'Attack Player Two'

    expect(page).to have_content 'David attacked Goliath'
    expect(page).to have_content '3 DMG'

  end

  scenario 'Clicks the attack, after turn timer switches over' do

    sign_in_and_play

    click_button 'Attack Player Two'

    click_button 'Return To Game'

    click_button 'Attack Player One'

    expect(page).to have_content 'Goliath attacked David'

  end

end
