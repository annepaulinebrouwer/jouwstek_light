class UserMailer < ApplicationMailer

	def request_allotment(user, allotment)
		@user = user
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

		mail(to: @user.email, subject: "Tuinieren kan beginnen")
	end

	def decline_allotment_request(allotment)
		@allotment = allotment
		@user = allotment.user
		@garden = allotment.garden
		@owner = @garden.owner

		mail(to: @user.email, subject: "#{@owner.first_name} heeft je verzoek geweigerd")
	end

end
