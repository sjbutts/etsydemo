class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates :name, presence: true

   has_many :listings, dependent: :destroy #The listing is dependent upon the user that created it, if the user is deleted the listing is deleted as well


end
