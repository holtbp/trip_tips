class User < ActiveRecord::Base
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  has_many :getaways
  has_many :adventures, as: :recommendations

end
