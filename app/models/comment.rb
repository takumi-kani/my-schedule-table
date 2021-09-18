class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :admin_user, optional: true
  belongs_to :schedule

  validates :text, presence: true
end
