module JwtToken
  SECRET_KEY = 'e828c90eb12d269e6e6ee62064aefc3023b80965f428848c534bc80a79063dc29c8e2779962d0572e78af96b83258fe4932f5b03b750415d863fa7f76f485fe7'.freeze

  def self.encode(payload)
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode(token)
    JWT.decode(token, SECRET_KEY).first
  end
end
