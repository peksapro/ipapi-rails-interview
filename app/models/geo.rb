class Geo < ApplicationRecord
  validates :ip, uniqueness: true
  validates :ip, :format => {
      :with => Regexp.union(Resolv::IPv4::Regex, Resolv::IPv6::Regex)
  }
  validates_format_of :city, :country, :with => /^[a-z]+$/i
end