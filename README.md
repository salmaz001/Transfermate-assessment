# Transfermate-assessment

Using mysql database - phpmyadmin
there are two table (authors and books) in database - library

in this system, it will check in the folder books for data to be inserted into the database, it will read all the xml files in this folder and their subfolders. If there are any data (author and books), it will check in the database whether the data is exist or not, if exist, then it will update the data, if not exist then it will insert new data into the database.

User can search the books they want by using author, fill in the author in the input field and the system will check in the database whether the authors have any books or not. 

Then it will display the results.

This system also has implement the cron job for every 10 minutes. 
