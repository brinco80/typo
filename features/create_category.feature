Feature: Create Category
  As an author
  In order to gift order posts
  I want to create a category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create category page shown
    Given I am on the dashboard page
    When I follow "Categories"
    Then I should be on the new category page

  Scenario: Add category
    Given I am on the new category page
    When I fill in "Name" with "pepe"
    And I fill in "Keywords" with "first post"
    And I fill in "Description" with "lorem ipsum"
    And I press "Save"
    Then I should be on the new category page
    And I should see "Category was successfully saved."
    And I should see "pepe"
    And I should see "first post"
    And I should see "lorem ipsum"