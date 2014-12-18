require 'spec_helper'

describe 'coworker tests drunkenness', %Q{
  As Helen's coworker
  I want determine how drunk she is
  So that we can serve her more drinks
}, type: :feature do
  # Acceptance Criteria

  # * If the fuck-shit ratio is <= 0.2, Helen is probably working
  # * If the fuck-shit ratio is > 0.2, Helen is buzzed
  # * If the fuck-shit ratio is > 0.4 Helen is drunk
  # * If the fuck-shit ratio is > 0.6 Helen is wasted

  it 'Helen is working' do
    visit '/helenisms/new'
    fill_in 'Enter the most recent Helenism',
      with: "We're going to do a clinic on data structures"
    click_button 'How drunk is Helen?'
    expect(page).to have_content('Helen is drunk')
  end

  it 'Helen is buzzed' do
    visit '/helenisms/new'
    fill_in 'Enter the most recent Helenism',
      with: 'fuck man that shit was awesome'
    click_button 'How drunk is Helen?'
    expect(page).to have_content('Helen is buzzed')
  end

  it 'Helen is drunk' do
    visit '/helenisms/new'
    fill_in 'Enter the most recent Helenism', with: 'holy shit dude, fuck'
    click_button 'How drunk is Helen?'
    expect(page).to have_content('Helen is drunk')
  end

  it 'Helen is wasted' do
    visit '/helenisms/new'
    fill_in 'Enter the most recent Helenism', with: 'holy fucking shit'
    click_button 'How drunk is Helen?'
    expect(page).to have_content('Helen is wasted')
  end
end
