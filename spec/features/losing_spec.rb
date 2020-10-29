DEFAULT_HIT_POINTS = 60


# Testing default health points
feature 'Results' do
  scenario '#Results if someone loses' do

    sign_in_and_play

    # Get Them Low
    (1..8).each do
      click_button 'Attack Player Two'
      click_button 'Return To Game'
      click_button 'Attack Player One'
      click_button 'Return To Game'
    end

    # End the game
    click_button 'Attack Player Two'
    click_button 'Return To Game'

    # Check the health
    expect(page).to have_content "G A M E O V E R"
  end
end
