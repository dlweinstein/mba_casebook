class Friend < ApplicationRecord

# direct associations
belongs_to :sender, :class_name => "Student"
belongs_to :recipient, :class_name => "Student"

end
