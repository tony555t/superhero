# Superhero API
This is a RESTful API that allows you to retrieve and modify data on superheroes and their powers.

# Models
The following relationships exist between the models:

A Hero has many Powers through HeroPower
A Power has many Heros through HeroPower
A HeroPower belongs to a Hero and belongs to a Power
# Validations
The following validations exist on the models:

HeroPower: strength must be one of the following values: 'Strong', 'Weak', 'Average'
Power: description must be present and at least 20 characters long
Routes
# GET /heroes
Returns JSON data containing an array of heroes in the following format:[
  {
    "id": 1,
    "name": "Kamala Khan",
    "super_name": "Ms. Marvel"
  },
  {
    "id": 2,
    "name": "Doreen Green",
    "super_name": "Squirrel Girl"
  },
  {
    "id": 3,
    "name": "Gwen Stacy",
    "super_name": "Spider-Gwen"
  }
]
# GET /heroes/:id
Returns JSON data containing a hero's details and their associated powers in the following format:
{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
Superhero API
This is a RESTful API that allows you to retrieve and modify data on superheroes and their powers.

Models
The following relationships exist between the models:

A Hero has many Powers through HeroPower
A Power has many Heros through HeroPower
A HeroPower belongs to a Hero and belongs to a Power
Validations
The following validations exist on the models:

HeroPower: strength must be one of the following values: 'Strong', 'Weak', 'Average'
Power: description must be present and at least 20 characters long
Routes
GET /heroes
Returns JSON data containing an array of heroes in the following format:

json
Copy code
[
  {
    "id": 1,
    "name": "Kamala Khan",
    "super_name": "Ms. Marvel"
  },
  {
    "id": 2,
    "name": "Doreen Green",
    "super_name": "Squirrel Girl"
  },
  {
    "id": 3,
    "name": "Gwen Stacy",
    "super_name": "Spider-Gwen"
  }
]
GET /heroes/:id
Returns JSON data containing a hero's details and their associated powers in the following format:

json
Copy code
{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
If the Hero does not exist, the following JSON data is returned with the appropriate HTTP status code:{
  "error": "Hero not found"
}
Superhero API
This is a RESTful API that allows you to retrieve and modify data on superheroes and their powers.

Models
The following relationships exist between the models:

A Hero has many Powers through HeroPower
A Power has many Heros through HeroPower
A HeroPower belongs to a Hero and belongs to a Power
Validations
The following validations exist on the models:

HeroPower: strength must be one of the following values: 'Strong', 'Weak', 'Average'
Power: description must be present and at least 20 characters long
Routes
GET /heroes
Returns JSON data containing an array of heroes in the following format:

json
Copy code
[
  {
    "id": 1,
    "name": "Kamala Khan",
    "super_name": "Ms. Marvel"
  },
  {
    "id": 2,
    "name": "Doreen Green",
    "super_name": "Squirrel Girl"
  },
  {
    "id": 3,
    "name": "Gwen Stacy",
    "super_name": "Spider-Gwen"
  }
]
GET /heroes/:id
Returns JSON data containing a hero's details and their associated powers in the following format:

json
Copy code
{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
If the Hero does not exist, the following JSON data is returned with the appropriate HTTP status code:

json
Copy code
{
  "error": "Hero not found"
}
# GET /powers
Returns JSON data containing an array of powers in the following format:

json
[
  {
    "id": 1,
    "name": "super strength",
    "description": "gives the wielder super-human strengths"
  },
  {
    "id": 2,
    "name": "flight",
    "description": "gives the wielder the ability to fly through the skies at supersonic speed"
  }
]
# GET /powers/:id
Returns JSON data containing a power's details in the following format:
{
  "id": 1,
  "name": "super strength",
  "description": "gives the wielder super-human strengths"
}
# PATCH /powers/:id
Updates an existing Power with the provided description property in the body of the request. If the Power is updated successfully, returns JSON data containing the updated power's details in the following format:

json

{
  "id": 1,
  "name": "super strength",
  "description": "Updated description"
}
If the Power does not exist, the following JSON data is returned with the appropriate HTTP status code:
{
  "error": "Power not found"
}


Super Heroes
This is a RESTful API for managing superheroes built with Ruby on Rails. It features three models: Hero, Power, and HeroPower. The Hero model has a name and a super_name, while the Power model has a name and a description. The HeroPower model serves as a join table between Hero and Power, and has a strength attribute.

live link
live link
Topics
Models
Associations
Validations
Routes, Controllers, and REST
Instructions
# Installation
To get started, clone the repository and navigate to the project directory:

# git clone https://github.com/tony555t/superhero
cd super_heroes

Then, install the required dependencies using Bundler:

# bundle install
run the migrations:

# rails db:migrate 
seed data

  rails db:seed    
Usage
Start the server with:

rails server

# author
antony tula




