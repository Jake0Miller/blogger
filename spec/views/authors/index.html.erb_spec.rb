require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :username => "Username",
        :email => "Email_1",
        :password => "fish",
        :password_confirmation => "fish"
      ),
      Author.create!(
        :username => "Username",
        :email => "Email_2",
        :password => "pot",
        :password_confirmation => "pot"
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => "Username", :count => 2
    assert_select "tr>td", :text => "Email_1", :count => 1
    assert_select "tr>td", :text => "Email_2", :count => 1
    assert_select "tr>td", :text => "fish".to_s, :count => 0
    assert_select "tr>td", :text => "pot".to_s, :count => 0
  end
end
