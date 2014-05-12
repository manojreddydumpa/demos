class Subject < ActiveRecord::Base
  
  has_many :pages
  
  acts_as_list
  
  # Don't need to validate them in most of the cases: ids, foreign keys, timestamps, booleans, counters
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  
  scope :visible, lambda {where(:visible => true)}
  scope :invisible, lambda {where(:visible => false)}
  scope :sorted, lambda {order("subjects.position ASC")}
  scope :newest_first, lambda {order("subjects.created_at DESC")}
  scope :search, lambda {|query| where(["name like ?","%#{query}%"])}
    
end
