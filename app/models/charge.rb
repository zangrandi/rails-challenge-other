class Charge < ActiveRecord::Base
  belongs_to :customer

  scope :failed,  -> { where(paid: false) }
  scope :disputed,  -> { where(paid: true, refunded: true) }
  scope :successful,  -> { where(paid: true, refunded: false) }
end
