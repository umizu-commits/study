
Rails.application.config.sorcery.submodules = [:reset_password]

Rails.application.config.sorcery.configure do |config|

  config.user_config do |user|

    user.stretches = 1 if Rails.env.test?
    user.reset_password_mailer = UserMailer
    user.reset_password_time_between_emails = 1 * 1
  end

  config.user_class = "User"
end
