 Feature: Check create and get user using API
 	Background:
 		* url 'https://gorest.co.in'
	 	* header Content-Type = 'application/json'
	 	* header Authorization = 'Bearer nijE18x7VWl_asB-T4aLRLYjw_EEoqrRxM06'
	Scenario: Create a User
			 	Given path '/public-api/users'
			 	And request {"first_name":"USTUser","last_name":"Test","gender":"male","dob":"1972-04-07","email":"TestYms3@example.net","phone":"461-387-9299 x86476","website":"http://TestWebAddress.com","address":"TestAddress","status":"active"}
			 	When method POST
			 	Then status 200

	 	
	 Scenario: List all the user having first name with Test
		Given path '/public-api/users'
		And param first_name = 'Test'
		When method GET
	 	Then status 200	 	
	 	And def JsonResponse = response
	 	Then match JsonResponse.result[*].last_name contains [Yms]
	 	
	 	
	 	