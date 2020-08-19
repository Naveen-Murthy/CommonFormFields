# Common Form Fields

Created a common form component named 'FormWidget' which is there in 'form_field.dart' file.
We can import that widget and pass required data so that it will render form based on data provided.  
 
## Getting Started
In this project I have created a common form which cotains 'Text Field','Radio button'and 'Checkbox' 
which will be rendered using data provided using switch case provided in the code.
After providing data, form will be rendered in UI,after filling data when we click on submit button if all validations 
satisfy then it will navigate to a new page which contains a button.If we click on that button then we can see entered
form data in console, which means we are passing data from one page to another.
If validations are not satisfied then we can see error with message under the field and a 'Not successfil' message in cosole.

## Bonus
As a bonus content I have included a payment gateway field in code.Based on the data provided gateway
companies will be displayed ad on click we can the name of gateway company name in console.
I make use of gesture detector widget and didnot implemented onTap() method expect print statement.
I have placed that input in 'main.dart' file so uncomment the code and see the output in UI

## Note
I wrote the form rendering logic using for loop also so if you want to see how to works
Uncomment the code in 'form_field.dart' file and comment switch case logic.