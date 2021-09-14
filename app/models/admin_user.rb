class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
         
  with_options presence: true do
    validates :name, format: { with: /\A[ぁ-んァ-ヶー－]+\z/, message: 'は「ひらがな」か「カタカナ」で入力してください' }
    validates :password, format: { with: /\A[0-9]+\z/ , message: 'は半角数字のみで入力してください'}
  end
end