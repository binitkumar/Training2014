require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email => "Email",
        :name => "Name",
        :passout_year => "Passout Year"
      ),
      User.create!(
        :email => "Email",
        :name => "Name",
        :passout_year => "Passout Year"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Passout Year".to_s, :count => 2
  end
end
