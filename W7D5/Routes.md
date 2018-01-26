# GoodGames Routes

---
# Bluebird Routes

## Frontend Routes
+ `/login`
+ `/signup`
+ `/index` - view top games, search, home page
+ `/users/:userId` - user profiles
+ `/index/game/:gameId` - view a single game
+ `/collections/:userId` - show a user's collections

---

## API Endpoints

### `users`
+ `GET /api/users` - returns the user information for the User Search feature
+ `POST /api/users` - sign up

### `games`
+ `GET /api/games` - returns relevant games (filtered by `data`/`params`)
+ `GET /api/games/:id` - returns game

### `review`
+ `GET /api/games/:game_id/reviews` - returns reviews for a game
+ `POST /api/games/:game_id/reviews` - creates a review for a specific game
+ `PATCH /api/reviews/:id` - edit a review
+ `DELETE /api/reviews/:id` - remove a review

### `collections`
+ `GET /api/collections/:id` - returns a single collection
+ `GET /api/collections` - returns a user's collections
+ `POST /api/collections` - create a collection
+ `DELETE /api/collections/:id` - delete a collection

### `collectings`
+ `POST /api/collectings` - add a game to a collection
+ `DELETE /api/collectings/:id` - remove a game from a collection


### `search`
+  `GET /api/search?:query_string`
