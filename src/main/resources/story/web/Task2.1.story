escription: Task2.1 ;

Scenario: Create account1
Given I am on a page with the URL '$https://trello.com/'
When I enter `$userEmail1` in field with the name 'Email'
When I click on element with the name 'Sign Up - it's free'
When I click on element with the name 'Sign Up'
Then a field with the text '$Check_your_inbox_to_login' exists

Scenario: Create account2
Given I am on a page with the URL '$https://trello.com/'
When I enter `$userEmail2` in field with the name 'Email'
When I click on element with the name 'Sign Up - it's free'
When I click on element with the name 'Sign Up'
Then a field with the text '$Check_your_inbox_to_login' exists
