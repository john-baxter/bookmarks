feature 'checking /bookmarks' do
  scenario 'bookmarks page exists' do
    visit('/bookmarks')
    expect(page).to have_content 'www.bbc.co.uk/sport'
    expect(page).to have_content 'www.google.co.uk'
    expect(page).to have_content 'thechive.com'
  end
end