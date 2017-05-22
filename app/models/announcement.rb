class Announcement < ApplicationRecord
  after_create :deliver_mail

  private
  def deliver_mail
    AnnouncementMailer.new_announcement(Announcement.last.id).deliver_now
  end
end
