json.array!(@rules) do |rule|
  json.extract! rule, :id, :src_id, :dst_id, :src_port, :dst_port, :src_port_any, :dst_port_any
  json.url rule_url(rule, format: :json)
end
