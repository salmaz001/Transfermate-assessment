# Transfermate-assessment

Can run the system using localhost.

Open the test here - localhost/Test/index.php

Using mysql database - phpmyadmin
there are two table (authors and books) in database - library
Need to import the library.sql to the phpmyadmin.

in the insertData.php, it will do the following:
in this system, it will check in the folder books for data to be inserted into the database, it will read all the xml files in this folder and their subfolders. If there are any data (author and books), it will check in the database whether the data is exist or not, if exist, then it will update the data, if not exist then it will insert new data into the database.
Need to run the insertData.php file to update or insert data to the database.

in the index.php:
User can search the books they want by using author, fill in the author in the input field and the system will check in the database whether the authors have any books or not. 

Then it will display the results with animation.

If no result, it will display an error message.

Example Author to search - 
1 - JK Rowling
2 - 릴리
3 - Юрий

The main page
<img width="662" alt="image" src="https://user-images.githubusercontent.com/36926384/212166207-71709585-83ac-4853-861f-8cfa2b9c7ddb.png">

Result after search
<img width="910" alt="image" src="https://user-images.githubusercontent.com/36926384/212166301-d43375ff-cac0-4cbc-8a63-cf835e4a709c.png">

Error message
<img width="574" alt="image" src="https://user-images.githubusercontent.com/36926384/212166403-72665098-2c7a-43c8-8bce-9ccf5558d071.png">

