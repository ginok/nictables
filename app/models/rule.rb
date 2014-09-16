class Rule < ActiveRecord::Base
  belongs_to :src, class_name: "Interface"
  belongs_to :dst, class_name: "Interface"

  validates :src, presence: true
  validates :dst, presence: true
  validates :src_port, presence: true, unless: ->{ src_port_any? }
  validates :dst_port, presence: true, unless: ->{ dst_port_any? }
end
