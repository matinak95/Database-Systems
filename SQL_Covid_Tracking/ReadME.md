Descriptions:

Here are notes on the entities:
• Employee [contains info about employees]: ID, name, office number, floor number, phone number, email address etc.
• Meeting [contains meeting info, on every meeting between employees]: meeting ID, employee ID, room number, floor number, meeting start time (just an int between 8 and 18, standing for 8AM..6PM)
• Notification [based on contact tracing, to alert employees who might have been exposed]: notification ID, employee ID, notification date, notification type (mandatory, optional)
• Symptom [self-reported by employees, any of 5 symptoms]: row ID (1,2...), employee ID, date reported, symptom ID (1 through 5)
• Scan [random scans of employees' body temperatures]: scan ID, scan date, scan time, employee ID, temperature
• Test [to record test details]: test ID, location (company or hospital or clinic etc), test date, test time, employee ID, test result (positive or negative)
• Case [to record employees who test positive]: case ID, employee ID, date, resolution (back to work, left the company, or deceased)
• HealthStatus [self-reporting by employees]: row ID, employee ID, date, status (sick, hospitalized, well)
• time can be ints between 0 and 23, standing for 12AM to 11PM 'on the hour'
• the company has 10 floors, numbered 1 through 10

The database was stablished using SQL language and ORACLE Live Sql Engine. There are several assumptions and consideration I had:
1) At the beginning of each notification, it is written that ignore this email if you have tested for COVID during past 24 hours.
2) The virus survives for a long period (some months) and can be spread through people through asymptotic people.
3) Employees only go to restrooms and kitchen on the floor on which their offices' are located.
4) We have 5 symptom ID.
5) We have 'P' for positive tests and 'N' for negative tests.
6) We have 'O' for optional notifications and 'M' for mandatory ones.
7) The date format is 'DD/MM/YY'.
8) Fever is considered body temperature above 100 degrees Fahrenheit.
9) For Health Status we allocated 'B' for Bad (Sick), 'L' Locked (in Hospital), and 'D' Dragon (Well as hell lol).
10) For resolution, we have 'L' for leaving the company, 'B' back to work, and 'D' deceased :(.
11) For IDs, since Oracle does not support "AUTO INCREMENT" command, I had to use separate sequences to generate IDs.
-----------------------------------------------------------------
12) ABOUT the last query: I implemented my query with the concept of relational division. In this query I have employee IDs as divisor column and the whole employee table as dividend. What I targeted to find here was to see what names are common between employees and not unique. This will help DB designers debug DB design and check and see if the Notification Center sends DMs correctly regardless of people's names (that are not unique) and to check if the titles of emails are correct. The query returns back the names that are common between several employees.
