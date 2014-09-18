require 'rails_helper'

RSpec.describe "rules/new", :type => :view do
  before(:each) do
    assign(:rule, Fabricate.build(:rule))
  end

  it "renders new rule form" do
    render

    assert_select "form[action=?][method=?]", rules_path, "post" do

      assert_select "select#rule_src_id[name=?]", "rule[src_id]"

      assert_select "select#rule_dst_id[name=?]", "rule[dst_id]"

      assert_select "input#rule_src_port[name=?]", "rule[src_port]"

      assert_select "input#rule_dst_port[name=?]", "rule[dst_port]"

      assert_select "input#rule_src_port_any[name=?]", "rule[src_port_any]"

      assert_select "input#rule_dst_port_any[name=?]", "rule[dst_port_any]"
    end
  end
end
