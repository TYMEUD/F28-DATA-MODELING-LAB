CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  email VARCHAR(30),
  password VARCHAR(30)
  );
  
CREATE TABLE recipes (
  recipe_id SERIAL PRIMARY KEY,
  user_id  INTEGER REFERENCES users(user_id),
  ingredients TEXT,
  instructions TEXT
  );

  CREATE TABLE lists (
  list_id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(user_id),
  ingredients  TEXT REFERENCES recipes(ingredients),
	groceries TEXT
  );
  
CREATE TABLE share (
  user_id INTEGER REFERENCES users(user_id),
  ingredients  INTEGER REFERENCES recipes(recipe_id),
  groceries  INTEGER REFERENCES lists(list_id),
  public BOOLEAN,
  private BOOLEAN
  );