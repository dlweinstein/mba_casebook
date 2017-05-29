class Message < ApplicationRecord

  belongs_to :sender, :class_name => "Student"
  belongs_to :receiver, :class_name => "Student"

end
