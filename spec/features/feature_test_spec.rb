feature 'testing infrastructure' do
  scenario 'testing framework is set up correctly' do
    visit '/test'
    expect(page).to have_content "Testing"
  end
end

feature 'checking homepage' do
  scenario 'homepage exists' do
    visit '/'
    expect(page).to have_current_path('/')
  end
end

