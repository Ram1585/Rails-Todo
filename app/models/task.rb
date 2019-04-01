class Task < ApplicationRecord
	belongs_to :user
	validates :task_title, :task_description, :presence => true
	validates :task_title, :task_description, :length => {:minimum => 5, :maximum => 50}
end
