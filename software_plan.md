SOFTWARE DEVELOPMENT PLAN

SCOPE: The scope of this 'Super Eats' app is to allow the user to order food online from nearby food-courts, by selecting dishes from cuisines of their choice.

STATEMENT OF PURPOSE:
    What the application will do:
    This application is an online food delivery app called 'Super Eats'. It enables users to order food from stores within a food court. They can choose from a variety of dishes from various cuisines. The final cart shows them what they have ordered along with the total cost. There is also an option to mention any additional requests such as spice levels, no onions etc. The application then asks for an address to which the food has to be delivered. It also gives the time it would take for delivery.

    The problems this app solves and why I am developing it:   
    1. Food delivery apps have gained so much importance because of smartphone dependence. Nowadays people dont have time to go outside for food. Online ordering mainly solves mobility problems. Customers can order from anywhere - while sitting on a train, in a classroom, while working late from office, or even if they are just bored of eating home coked food! 
    2. Another problem it solves is the misunderstandings that occur when ordering via calling the restaurant directly. Restaurant noises, phone connectivity can lead to confusions which is avoided by online ordering as it is directly specified by the customer
    3. Customers have much so much more choice in an online food app, they can choose between different cuisines/dishes
    4. There is no minimum order quantity in this app. It doesnt matter if they can order for one, or order for a house party. 
    5.Restaurants during holiday times/office lunch breaks can get crowded and long waiting lines are usual. Order online from the comfort of home or work!

    Target audience:    
    Hungry? Busy...or lazy to cook? Vegetarian/vegan friendly? This app appeals to people of all ages because it is so convenient, painless to order, and quick. It mainly is useful for office goers who dont want to step out of office and wait in long queues to grab lunch. This app has dishes available from many of the restaurants within the CBD.
    

    How target audience will use it:    
    The current version of the application is a prototype to be executed on the terminal. The long term goal is to publish it in the iOS or Android app store and can be accesed via browser too. Users need to sign up with their email ids when they use the app for the first time after which they can easily log in whenever ordering. They can create a profile with their favourite cuisines saved for future use. The 'Menu' icon gives them the choices of cuisines which they initially choose, after which they have the individual dishes to choose from a range of entrees, mains and desserts. The prices are mentioned alongside the dishes. If the user has any requests such as wanting extra napkins, reducing spice levels etc, there is an 'additional requests' column where they can write it down. If the user wants to customise their item like adding extra cheese or making it meatless there is an option of 'Customise item'. The 'cart' then shows the final order and price for payment.Finally, their delivery address is to be given. Once the payment is made, their order can be live tracked until collection.


FEATURES:
1. Mix and match cuisines: 

 a) Super Eats allows users to mix and match cuisines and dishes while ordering. This is achieved through effective use of variables and loops. 
 b) This app minimises user input errors as it uses multi-select option from TTY-Prompt Gem. 
 c) User friendly error message displayed for invalid inputs.

2. Cart and final costs:
a) The cart shows the user's final order, total price by compiling and displaying all the dishes across cuisines that the user chose. This feature was developed with the help of creating an empty array variable which keeps appending user's input as they order. The total price of the order is obtained by creating variables and defining methods to get price of single dish and another method to get the price of all the dishes ordered.

3. Delivery time:
a) The delivery time is given to the user based on the total items ordered. It is calculated by writing conditions using comparison operators between number of items and the minutes taken to deliver.


4.Log-in feature using username and password:
a) This app allows the user to proceed with ordering only after they have signed into the app. This feature was developed using case statement. 


USER INTERACTION AND EXPERIENCE:
Super Eats app is quite descriptive and user-friendly at every step. 
1. Once the program starts in terminal, the user is asked for the username and password. 
2. After user is logged in successfully, the options for cuisines(Italian,Mexican,Indian) show up and the user has to type in the desired option. By using || operators, upcase, downcase and  capitalize inputs are all taken care of. Errors are handled in this step by way of displaying an error message when anything other than the options are typed.
3. The dishes under the chosen cuisine show up and the user can select multiple dishes in one go, which are then displayed.
4. User is asked if they would like to order food from another cuisine. If user types yes, the cuisines are displayed repeatedly and the process continues. If the user types in no, the next stage of the order comes up.
5. The user is then asked if they have any additional requests, which they can type in.
6. The next step asks for the user's address input.
7. The user is then displayed with the final order, final price, and the time for delivery of food.


CONTROL FLOW DIAGRAM