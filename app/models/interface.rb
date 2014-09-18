class Interface < ActiveRecord::Base
  validates :address, presence: true, ip_address: true
  validates :name, presence: true

  def to_s
    "#{name}(#{address})"
  end
end
