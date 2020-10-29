
# Testing default health points
feature 'Heal Button' do
  scenario 'Heals if health is lower' do

    sign_in_and_play

    click_button 'Attack Player Two'

    click_button 'Return To Game'

    click_button 'Heal Player Two'

    expect(page).to have_content 'Goliath healed by 6'

  end


end
