GENERAL
  [x] - Login/logout/session working
  [x] - dislike model implemented
  [x] - for like and dislike: how to validate that the combination of a user_id and thought_id is unique
  [x] - allow users to edit their own thoughts

  [ ] - allow users to edit their own page
  [ ] - allow users to delete their account
  [ ] - make sure their thoughts and get deleted with them along with all the likes and dislikes associated with their thoughts
  [ ] - confirm password

  [0] - get everything css'd
  [0] - like/dislike percentage

USERS
  [x] - don't validate photo
  [ ] - Add photo attribute by migration
  [ ] - have default photo
  [ ] - have option in edit user for photo
  [x] - user must be logged in to access edit user page
  [ ] - take email at signup
  [x] - verify that email is valid
  [x] - enable following
  [x] - limit one follow per user pair (1 each way)
  [ ] - enable password confirmation functionality
  [ ] - what's the right way to limit to one follow?
  [x] - enable unfollowing
  [x] - button at top at all times to own user page

TWEETS
  [x] - user must be logged in to edit tweet
  [x] - edit tweet page should not require choosing user
  [x] - editing tweet should edit not create new
  [ ] - show most recent tweets (maybe set this sort choice in session?)
  [ ] - show most popular tweets
  [ ] - allow user to pin a tweet
  [ ] - do something with @s
  [ ] - do something with #

FOLLOWS
  [ ] - show page for all followers for a user
  [ ] - user page shows number of followers which links to the list

LIKES
  [x] - user -< like >- thought
  [x] - show number of likes next to / under thought on show and index
  [ ] - limit 1 like per user thought pair
  [ ] - allow deleting likes
  [ ] - fix up the relationship (user has liked posts?)
  [ ] - # of likes links to a list of people that liked it on a separate page (or on same page)
  [ ] - build the list of people who liked on a separate page, then
  [ ] - when there is a session, have a cookie for whether or not all the users who liked should be shown on the same page

COMMENTS

PRIVATE MESSAGES

Landing Page
  [ ] - Have a landing page with the most recent shower thoughts

Mentions
  [ ] - method for identifying @ and isolating the subsequent string
  [ ] - creates a new mention instance
  [ ] - checks the thought when created, edited, deleted when user deleted, and when mentioned user is deleted and reevaluates mentions
  [ ] - makes a link around the mention text sending to the mentioned user
  [ ] - can view mentions on a user's page

Hashtags

Search?

Sessions / Authentification
  [ ] - instead of 'create a new user' button, have sign out then signup or sign in

Authorization
  [ ] - instead of just limiting links user sees, limit access in controller the proper way

    follow
      ||
pm = user -< post
         \  /
         likes

