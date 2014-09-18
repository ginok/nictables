require 'rails_helper'

RSpec.describe "rules/show", :type => :view do
  let(:src_if) { Fabricate(:interface, name: "SRC", address: "10.10.10.10") }
  let(:dst_if) { Fabricate(:interface, name: "DST", address: "20.20.20.20") }

  before(:each) do
    @rule = assign(:rule, Fabricate(:rule,
                            src: src_if,
                            dst: dst_if,
                            src_port_any: true,
                            dst_port_any: false,
                            src_port: 12345,
                            dst_port: 61234 ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/SRC\(10\.10\.10\.10\)/)
    expect(rendered).to match(/DST\(20\.20\.20\.20\)/)
    expect(rendered).to match(/12345/)
    expect(rendered).to match(/61234/)
    expect(rendered).to match(/true/)
    expect(rendered).to match(/false/)
  end
end
