class Deal < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :deal_group, dependent: :destroy
  has_many :groups, through: :destroy

  validates :name, presence: true
  validates :amount, numericality: { is_decimal: true }
end
