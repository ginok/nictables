require 'rails_helper'

RSpec.describe Interface, :type => :model do
  it "正しく属性がセットされていればvalidationは通る" do
    expect(Fabricate(:interface)).to be_valid
  end

  describe ".address" do
    it "は必須属性である" do
      expect(Fabricate.build(:interface, address: nil)).not_to be_valid
    end

    it "はIPアドレスとして有効な値のみ受け付ける" do
      expect(Fabricate.build(:interface, address: "0.0.0.0")).to be_valid
      expect(Fabricate.build(:interface, address: "255.255.255.255")).to be_valid
      expect(Fabricate.build(:interface, address: "256.0.0.0")).not_to be_valid
      expect(Fabricate.build(:interface, address: "255.255.255")).not_to be_valid
    end
  end

  describe ".name" do
    it "は必須属性である" do
      expect(Fabricate.build(:interface, name: nil)).not_to be_valid
    end
  end
end
