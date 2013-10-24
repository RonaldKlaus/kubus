class State < ActiveRecord::Base

  belongs_to :state_language

  def german
    StateLanguage.where("state_id = 1", id).where("language_id = ?", 1)
  end

  def by_language language_id = 1
    StateLanguage.where("state_id = ?", id).where("language_id = ?", language_id)
  end

  private 

end
