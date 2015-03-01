class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :statuses
         has_many :'relations', class_name: 'Relationship', foreign_key: 'follower_id',dependent: :destroy

     def full_name
     	first_name+ " " +last_name
     end    
end
