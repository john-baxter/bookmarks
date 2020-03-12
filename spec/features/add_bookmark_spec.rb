feature 'adding a bookmark' do
  scenario 'user can add a bookmark' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://testbookmark.com');")
    visit('/bookmarks/new')
    fill_in 'url', with: 'https://testbookmark.com'
    click_button('submit')
    expect(page).to have_content 'https://testbookmark.com'
  end
end