Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :youtube, ENV['YOUTUBE_KEY'], ENV['YOUTUBE_SECRET'], {
      :access_type => 'online', :approval_prompt => '',
      :scope => "https://www.googleapis.com/auth/youtube.readonly https://www.googleapis.com/auth/userinfo.email"
    }
  else
    provider :youtube, "1072289531779-rnhstpcig8a5p2chrj6mmldfmvk75aga.apps.googleusercontent.com", "LRA2e0G8asuQ5CFtgHmN7MDn", {
      :access_type => 'online', :approval_prompt => ''
    }
  end
end

OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}
