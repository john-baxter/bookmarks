require 'pg'

feature 'Viewing bookmarks' do
  scenario 'a user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES (1, 'www.bbc.co.uk/sport');")
    connection.exec("INSERT INTO bookmarks VALUES (2, 'www.google.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES (3, 'thechive.com');")

    visit ('/bookmarks')

    expect(page).to have_content "www.bbc.co.uk/sport"
    expect(page).to have_content "www.google.co.uk"
    expect(page).to have_content "thechive.com"
  end
end
