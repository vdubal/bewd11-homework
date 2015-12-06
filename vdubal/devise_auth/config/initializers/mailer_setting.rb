ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      "username here",
    :password =>       "Pq9yOsZSNDhJMufFEOyniQ",
    :domain =>         'http://uvkka09726ac.vladimirdubal.koding.io:3100/',
    :authentication => :plain
}