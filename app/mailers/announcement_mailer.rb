class AnnouncementMailer < ApplicationMailer
  def new_announcement(announcement_id)
    @announcement = Announcement.find(announcement_id)
    @url = 'localhost:3000/announcements'

    mail to: "facturation@example.com", subject: 'new announcement added'
  end
end
