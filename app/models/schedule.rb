class Schedule < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :start_time
    validates :end_time
    validates :place
    validates :info
  end

  belongs_to :user
  belongs_to :admin_user
  has_many :comments
end
