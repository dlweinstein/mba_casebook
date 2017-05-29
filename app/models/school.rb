class School < ApplicationRecord

has_many :students, :dependent => :destroy
has_many :cases, :dependent => :destroy

end
