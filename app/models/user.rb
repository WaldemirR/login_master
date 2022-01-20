class User < ApplicationRecord
    has_secure_password #password e password_confimation campos virtuais
    validates :email, presence :true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message:"E-mail deve estar preenchido e ser um e-mail válidade"}
end

