RSpec.describe 'Visitors' do

    # before(:each) do
    #     @user = User.create
    # end
    #the above code only affects the code under a describe
    
    it 'should show users a list of comedians' do
        name = 'Louis C.K.'
        comedian = Comedian.create(name: 'Louis C.K.', age: 41)
        specials = comedian.specials

        visit('/comedians')

        expect(page).to have_content(name)
        expect(page).to have_content(comedian.age)
        expect(page).to have_content(specials)
    end
end

