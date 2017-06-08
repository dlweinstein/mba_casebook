class School < ApplicationRecord

has_many :users, :dependent => :destroy
has_many :cases, :dependent => :destroy

end
