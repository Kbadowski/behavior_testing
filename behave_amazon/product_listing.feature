Feature: Test product listings at Amazon

Scenario: tennis shoes for sale include Hamilton Beach
    Given that we have gone to wwww.amazon.com
     When we search for "tennis shoes"
     Then we find items from "adidas"
      And we find items from "Reebok"

Scenario: games for sale include Fruit of the Loom
    Given that we have gone to wwww.amazon.com
     When we search for "games"
     Then we find items from "Jenga"

Scenario Outline: concatenate various things
    Given that we have gone to wwww.amazon.com
     When we search for "<product>"
     Then we find items from "<vendor>"

 Examples: Various products
   | product  | vendor |
   | games | Jenga  |
   | tennis shoes | adidas |

