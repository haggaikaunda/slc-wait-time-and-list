Feature: enter line for help
  
  As a student
  So that I can receive help with my writing
  I want to get in line

Scenario: submit sign up form
  Given I am on the sign up form
  And I fill out information
  And I click on "submit"
  Then I should be on the wait time page
  
#add student to queue when they submit sign up page; do nothing if they stay and remove them if they don't.
#fill out form and submit

# TODO: Step definition for "I am on the wait time page should fill out the student information"
@submited_form
Scenario: wait in line
  Given I am on the wait time page
  Then I click "yes"
  Then I should be on the confirmation page
  And I should see "Congratulations, you are in line"

Scenario: don't wait in line
  Given I am on the wait time page
  When I click "no"
  Then I should be on the not in line page
  And I should see "Hope to see you soon"
  
  
  
  
  
Before('@submited_form')  do
  Given I am on the sign up page
  When I fill out my name with "Jennifer Be"
  
end 

# Scenario: display sign up page
#   Given I am on the wait time page
#   And I click on "yes"
#   Then I should be on the sign up form

# Scenario: do not wait in line
#   Given I am on the wait time page
#   And I click on "no"
#   Then I should not be on the sign up form

# Scenario: see wait time after signing up
#   Given I have filled out sign up page
#   When I click "submit"
#   Then I should be on the wait time page

