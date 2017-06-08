class Case < ApplicationRecord

# direct associations
  belongs_to :user, :class_name => "User"
  has_many :favorites, :dependent => :destroy
  belongs_to :school

# indirect associations
has_many :fans, :through => :favorites, :source => :user


end
