feature 'Displaying peeps' do
  let!(:peeps) do
    current_peeps
  end

  scenario 'A user can see all peeps in reverse chronological order
            with the name and username of the maker' do
    peek_at_peeps
    expect(page).to have_content page_content(peeps)
  end

  scenario 'A user can click on Sign up on home page' do
    visit('/')
    expect(current_path).to eq '/peeps'
    click_button 'Sign Up'
    expect(current_path).to eq '/users/new'
  end

  scenario 'A user can click on Sign in on home page' do
    visit('/')
    expect(current_path).to eq '/peeps'
    click_button 'Sign In'
    expect(current_path).to eq '/sessions/new'
  end
end
