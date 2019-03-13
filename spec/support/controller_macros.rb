module ControllerMacros
    def login_user
       before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        @user = User.create(
            email: 'test@test.com',
            password: 'password',
            first_name: 'steve',
            last_name: 'stevens'
            age: 35
        )
        sign_in @user
       end
    end
end