# Udemy

Wrapper Gem for the [Udemy API](https://developers.udemy.com).

## Installation

    gem install udemy

## Usage

Follow the Udemy instructions, this includes obtaining [API client credentials](https://www.udemy.com/user/edit-api-clients).

    Udemy.client_key = 'your_client_key'
    Udemy.client_secret = 'your_client_secret'

Fetching a course by ID

    Udemy::Course.findOne(5816)

... WIP ...

## How to contribute
* Create a fork
* Add your feature, fix an issue
* Please make sure your tests pass. Your code must be tested to be approved
* Send a Pull Request

Copyright (c) 2014 [Jonathan Lancar](http://www.genesx.com). See LICENSE for details.