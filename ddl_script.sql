CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    password BYTEA NOT NULL,
    bio TEXT,
    avatar BYTEA
);

CREATE TABLE ingredients (
    ingredient_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE measures (
    measure_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    directions TEXT,
    user_id INT REFERENCES users (user_id)

);

CREATE TABLE recipe_ingredients (
    recipe_ingredent_id SERIAL PRIMARY KEY,
    is_optional BOOLEAN NOT NULL DEFAULT false,
    quantity INT,
    recipe_id INT REFERENCES recipes (recipe_id),
    measure_id INT REFERENCES measures (measure_id),
    ingredient_id INT REFERENCES ingredients (ingredient_id)
);

CREATE TABLE recipe_images (
    recipe_image_id SERIAL PRIMARY KEY,
    image BYTEA NOT NULL,
    recipe_id INT REFERENCES recipes (recipe_id)
);

CREATE TABLE recipe_categories (
    recipe_category_id SERIAL PRIMARY KEY,
    recipe_id INT REFERENCES recipes (recipe_id),
    category_id INT REFERENCES categories (category_id)
);

CREATE TABLE comments (
    comment_id SERIAL PRIMARY KEY,
    text TEXT NOT NULL,
    recipe_id INT REFERENCES recipes (recipe_id),
    user_id INT REFERENCES users (user_id)
);

CREATE TABLE favorites (
    favorite_id SERIAL PRIMARY KEY,
    recipe_id INT REFERENCES recipes (recipe_id),
    user_id INT REFERENCES users (user_id)
);

CREATE INDEX recipe_ingredients_recipe_idx ON recipe_ingredients (recipe_id);
CREATE INDEX recipe_ingredients_ingredients_idx ON recipe_ingredients (ingredient_id);
CREATE INDEX recipe_images_idx ON recipe_images (recipe_id);
CREATE INDEX recipe_categories_recipe_idx ON recipe_categories (recipe_id);
CREATE INDEX recipe_categories_category_idx ON recipe_categories (category_id);
CREATE INDEX comments_recipe_idx ON comments (recipe_id);
CREATE INDEX comments_user_idx ON comments (user_id);
CREATE INDEX favorites_user_idx ON favorites (user_id);

