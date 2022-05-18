module ControllerMacros
  def login
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = User.create(email: "user@example.com", password: "password", password_confirmation: "password")
      sign_in user
    end
  end
end