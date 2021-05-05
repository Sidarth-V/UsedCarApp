# Car-pricious 🚙
##### Your one stop application for all things to do with used cars. 
&nbsp;


## Problem Statement
Lot of people face issues when they go to buy used cars. One of them being that they are unaware of the actual prices and get fooled by the resellers. Tackle this problem such that a user can get the accurate price of the used car. Try to implement a user friendly UI, along with your model.
You can refer to this dataset if you want to.
https://www.kaggle.com/saisaathvik/used-cars-dataset-from-cardekhocom

## Inspiration
In a developing country, a lot of the services are re-used. Most people prefer buying refurbished second hand cars given the price difference that exists as compared to new cars and the minute differences that exist in terms of use due to the ever rising populous who change cars regularly. The main issue however lies in understanding the price at which you can either resell or buy a used car. This is where Carpricious steps in.

## What it does
We take in certain specifications including the transmission type,	fuel type,	vehicle age,	km driven,	mileage,	engine,	max power and	seats on the car you want to sell or buy and using our novel AI, we give you a price estimate range for the vehicle. Further, we direct you to nearby dealerships and also provide you with further information on the specific car including retail price, make and model as well as other cars within a similar price range. 


## How we built it
We used google colab to make the model which is a Random Forest Regressor and uses data from the dataset with the 8 inputs to make a prediction on price. We then built an application using SwiftUI and extrapolated the model into it so as to have access to the model even when offline. We then used the VehicleAPI to get further information on the specific car as per user input and connect you to external sites with more specifications.


## How to run it locally
Given that the model is incorporated into the application, there is no need to have a valid connection to get a price estimation which can be done via our application. 


## Challenges we ran into
The first issue we faced was with achieving a good fit regression with a high accuracy percentage at which point we used GridSearchCV. The second was the integration of the model into the application directly instead of sending requests. Finally, we had to add in the API to access car data into Swift.


## Accomplishments we're proud of
Achieving a high accuracy of 84 percent given the amount of data and the variablility of outliers. Integrating all the facets of the project together was another special part of the hack.


## What we learned
We learnt how to minimize models to fit directly into applications, connecting APIs, dealing with outliers in big data files and finding best regression models.


## Important URLs
https://www.kaggle.com/saisaathvik/used-cars-dataset-from-cardekhocom
https://colab.research.google.com/drive/12Vjdz6lJZfQvwMg2_x-QQWNzmWAQ3YjG?usp=sharing

