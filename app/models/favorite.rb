class Favorite < ApplicationRecord

# direct associations
belongs_to :user, :class_name => "Student"
belongs_to :case

end
