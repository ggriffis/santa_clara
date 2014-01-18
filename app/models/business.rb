class Business < ActiveRecord::Base
  has_many :deals

  accepts_nested_attributes_for :deals
end
