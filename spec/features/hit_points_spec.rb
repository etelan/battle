DEFAULT_HIT_POINTS = 60


# Testing default health points
feature 'Health Points' do
  scenario 'Display HP' do

    sign_in_and_play

    # Check the health
    expect(page).to have_content "#{DEFAULT_HIT_POINTS}"
  end
end
