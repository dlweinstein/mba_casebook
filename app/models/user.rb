class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Direct associations
  has_many :cases, :class_name => "Case", :foreign_key => "user_id", :dependent => :destroy
  has_many :favorites, :foreign_key => "user_id", :dependent => :destroy
  has_many :sent_friend_requests, :class_name => "Friend", :foreign_key => "sender_id", :dependent => :destroy
  has_many :received_friend_requests, :class_name => "Friend", :foreign_key => "recipient_id", :dependent => :destroy
  has_many :sent_messages, :class_name => "Message", :foreign_key => "sender_id", :dependent => :destroy
  has_many :received_messages, :class_name => "Message", :foreign_key => "receiver_id", :dependent => :destroy
  belongs_to :school

  # Indirect associations
  has_many :followings, :through => :sent_friend_requests, :source => :recipient
  has_many :followers, :through => :received_friend_requests, :source => :sender
  has_many :favorited_cases, :through => :favorites, :source => :case

end
