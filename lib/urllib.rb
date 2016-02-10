require "urllib/version"

module Urllib
  def self.quote(url, safe=[])
    result = CGI.escape(url)
    safe = safe.is_a?(String) ? safe.split("") : safe
    safe.each do |item|
      result.gsub!(CGI.escape(item),item)
    end
    result
  end
end
