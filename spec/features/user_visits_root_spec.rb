require 'rails_helper'

feature 'user visits root path' do
  scenario 'they see a welcome message, image, and introduction' do
    visit '/'
    my_image = find('#andy-pic')

    within('.nav-wrapper') do
      expect(page).to have_content('AndySpace')
    end

    expect(my_image[:src]).to eq('me.jpeg')

    within('.card-content') do
      expect(page).to have_content('Former paramedic')
    end
  end
  scenario 'the landing panel containing brief bio is hidden initially' do
    visit '/'

    expect(page).to have_selector('.landing-panel', visible: false)
  end
  xscenario 'brief bio is visible after button click', js: true do
    visit '/'

    find('#landing-card-button').click

    expect(page).to have_selector('.landing-panel', visible: true)
    within('.landing-panel') do
      expect(page).to have_content("My name's Andrew.")
    end
  end
end
