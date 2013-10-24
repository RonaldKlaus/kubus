class Event < ActiveRecord::Base
  belongs_to :course
  belongs_to :language

  has_one :attribute
  has_one :state

  def title
    number + " " + name
  end

  
end
