require 'rails_helper'

RSpec.describe "rules/index", :type => :view do
  let(:src_if) { Fabricate(:interface, name: "SRC", address: "10.10.10.10") }
  let(:dst_if) { Fabricate(:interface, name: "DST", address: "20.20.20.20") }

  before(:each) do
    assign(:rules, [
      Fabricate(:rule,
                src: src_if,
                dst: dst_if,
                src_port_any: true,
                dst_port_any: false,
                src_port: 12345,
                dst_port: 61234
               ),
      Fabricate(:rule,
                src: src_if,
                dst: dst_if,
                src_port_any: true,
                dst_port_any: false,
                src_port: 12345,
                dst_port: 61234
               ),
    ])
  end

  it "renders a list of rules" do
    render
    assert_select "tr>td", :text => src_if.to_s, :count => 2
    assert_select "tr>td", :text => dst_if.to_s, :count => 2
    assert_select "tr>td", :text => 12345.to_s, :count => 2
    assert_select "tr>td", :text => 61234.to_s, :count => 2
    assert_select "tr>td", :text => true.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
