CONSTRAINTS

1)Primary Key: It is for making records unique.
               It does not accept "null" as value
               It does not accept repeated data, all data in primary key must be unique
               A table can have just a single "primary key" field.

               Field Name - Data Type - Constraint
               student_id    VARCHAR    PRIMARY KEY

2)Foreign Key: It is for creating relationships between the tables.
               It accepts "null" as value
               It accepts repeated data
               A table can have multiple foreign key fields.

3)Unique Key: It is for making data in a field unique.
              When you insert data in a "Unique Key Field", Postgre will check if it is matching with existing ones. If there is Postgre will give error.  
              When you update a data in a "Unique Key Field", Postgre will check if it is matching with existing ones. If there is Postgre will give error. 
              Unique key can have multiple null values.

              email_address VARCHAR UNIQUE

4)Check: It checks conditions we put for the data

			  age_of_students INTEGER CHECK(age_of_students>0)

         
5)NOT NULL: It tells to Postgre, do not accept "null" values in the field.
            To make a field "Required Field" we use "NOT NULL" constraint 

            email_address VARCHAR NOT NULL  



Data Types in POSTGRESQL 

1)BOOLEAN: It has 3 values i)true  ii)false iii)null
           BOOLEAN can be used like BOOL as well

           is_retired BOOLEAN or is_retired BOOL

2)CHAR: It is for fixed length Strings
        CHAR(n) does not accept more than "n" characters
        CHAR(n) accepts "n" or less than "n" characters
        CHAR means CHAR(1)

		social_security_number CHAR(9)

3)VARCHAR: It is for Strings
           VARCHAR and TEXT are completely same	

           address VARCHAR	or address TEXT

4)NUMERIC: This for storing numeric values(whole or decimal)
           

           price NUMERIC(5, 2) ==> 437.83
                               ==> "5" is called "precision" and it displays total number of digits
                               ==> "2" is called "scale" and it displays number of digits in decimal part
                               ==> If you use more than 5 digits in total, it gives error
                               ==> If you use more than 2 digits in decimal, it gives error
                               ==> Using less than 5 in total or less than 2 in decimal is allowed

           price NUMERIC(5, 0) ==> Whole number like 98654 
           price NUMERIC(5) 


           price NUMERIC ==> There is no any limit for "precision" and for "scale"  


5)DATE: It is for storing date values
        Default date format is like "yyyy-mm-dd"  
        When you insert a date, if you do not use "yyyy-mm-dd" format, it gives error.
        date_of_birth DATE 
		
		If you need to insert current date automatically you can use 
		registration_date DATE CURRENT_DATE 

6)TIME: It is for storing time values	
        hh:mm:ss format is the default format for the time data type	

        appointment_time TIME

7)JSON: If you need to store data in key-value structure you can use JSON data type

		apple:12,   orange:21,  apricot:13   

		fruit_prices JSON 









