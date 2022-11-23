#Test by Lana
  @cucumber
  Feature: Quote test scenarios
    Background:
      Given I open url "https://skryabin.com/market/quote.html"
      Then I should see page title as "Get a Quote"
      Then I resize window to 1920 and 1080

    @cucumber1 @regression
    Scenario: Validate responsive UI behavior
      #Given I open url "https://skryabin.com/market/quote.html"
      #Then I should see page title as "Get a Quote"
      #Then I resize window to 1920 and 1080
      Then element with xpath "//b[@id='location']" should be displayed
      And element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"
      When I resize window to 820 and 1180
      Then element with xpath "//b[@id='location']" should be displayed
      And element with xpath "//b[@id='location']" should contain text "Los Altos, CA 94022"

    @cucumber2
    Scenario: Verify Username field
      #Given I open url "https://skryabin.com/market/quote.html"
      #Then I should see page title contains "Get a Quote"
      #Then I resize window to 1920 and 1080
      Then element with xpath "//input[@name='username']" should be present
      When I type "A" into element with xpath "//input[@name='username']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should contain text "Please enter at least 2 characters."
      Then I clear element with xpath "//input[@name='username']"
      When I type "Aa" into element with xpath "//input[@name='username']"
      And I click on element with xpath "//button[@id='formSubmit']"
      Then element with xpath "//label[@id='username-error']" should not be displayed

      Then I wait for 5 sec
      

