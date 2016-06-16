class User < ActiveRecord::Base
   has_many :seouls
   has_many :comments
   has_many :photos

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



end
