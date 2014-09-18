require 'rails_helper'

RSpec.describe "rules/edit", :type => :view do
  before(:each) do
    @rule = assign(:rule, Fabricate(:rule))
  end

  it "renders the edit rule form" do
    render

    assert_select "form[action=?][method=?]", rule_path(@rule), "post" do

      assert_select "select#rule_src_id[name=?]", "rule[src_id]"

      assert_select "select#rule_dst_id[name=?]", "rule[dst_id]"

      assert_select "input#rule_src_port[name=?]", "rule[src_port]"

      assert_select "input#rule_dst_port[name=?]", "rule[dst_port]"

      assert_select "input#rule_src_port_any[name=?]", "rule[src_port_any]"

      assert_select "input#rule_dst_port_any[name=?]", "rule[dst_port_any]"
    end
  end
end
