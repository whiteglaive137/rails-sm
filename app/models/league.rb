class League < ActiveRecord::Base
  belongs_to :organizer,class_name:"User"
end
