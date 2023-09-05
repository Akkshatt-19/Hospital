class User < ApplicationRecord
    has_secure_password
    enum role: [ :sub_admin, :health_worker ]
    validates :role,presence: true,allow_null=true
    validates :name, length: { minimum: 2 ,message: "Please Enter Name Carefully !!!"}
    validates :email, format: {  with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,uniqueness: true,message: "Please Enter Valid Email" }
    validates :phone, uniqueness: true,length: { is: 10 }
    
    
end    






# validates :password, presence: true, length: { minimum: 8 ,message: "Password character's can't be less than 8!!!"}

# format: { with: PASSWORD_FORMAT }
# PASSWORD_FORMAT = /\A
# (?=.{8,})          # Must contain 8 or more characters
# (?=.*\d)           # Must contain a digit
# (?=.*[a-z])        # Must contain a lower case character
# (?=.*[A-Z])        # Must contain an upper case character
# (?=.*[[:^alnum:]]) # Must contain a symbol
# /x


