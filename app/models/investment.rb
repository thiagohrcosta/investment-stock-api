class Investment < ApplicationRecord
  belongs_to :user
  belongs_to :opportunity

  validates :user, presence: true
  validates :opportunity, presence: true
end
