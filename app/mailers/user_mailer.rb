class UserMailer < ApplicationMailer
	helper EmailHelper
	def request_allotment(user_id, allotment)
		@user = User.find(user_id)
		@allotment = allotment
		@garden = allotment.garden
		@owner = @garden.owner
		
		mail(to: @owner.email, subject: "#{@user.first_name} is geinteresseerd in je tuin..")
	end

	def accept_allotment_request(allotment)
		@allotment = allotment
		@user = allotment.user
		@garden = allotment.garden
		@owner = @garden.owner

		mail(to: @user.email, subject: "Het tuinieren kan beginnen..")
	end

	def decline_allotment_request(allotment)
		@allotment = allotment
		@user = allotment.user
		@garden = allotment.garden
		@owner = @garden.owner

		mail(to: @user.email, subject: "Helaas heeft #{@owner.first_name} je verzoek niet geaccepteerd..")
	end

end
