require 'rails_helper'

RSpec.describe Rule, :type => :model do
  let(:if1) { Fabricate(:interface, address: "192.168.1.1") }
  let(:if2) { Fabricate(:interface, address: "192.168.2.2") }

  it "srcとdstにInterfaceを保存する" do
    expect(Fabricate(:rule, src: if1, dst: if2)).to be_valid
  end

  describe ".src" do
    it "は必須属性である" do
      expect(Fabricate.build(:rule, src: nil, dst: if2)).not_to be_valid
    end
  end

  describe ".dst" do
    it "は必須属性である" do
      expect(Fabricate.build(:rule, src: if1, dst: nil)).not_to be_valid
    end
  end

  describe ".src_port_any?" do
    it "はデフォルトでtrueを返す" do
      expect(Fabricate(:rule).src_port_any?).to be true
    end
  end

  describe ".dst_port_any?" do
    it "はデフォルトでfalseを返す" do
      expect(Fabricate(:rule).dst_port_any?).to be false
    end
  end

  describe ".src_port" do
    context ".src_port_any?がtrueの場合" do
      it "は必須属性ではない" do
        expect(
          Fabricate.build(:rule, src_port_any: true, src_port: nil)
        ).to be_valid
      end
    end

    context ".src_port_any?がfalseの場合" do
      it "は必須属性となる" do
        expect(
          Fabricate.build(:rule, src_port_any: false, src_port: nil)
        ).not_to be_valid
      end
    end
  end

  describe ".dst_port" do
    context ".dst_port_any?がtrueの場合" do
      it "は必須属性ではない" do
        expect(
          Fabricate.build(:rule, dst_port_any: true, dst_port: nil)
        ).to be_valid
      end
    end

    context ".dst_port_any?がfalseの場合" do
      it "は必須属性となる" do
        expect(
          Fabricate.build(:rule, dst_port_any: false, dst_port: nil)
        ).not_to be_valid
      end
    end
  end
end
