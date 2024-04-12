Feature: Shopping in the Zalando online store

  Scenario: Searching for and purchasing a selected product on Zalando
  
    Given The user is on the Zalando homepage
    When The user enters the name of the product they are searching for in the search bar
    And The user clicks the search button
    Then The user sees a list of products matching the search
    
    Given The user selects a product from the list by clicking on it
    When The user chooses the size of the product
    And The user adds the product to the cart by clicking the "Add to cart" button
    Then The product is added to the cart
    
    Given The user is in the cart
    When The user clicks the "Proceed to checkout" button
    And The user fills in all required address and payment information
    And The user accepts the terms of the store
    And The user clicks the "Place order" button
    Then The order is placed
    
    Given The order has been placed
    When The user receives a purchase confirmation at the provided email address
    Then The confirmation contains details of the purchased product and the order number
    And The order status in the purchase history on the user's account is set to "Completed"
