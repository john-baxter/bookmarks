feature 'checking homepage' do
  scenario 'homepage exists' do
    visit '/'
    expect(page).to have_current_path('/')
  end

  scenario "homepage has appropriate greeting" do
    visit '/'
    expect(page).to have_content('Bookmark manager')
  end
end
