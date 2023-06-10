class DealGroup < ApplicationRecord
  belongs_to :deal
  belongs_to :group

  validates :group_id, presence: true
  validates :deal_id, presence: true
end
