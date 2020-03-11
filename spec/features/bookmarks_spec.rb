feature 'checking /bookmarks' do
  scenario 'bookmarks page exists' do

    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.bbc.co.uk/sport');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.co.uk');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('thechive.com');")

    visit('/bookmarks')
    expect(page).to have_content 'www.bbc.co.uk/sport'
    expect(page).to have_content 'www.google.co.uk'
    expect(page).to have_content 'thechive.com'
  end
end