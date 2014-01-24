class Person < ActiveRecord::Base
before_save :cleanup
validates :awesomeness, :numericality => { :less_than_or_equal_to => 100 }

default_scope {order("awesomeness DESC")}


private
def cleanup
	self[:name] =self[:name].capitalize
end
	
end
