require 'rails_helper'

feature 'user clicks about me link' do
  scenario 'user is directed to about-me page' do
    visit '/'
    click_link 'About Me'

    expect(current_path).to eq('/about-me')
  end
  scenario 'user sees three  cards with images' do
    visit '/about-me'

    expect(page).to have_selector('.card', count: 3)
    within all('.card-image').first do
      paramedic_pic = find('#paramedic-photo')
      expect(paramedic_pic[:src]).to eq('paramedic-andy.jpeg')
    end
    within('.turing') do
      hiking_pic = find('#hiking-pic')
      expect(hiking_pic[:src]).to eq('mallory-cave.jpeg')
    end
    within all('.card-image').last do
      beard_pic = find('#goldbeard')
      expect(beard_pic[:src]).to eq('goldbeard.jpeg')
    end
  end
  scenario 'descriptive sections are not visible on page load' do
    visit '/about-me'


  end
end
