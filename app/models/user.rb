class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  extend Dragonfly::Model
  include Avatarable

  dragonfly_accessor :image

  belongs_to :role

  validates_presence_of :full_name
  
end
