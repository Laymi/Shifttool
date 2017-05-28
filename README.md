# Shifttool
Shifttool for coordinating the student initiatives at WHU.
#####The default website port is 3000(you can specify a --port XX option)
#####The default mongodb port is 3001(or website+1)

# Setup
##### You need to have git already installed
For OSX and Linux
```
curl https://install.meteor.com/ | sh
cd ~
git clone https://github.com/Peschonaut/shifttool.git
cd shifttool
meteor
```
For Windows (just don't)
```
https://install.meteor.com/windows
Clone the git repository in some folder that you have RW permissions on
Open a command prompt, navigate to the folder and type 'meteor' to start the app
```
# Getting started
You find some example JSONs for the important collections below but for convenience I added a method to automatically populate the database for you.
So everything you have to do is to open the console and type:
`Meteor.call('populateDatabase', N)` <br/> N = Amount of students and shifts to add <br/><br/>
In order to create the first user open the console and type:
`Meteor.call('createExampleUser')` <br/>
Login credentials: <br/>
email: 'test1337@test.test' <br/>
password: 'test1234'
## Example JSON - Students
```
{
    "_id" : "123456789",
    |"last_name" : "Lastname",
    |"first_name" : "Firstname",
    |"email" : "Firstname.Lastname@uni.edu",
    |"track" : "ABC",
    |"gender" : "male"
}
```
## Example JSON - Shifts
```
{
  "_id":"AXnceh7kqsRmssMDA",
  |"info" : {
    "supervisor":"First Last",
    "supervisorContact":"+123456789",
    "location":"some location",
    "info":"some information"
  },
  |"assignedStudents" : [
    "LXnceh7kqsRmssMDA",
    "LXnceh7kqsRmssMDB"
  ],
  |"createdAt":ISODate("2012-12-19T06:01:17.171Z")
}
```
## Example JSON - Trades
```
{
    "_id" : "XTNEjewk4AcHY2hQN",
    "requester" : "LXnceh7kqsRmssMDB",
    "shiftOfferedFor" : "keQLpo35giPJu8sSR",
    "shiftOfferedInExchange" : "keQLpo35giPJu8sSR",
    "recipients" : ["LXnceh7kqsRmssMDB", "LXnceh7kqsRmssMDC"]
}
```
