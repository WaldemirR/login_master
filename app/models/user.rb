#email: string
#password_digest: string
#
#password: string virtual
#password_confirmation:string virtual
#
class User < ApplicationRecord
    has_secure_password #password e password_confimation campos virtuais
    validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message:"deve estar preechido e ser um e-mail válido"}
end

