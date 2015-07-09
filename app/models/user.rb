class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	after_create :initial_work

	def initial_work
		self.water_changes = 0
		self.skimmer_cleans = 0
		self.save!
	end

end
