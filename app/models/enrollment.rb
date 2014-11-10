# Models a participant's enrollment at a particular institution or high school.
class Enrollment < ActiveRecord::Base
  validates_presence_of :participant_id  
  belongs_to :participant, :touch => true
  
  validates_uniqueness_of :institution_id, :scope => [:participant_id, :began_on, :ended_on, :enrollment_status, :class_level]
  
  after_save :update_filter_cache
  after_destroy :update_filter_cache

  # Updates the participant filter cache
  def update_filter_cache
    participant.save
  end
  
end
