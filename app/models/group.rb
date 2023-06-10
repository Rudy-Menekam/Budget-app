class Group < ApplicationRecord
  belongs_to :user, class_name: 'User'

  has_one_attached :icon
  has_many :deal_groups, dependent: :destroy, class_name: 'DealGroup'
  has_many :deals, through: :deal_group

  validates :name, presence: true
  validates :icon, presence: true

  def calculate_amount
    deals.sum { |deal| deal.amount.to_i }
  end
end
