require 'rails_helper'

RSpec.describe "interfaces/new", :type => :view do
  before(:each) do
    assign(:interface, Interface.new(
      :address => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new interface form" do
    render

    assert_select "form[action=?][method=?]", interfaces_path, "post" do

      assert_select "input#interface_address[name=?]", "interface[address]"

      assert_select "input#interface_name[name=?]", "interface[name]"
    end
  end
end
