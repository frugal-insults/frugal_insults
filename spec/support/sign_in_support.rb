module ValidUserHelper
  def signed_in_as_a_valid_user
    @user ||= FactoryGirl.create :user
    sign_in @user
  end
end

RSpec.configure do |config|
  config.include ValidUserHelper, :type => :controller
end
