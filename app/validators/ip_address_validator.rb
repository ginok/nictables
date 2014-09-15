class IpAddressValidator < ActiveModel::EachValidator
  IP_REGEXP = /^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/

  def validate_each(record, attribute, value)
    unless value =~ IP_REGEXP
      record.errors[attribute] << (options[:message] || "として正しい値になっていません")
    end
  end
end
