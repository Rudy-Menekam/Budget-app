class Group < ApplicationRecord
  belongs_to :user

  has_one_attached :icon
  has_many :deal_group, dependent: :destroy
  has_many :deal, through: :deal_group

  validates :name, presence: true
  validates :icon, presence: true
end
