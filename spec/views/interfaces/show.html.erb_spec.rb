require 'rails_helper'

RSpec.describe "interfaces/show", :type => :view do
  before(:each) do
    @interface = assign(:interface, Fabricate(:interface,
      address: "192.168.1.1",
      name: "WebAP#1のフロントアドレス"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/192\.168\.1\.1/)
    expect(rendered).to match(/WebAP#1のフロントアドレス/)
  end
end
