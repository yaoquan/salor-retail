class InvoiceBlurb < ActiveRecord::Base
  belongs_to :vendor
  include SalorScope
  validates_uniqueness_of :is_header, :scope => [:vendor_id, :lang]
end
