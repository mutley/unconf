class User < ActiveRecord::Base
  attr_accessible :provider, :uid, :info, :credentials, :extra
  serialize :info, OmniAuth::AuthHash::InfoHash
  serialize :credentials, Hashie::Mash
  serialize :extra, Hashie::Mash

  def as_json(options = {})
    json = super({ :methods => %w[created_at id provider] }.merge(options))
    json['created_at'] = json['created_at'].to_i
    json
  end

  def self.find_or_create_by_auth_hash(auth_hash)
    user = find_or_create_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
    user.update_attributes(auth_hash)
    user
  end

end
