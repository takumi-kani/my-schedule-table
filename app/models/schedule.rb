class Schedule < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :start_time
    validates :end_time
    validates :place
    validates :info
    # validates :user, allow_nil: true
    # validates :admin_user, allow_nil: true
  end

<<<<<<< Updated upstream
  belongs_to :user
=======
  belongs_to :user, optional: true
  belongs_to :admin_user, optional: true
>>>>>>> Stashed changes
  has_many :comments
end
