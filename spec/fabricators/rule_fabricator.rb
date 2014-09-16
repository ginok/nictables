Fabricator(:rule) do
  src { Fabricate(:interface, address: "192.168.1.1") }
  dst { Fabricate(:interface, address: "192.168.10.10") }
  src_port_any true
  dst_port_any false
  dst_port 80
end
