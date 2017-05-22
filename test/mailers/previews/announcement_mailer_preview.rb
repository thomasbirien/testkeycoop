class AnnoucementMailerPreview < ActionMailer::Preview
  def new_publication
    announcement = Announcement.first
    AnnouncementMailer.new_announcement(announcement)
  end
end
