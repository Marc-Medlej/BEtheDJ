require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "60badc7756714015a695c90f3063a104", "2bcbca23fe844035b6a994e2fe56308e", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end
