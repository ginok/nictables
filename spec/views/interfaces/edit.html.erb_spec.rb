require 'rails_helper'

RSpec.describe "interfaces/edit", :type => :view do
  before(:each) do
    @interface = assign(:interface, Fabricate(:interface))
  end

  it "renders the edit interface form" do
    render

    assert_select "form[action=?][method=?]", interface_path(@interface), "post" do

      assert_select "input#interface_address[name=?]", "interface[address]"

      assert_select "input#interface_name[name=?]", "interface[name]"
    end
  end
end
