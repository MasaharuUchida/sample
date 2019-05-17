class User < ApplicationRecord
  validates :passowrd, length: {in: 8..32}  #８文字以上３２文字以内
  validates :password, format: {with: /^[a-zA-Z]+[0-9]+$/} #数字とアルファベット
  validates :email, format: {with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}　#メールアドレス
  validates :name, length: {maximum: 15} #15文字以内
  has_secure_password
end