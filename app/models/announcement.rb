class Announcement < ApplicationRecord
  belongs_to :bill, optional: true
  after_create :deliver_mail

  def date_format
    date_wrong_format = self.created_at
    date_good_format = date_wrong_format.strftime('%d/%m/%Y')
  end

  private
  def deliver_mail
    AnnouncementMailer.new_announcement(Announcement.last.id).deliver_later
  end
end
