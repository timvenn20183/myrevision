class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    helper_method :current_user, :encrypt, :decrypt

    private

    def current_user
        # stub
        return User.first
    end

    def encrypt(value)
        secret = Digest::SHA1.hexdigest('myrevision')
        code = ActiveSupport::MessageEncryptor.new(secret)
        return code.encrypt_and_sign(value.to_s)
    end

    def decrypt(value)
        secret = Digest::SHA1.hexdigest('myrevision')
        code = ActiveSupport::MessageEncryptor.new(secret)
        return code.decrypt_and_verify(value.to_s)
    end

end
