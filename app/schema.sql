# Sql commands
DROP TABLE IF EXISTS booze;
DROP TABLE IF EXISTS boozeless;
DROP TABLE IF EXISTS drink_other;
DROP TABLE IF EXISTS drink_other_cats;

CREATE TABLE booze (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT UNIQUE NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE boozeless (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT UNIQUE NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE drink_other_cats (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT UNIQUE NOT NULL,
  priority INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE drink_other (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT UNIQUE NOT NULL,
  cat_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(cat_id) REFERENCES drink_other_cats(id)
);

INSERT INTO booze (name) VALUES
  ('Absinthe'),
  ('Absolut Vodka'),
  ('Absolut citron'),
  ('Aftershock'),
  ('Amaretto'),
  ('Amaro Montenegro'),
  ('Apple Brandy'),
  ('Apple Schnapps'),
  ('Applejack'),
  ('Apricot Brandy'),
  ('Añejo Rum'),
  ('Bacardi'),
  ('Baileys Irish Cream'),
  ('Beer'),
  ('Black Rum'),
  ('Black Sambuca'),
  ('Blackberry Brandy'),
  ('Blackcurrant Schnapps'),
  ('Blackstrap rum'),
  ('Blended Scotch'),
  ('Blended Whiskey'),
  ('Blue Curacao'),
  ('Blueberry Schnapps'),
  ('Bourbon'),
  ('Brandy'),
  ('Campari'),
  ('Canadian Whisky'),
  ('Chambord Raspberry Liqueur'),
  ('Champagne'),
  ('Cherry Brandy'),
  ('Cherry Heering'),
  ('Cherry Liqueur'),
  ('Chocolate Liqueur'),
  ('Cider'),
  ('Cinnamon Schnapps'),
  ('Citrus Vodka'),
  ('Coconut Liqueur'),
  ('Coconut Rum'),
  ('Coffee Liqueur'),
  ('Cognac'),
  ('Cointreau'),
  ('Creme De Cassis'),
  ('Crown Royal'),
  ('Dark Rum'),
  ('Drambuie'),
  ('Dry Vermouth'),
  ('Everclear'),
  ('Firewater'),
  ('Frangelico'),
  ('Gin'),
  ('Gold Tequila'),
  ('Goldschlager'),
  ('Grand Marnier'),
  ('Grenadine'),
  ('Guinness'),
  ('Hazelnut liqueur'),
  ('Hot Damn'),
  ('Irish Whiskey'),
  ('Jack Daniels'),
  ('Jagermeister'),
  ('Jim Beam'),
  ('Johnnie Walker'),
  ('Kahlua'),
  ('Lager'),
  ('Light Rum'),
  ('Madeira'),
  ('Malibu Rum'),
  ('Martini Rosso'),
  ('Mezcal'),
  ('Midori'),
  ('Ouzo'),
  ('Peach Schnapps'),
  ('Peppermint Schnapps'),
  ('Pernod'),
  ('Port'),
  ('Prosecco'),
  ('Red Wine'),
  ('Ruby Port'),
  ('Rum'),
  ('Rye Whiskey'),
  ('Sambuca'),
  ('Sarsaparilla'),
  ('Schnapps'),
  ('Scotch'),
  ('Sherry'),
  ('Sloe Gin'),
  ('Southern Comfort'),
  ('Spiced Rum'),
  ('Sweet Vermouth'),
  ('Tequila'),
  ('Triple Sec'),
  ('Vermouth'),
  ('Vodka'),
  ('Whiskey'),
  ('Whisky'),
  ('Wine');

INSERT INTO boozeless (name) VALUES
  ('Vanilla Extract (Whiskey)'),
  ('Pineapple Juice (Rum)'),
  ('White Grape Juice (Vodka)'),
  ('Apricot Juice (Cognac)'),
  ('Apple Juice (Vermouth)'),
  ('Almond Extract (Amaretto)');

INSERT INTO drink_other_cats (name, priority) VALUES
  ('soda/juice', 1),
  ('dairy', 2),
  ('fruit', 3),
  ('bitters', 4),
  ('syrup', 5),
  ('spice', 6),
  ('extra', 7);

INSERT INTO drink_other (name, cat_id) VALUES
  ('7-up', (select id from drink_other_cats where name = 'soda/juice')),
  ('Agave Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Allspice', (select id from drink_other_cats where name = 'spice')),
  ('Almond Flavoring', (select id from drink_other_cats where name = 'extra')),
  ('Almond', (select id from drink_other_cats where name = 'extra')),
  ('Angelica Root', (select id from drink_other_cats where name = 'spice')),
  ('Angostura Bitters', (select id from drink_other_cats where name = 'bitters')),
  ('Anis', (select id from drink_other_cats where name = 'spice')),
  ('Anise', (select id from drink_other_cats where name = 'spice')),
  ('Apple Cider', (select id from drink_other_cats where name = 'soda/juice')),
  ('Apple Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Apple', (select id from drink_other_cats where name = 'fruit')),
  ('Apricot Nectar', (select id from drink_other_cats where name = 'soda/juice')),
  ('Apricot', (select id from drink_other_cats where name = 'fruit')),
  ('Banana', (select id from drink_other_cats where name = 'fruit')),
  ('Basil', (select id from drink_other_cats where name = 'spice')),
  ('Berries', (select id from drink_other_cats where name = 'fruit')),
  ('Bitter Lemon', (select id from drink_other_cats where name = 'bitters')),
  ('Bitters', (select id from drink_other_cats where name = 'bitters')),
  ('Black Pepper', (select id from drink_other_cats where name = 'spice')),
  ('Blackberries', (select id from drink_other_cats where name = 'fruit')),
  ('Blackcurrant Squash', (select id from drink_other_cats where name = 'extra')),
  ('Blood Orange', (select id from drink_other_cats where name = 'fruit')),
  ('Blueberries', (select id from drink_other_cats where name = 'fruit')),
  ('Brown Sugar', (select id from drink_other_cats where name = 'extra')),
  ('Butter', (select id from drink_other_cats where name = 'extra')),
  ('Candy', (select id from drink_other_cats where name = 'extra')),
  ('Cantaloupe', (select id from drink_other_cats where name = 'fruit')),
  ('Caramel Coloring', (select id from drink_other_cats where name = 'extra')),
  ('Caramel Sauce', (select id from drink_other_cats where name = 'extra')),
  ('Carbonated Soft Drink', (select id from drink_other_cats where name = 'soda/juice')),
  ('Carbonated Water', (select id from drink_other_cats where name = 'soda/juice')),
  ('Cardamom', (select id from drink_other_cats where name = 'spice')),
  ('Carrot', (select id from drink_other_cats where name = 'extra')),
  ('Cayenne Pepper', (select id from drink_other_cats where name = 'spice')),
  ('Celery Salt', (select id from drink_other_cats where name = 'spice')),
  ('Cherries', (select id from drink_other_cats where name = 'fruit')),
  ('Cherry Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Cherry', (select id from drink_other_cats where name = 'fruit')),
  ('Chocolate Ice-cream', (select id from drink_other_cats where name = 'dairy')),
  ('Chocolate Milk', (select id from drink_other_cats where name = 'dairy')),
  ('Chocolate Sauce', (select id from drink_other_cats where name = 'extra')),
  ('Chocolate Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Chocolate', (select id from drink_other_cats where name = 'extra')),
  ('Cinnamon', (select id from drink_other_cats where name = 'spice')),
  ('Cloves', (select id from drink_other_cats where name = 'spice')),
  ('Club Soda', (select id from drink_other_cats where name = 'soda/juice')),
  ('Coca-cola', (select id from drink_other_cats where name = 'soda/juice')),
  ('Cocoa Powder', (select id from drink_other_cats where name = 'extra')),
  ('Coconut Milk', (select id from drink_other_cats where name = 'dairy')),
  ('Coconut Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Coffee', (select id from drink_other_cats where name = 'extra')),
  ('Condensed Milk', (select id from drink_other_cats where name = 'dairy')),
  ('Coriander', (select id from drink_other_cats where name = 'spice')),
  ('Corn Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Cornstarch', (select id from drink_other_cats where name = 'extra')),
  ('Cranberries', (select id from drink_other_cats where name = 'fruit')),
  ('Cranberry Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Cream Of Coconut', (select id from drink_other_cats where name = 'extra')),
  ('Cream', (select id from drink_other_cats where name = 'dairy')),
  ('Cucumber', (select id from drink_other_cats where name = 'extra')),
  ('Cumin Seed', (select id from drink_other_cats where name = 'spice')),
  ('Daiquiri Mix', (select id from drink_other_cats where name = 'soda/juice')),
  ('Demerara Sugar', (select id from drink_other_cats where name = 'extra')),
  ('Dr. Pepper', (select id from drink_other_cats where name = 'soda/juice')),
  ('Egg White', (select id from drink_other_cats where name = 'extra')),
  ('Egg Yolk', (select id from drink_other_cats where name = 'extra')),
  ('Egg', (select id from drink_other_cats where name = 'extra')),
  ('Espresso', (select id from drink_other_cats where name = 'extra')),
  ('Fennel Seeds', (select id from drink_other_cats where name = 'spice')),
  ('Figs', (select id from drink_other_cats where name = 'fruit')),
  ('Food Coloring', (select id from drink_other_cats where name = 'extra')),
  ('Fresca', (select id from drink_other_cats where name = 'soda/juice')),
  ('Fresh Lemon Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Fresh Lime Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Fruit Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Fruit Punch', (select id from drink_other_cats where name = 'soda/juice')),
  ('Fruit', (select id from drink_other_cats where name = 'fruit')),
  ('Ginger Ale', (select id from drink_other_cats where name = 'soda/juice')),
  ('Ginger Beer', (select id from drink_other_cats where name = 'soda/juice')),
  ('Ginger Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Ginger', (select id from drink_other_cats where name = 'spice')),
  ('Glycerine', (select id from drink_other_cats where name = 'extra')),
  ('Grape Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Grape Soda', (select id from drink_other_cats where name = 'soda/juice')),
  ('Grapefruit Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Grapes', (select id from drink_other_cats where name = 'fruit')),
  ('Guava Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Half-and-half', (select id from drink_other_cats where name = 'dairy')),
  ('Heavy Cream', (select id from drink_other_cats where name = 'dairy')),
  ('Honey Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Honey', (select id from drink_other_cats where name = 'extra')),
  ('Hot Chocolate', (select id from drink_other_cats where name = 'extra')),
  ('Hot Sauce', (select id from drink_other_cats where name = 'extra')),
  ('Ice', (select id from drink_other_cats where name = 'extra')),
  ('Iced Tea', (select id from drink_other_cats where name = 'extra')),
  ('Irish Cream', (select id from drink_other_cats where name = 'dairy')),
  ('Jello', (select id from drink_other_cats where name = 'extra')),
  ('Kiwi', (select id from drink_other_cats where name = 'fruit')),
  ('Kool-aid', (select id from drink_other_cats where name = 'soda/juice')),
  ('Lavender', (select id from drink_other_cats where name = 'spice')),
  ('Lemon Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Lemon Peel', (select id from drink_other_cats where name = 'fruit')),
  ('Lemon', (select id from drink_other_cats where name = 'fruit')),
  ('Lemon-lime Soda', (select id from drink_other_cats where name = 'soda/juice')),
  ('Lemonade', (select id from drink_other_cats where name = 'soda/juice')),
  ('Licorice Root', (select id from drink_other_cats where name = 'spice')),
  ('Light Cream', (select id from drink_other_cats where name = 'dairy')),
  ('Lime Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Lime Peel', (select id from drink_other_cats where name = 'fruit')),
  ('Lime', (select id from drink_other_cats where name = 'fruit')),
  ('Limeade', (select id from drink_other_cats where name = 'soda/juice')),
  ('Mango', (select id from drink_other_cats where name = 'fruit')),
  ('Maple Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Maraschino Cherry', (select id from drink_other_cats where name = 'fruit')),
  ('Marjoram Leaves', (select id from drink_other_cats where name = 'spice')),
  ('Marshmallows', (select id from drink_other_cats where name = 'extra')),
  ('Milk', (select id from drink_other_cats where name = 'dairy')),
  ('Mini-snickers Bars', (select id from drink_other_cats where name = 'extra')),
  ('Mint Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Mint', (select id from drink_other_cats where name = 'spice')),
  ('Mountain Dew', (select id from drink_other_cats where name = 'soda/juice')),
  ('Nutmeg', (select id from drink_other_cats where name = 'spice')),
  ('Olive Brine', (select id from drink_other_cats where name = 'extra')),
  ('Olive', (select id from drink_other_cats where name = 'extra')),
  ('Orange Bitters', (select id from drink_other_cats where name = 'bitters')),
  ('Orange Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Orange Peel', (select id from drink_other_cats where name = 'fruit')),
  ('Orange Spiral', (select id from drink_other_cats where name = 'fruit')),
  ('Orange', (select id from drink_other_cats where name = 'fruit')),
  ('Oreo Cookie', (select id from drink_other_cats where name = 'extra')),
  ('Orgeat Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Papaya', (select id from drink_other_cats where name = 'fruit')),
  ('Passion Fruit Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Passion Fruit Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Peach Bitters', (select id from drink_other_cats where name = 'bitters')),
  ('Peach Nectar', (select id from drink_other_cats where name = 'soda/juice')),
  ('Pepper', (select id from drink_other_cats where name = 'spice')),
  ('Peppermint Extract', (select id from drink_other_cats where name = 'extra')),
  ('Pepsi Cola', (select id from drink_other_cats where name = 'soda/juice')),
  ('Peychaud Bitters', (select id from drink_other_cats where name = 'bitters')),
  ('Pina Colada Mix', (select id from drink_other_cats where name = 'soda/juice')),
  ('Pineapple Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Pineapple Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Pineapple', (select id from drink_other_cats where name = 'fruit')),
  ('Pink Lemonade', (select id from drink_other_cats where name = 'soda/juice')),
  ('Pomegranate Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Powdered Sugar', (select id from drink_other_cats where name = 'extra')),
  ('Raisins', (select id from drink_other_cats where name = 'fruit')),
  ('Raspberry Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Red Chili Flakes', (select id from drink_other_cats where name = 'spice')),
  ('Root Beer', (select id from drink_other_cats where name = 'soda/juice')),
  ('Rosemary Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Rosemary', (select id from drink_other_cats where name = 'spice')),
  ('Salt', (select id from drink_other_cats where name = 'spice')),
  ('Salted Chocolate', (select id from drink_other_cats where name = 'extra')),
  ('Sarsaparilla', (select id from drink_other_cats where name = 'soda/juice')),
  ('Sherbet', (select id from drink_other_cats where name = 'extra')),
  ('Sirup Of Roses', (select id from drink_other_cats where name = 'extra')),
  ('Soda Water', (select id from drink_other_cats where name = 'soda/juice')),
  ('Sour Mix', (select id from drink_other_cats where name = 'soda/juice')),
  ('Soy Sauce', (select id from drink_other_cats where name = 'extra')),
  ('Sprite', (select id from drink_other_cats where name = 'soda/juice')),
  ('Strawberries', (select id from drink_other_cats where name = 'fruit')),
  ('Sugar Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Sugar', (select id from drink_other_cats where name = 'extra')),
  ('Sweet And Sour', (select id from drink_other_cats where name = 'extra')),
  ('Tabasco Sauce', (select id from drink_other_cats where name = 'extra')),
  ('Tea', (select id from drink_other_cats where name = 'extra')),
  ('Thyme', (select id from drink_other_cats where name = 'spice')),
  ('Tomato Juice', (select id from drink_other_cats where name = 'soda/juice')),
  ('Tonic Water', (select id from drink_other_cats where name = 'soda/juice')),
  ('Tropicana', (select id from drink_other_cats where name = 'soda/juice')),
  ('Vanilla Extract', (select id from drink_other_cats where name = 'extra')),
  ('Vanilla Ice-cream', (select id from drink_other_cats where name = 'dairy')),
  ('Vanilla Syrup', (select id from drink_other_cats where name = 'syrup')),
  ('Vanilla', (select id from drink_other_cats where name = 'extra')),
  ('Water', (select id from drink_other_cats where name = 'extra')),
  ('Watermelon', (select id from drink_other_cats where name = 'fruit')),
  ('Whipped Cream', (select id from drink_other_cats where name = 'dairy')),
  ('Whipping Cream', (select id from drink_other_cats where name = 'dairy')),
  ('Worcestershire Sauce', (select id from drink_other_cats where name = 'extra')),
  ('Wormwood', (select id from drink_other_cats where name = 'spice')),
  ('Yoghurt', (select id from drink_other_cats where name = 'dairy')),
  ('Zima', (select id from drink_other_cats where name = 'soda/juice'));
