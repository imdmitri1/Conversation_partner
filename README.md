# Conversation Partner
[![Coverage Status](https://coveralls.io/repos/github/m-kallstrom/conversation-partner/badge.svg?branch=master)](https://coveralls.io/github/m-kallstrom/conversation-partner?branch=master)
[![Build Status](https://travis-ci.org/m-kallstrom/conversation-partner.svg?branch=master)](https://travis-ci.org/m-kallstrom/conversation-partner)

### [Dmitri Stefanisin](https://github.com/imdmitri1)
### [Marla Kallstrom](https://github.com/m-kallstrom)
### [Clint Thacker](https://github.com/archivefever)

Conversation Partner helps anyone starting out in a new language practice their conversation skills. Rather than responding to a user's questions like a traditional chatbot, Conversation Partner will respond to a user's statement with a question to prompt the user to keep the conversation rolling.

## Installation Instructions

This app is built with Ruby 2.3.5 and Rails 5.1.4

Clone or fork this repo, then create and migrate the database. To recreate full functionality, you'll need your own ENV file with a Watson Conversation username, password, and workstation ID.

## Using this App

Click 'Try it now!' to use the app without signing up. Speech recognition is supported in Google Chrome browsers version 33 and above.

Start by sending a greeting and then respond to Conversation Partner. If you make a mistake, Conversation Partner will model a gentle correction for you, and then continue to ask you questions.

If you sign up, you can view your past conversations and a list of the words you've had trouble with in the past.

![Landing page and main chat screen](app/assets/images/views.png)

## Live version

The current live version can be found here:
[Conversation Partner](https://conversation-partner.herokuapp.com)


