
INSERT INTO users (name, password, bio) VALUES('mati', '$2a$05$v9O0bzy.PvOfdQ2Y2HQqHuSp5gw89BJcwIqfUBSrjHp7Wq3BuX08q', 'opis');
INSERT INTO users (name, password, bio) VALUES('michal', '$2a$05$ezP2wic7qwUReTKwXQZAouls0Tf6eB4qY0VGkMn4fdYdEcYI3./rO', 'opis');

INSERT INTO ingredients (name) VALUES('Papryka czerwona');
INSERT INTO ingredients (name) VALUES('Chilli świeże');
INSERT INTO ingredients (name) VALUES('Papryka żółta');

INSERT INTO measures (name) VALUES('szt.');
INSERT INTO measures (name) VALUES('g');
INSERT INTO measures (name) VALUES('kg');

INSERT INTO categories (name) VALUES('Kuchnia włoska');
INSERT INTO categories (name) VALUES('Kuchnia węgierska');

INSERT INTO recipes (name, description, directions, user_id) VALUES ('Paprykarz', 'dobry paprykarz', 'ugnieść papryke widelcem; podawać z chlebkiem bożym', 1);

INSERT INTO recipe_ingredients (quantity, recipe_id, measure_id, ingredient_id) VALUES (1, 1, 1, 1);

INSERT INTO recipe_categories (recipe_id, category_id) VALUES (1, 1);

INSERT INTO comments (text, recipe_id, user_id) VALUES ('hujowe pzdr', 1, 1);

INSERT INTO favorites (recipe_id, user_id) VALUES (1, 1);
