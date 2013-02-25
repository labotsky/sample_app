Feature: Signing in

Scenario: Unseccussful Signing
	Given a user visits the signin page
	When he submit invalid sigin information
	Then he should see an error message

Scenario: Seccussful Signing
	Given a user visits the signin page
	And the user has an account
	And the user submits valid signin information
	Then he should see his profile page
	And he sholud see a signout link	