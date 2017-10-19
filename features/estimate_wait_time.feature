Feature: estimated wait time for help
  
  As a busy student
  So that I can decide whether to wait in line or not
  I want to know my estimated wait time
  
Background: student requests in database
 
  Given the following student requests exist:
  | student_sid | wait_pos |
  | 25804240    | 1        |
  | 00000000    | 2        |
  | 25804241    | 3        |
  | 25804242    | 4        |  

Scenario: students signs up for “drop-in”
  Given I am on the sign up page
  When I fill in the "student_requests" form and click "Submit"
  Then I should see a wait time of "30 min"

  
#student email confirmation should have abiltiy to cancel I think

