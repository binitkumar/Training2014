require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :email => "Email",
      :name => "Name",
      :passout_year => "Passout Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Passout Year/)
  end
end
