class AdminUser < ActiveRecord::Base

	#to configure a different table name:
	#self.table_name = "admin_users"

	#for the column password_digest
	#encrypts password with blowfish
	#puts it into password_digest field
	#within admin_users
	has_secure_password

	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, :through => :section_edits
end
