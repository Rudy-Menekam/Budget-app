class Deal < ApplicationRecord
  belongs_to :User, class_name: 'User'

  has_many :deal_group, dependent: :destroy
  has_many :groups, through: :destroy

  validates :name, presence: true
  validates :amount, presence: true
end
