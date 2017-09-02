class User < ApplicationRecord
    has_many :accounts
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
    
    def full_name
      "#{self.first_name} #{self.last_name}"
    end  
end
