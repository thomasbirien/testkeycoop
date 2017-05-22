class AnnouncementMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.announcement_mailer.new_announcement.subject
  #
  def new_announcement
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
