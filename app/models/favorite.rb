class Favorite < ApplicationRecord

# direct associations
belongs_to :user, :class_name => "User"
belongs_to :case

end
