require 'rails_helper'

RSpec.describe "interfaces/index", :type => :view do
  before(:each) do
    assign(:interfaces, [
      Fabricate(:interface,
        address: "192.168.1.1",
        name: "hogehoge"
      ),
      Fabricate(:interface,
        address: "192.168.1.1",
        name: "hogehoge"
      )
    ])
  end

  it "renders a list of interfaces" do
    render
    assert_select "tr>td", :text => "192.168.1.1".to_s, :count => 2
    assert_select "tr>td", :text => "hogehoge".to_s, :count => 2
  end
end
