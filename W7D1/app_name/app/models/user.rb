class User < ApplicationRecord
    require 'securerandom'
    require 'bcrypt'
    validates :username, :session_token, presence: true
    validates :password_digest, presence: {message: "Password can't be blank"}
    validates :password, length: {minimum: 6, allow_nil: true}
    before_validation :ensure_session_token

    attr_reader :password
    
    def self.find_by_credintials(username, password)
        User.where(username: username)
        return user if user && BCrypt::Password.new(user.password_digest).is_password?(password)
    nil
    end

    def self.generate_sessions_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_sessions_token!
        self.session_token = User.generate_sessions_token
        self.save
    end

    def ensure_session_token
        self.session_token ||= User.generate_sessions_token
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

end

