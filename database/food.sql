CREATE TABLE brands (
  brand_id int(10) AUTO_INCREMENT,
  brand_title varchar(100),
primary key (brand_id)
);

CREATE TABLE categories (
  cat_id int(100)  AUTO_INCREMENT,
  cat_title varchar (100),
primary key (cat_id)
) ;

CREATE TABLE user_info (
  user_id int(100)  AUTO_INCREMENT,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  password varchar(250),
  mobile varchar(11),
  address1 varchar(100),
  address2 varchar(100),
primary key (user_id)
) ;

CREATE TABLE products (
  product_id int(100) AUTO_INCREMENT,
  cat_id int(100),
  brand_id int(10),
  product_title varchar(255),
  product_price numeric(10, 2),
  product_desc varchar(300),
  product_image varchar(100),
  product_keywords varchar(100),
primary key (product_id, product_title, product_price, product_image),
  foreign key (cat_id) references categories(cat_id),
  foreign key (brand_id) references brands(brand_id)
  on delete set null
) ;

CREATE TABLE cart (
  id int(100)  AUTO_INCREMENT ,
  product_id int(100),
  ip_add varchar(250),
  user_id int(100),
  product_title varchar(255),
  product_image varchar(100), 
  qty numeric(50, 0),
  product_price numeric(10, 2),
  total_amt numeric(10, 2),
primary key (id),
  foreign key (product_id, product_title,product_price, product_image) 
  references products(product_id,product_title,product_price, product_image)
  on delete cascade,
  foreign key (user_id) references user_info(user_id)
  on delete set null
) ;

CREATE TABLE admin_info (
  admin_id int(100)  AUTO_INCREMENT,
  admin_user varchar(100),
  email varchar(100),
  password varchar(250),
primary key (admin_id)
) ;

  insert into brands ( brand_id, brand_title )
values (1, 'Burger King');
 insert into brands ( brand_id, brand_title )
values (2, 'Baba Rafi');
 insert into brands ( brand_id, brand_title )
values (3, 'Pizza Hut');
  insert into brands ( brand_id, brand_title )
values(4, 'Food Panda');
 insert into brands ( brand_id, brand_title )
values (5, 'McDonalds');
  insert into brands ( brand_id, brand_title )
values(6, 'Shawarma House');

  insert into categories ( cat_id, cat_title)
values (1, 'Burger');
 insert into categories ( cat_id, cat_title)
values(2, 'Shawarma');
 insert into categories ( cat_id, cat_title)
values(3, 'Pizza');
 insert into categories ( cat_id, cat_title)
values(4, 'Cake');
 insert into categories ( cat_id, cat_title)
values(5, 'Pasta');
 insert into categories ( cat_id, cat_title)
values(6, 'Set Menu');


insert into admin_info ( admin_id, admin_user, email, password)
values (1, 'admin', 'admin@gmal.com', '1234567890');

insert into user_info ( user_id, first_name, last_name, email, password, mobile, address1, address2)
values (1, 'demo', 'demo', 'demo@gmal.com', '1234567890', '123456789', 'Dhaka', 'VIP Road');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values (1, 1, 2, 'Beaf Burger', 60, 'Beaf Burger', 'beafburger.jpg', 'Burger');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(2, 1, 3, 'Chicken Patty Burger', 40, 'Chicken Patty Burger', 'chickenpatty.jpg', 'Burger');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(3, 1, 3, 'Chicken Burger', 60, 'Chicken Burger', 'ChickenBurger.jpg', 'Burger');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(4, 1, 3, 'Crispy Veg Burger', 60, 'Crispy Veg Burger', 'crispyveg.png', 'Burger');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(5, 1, 2, 'Ham Burger', 70, 'HamBurger', 'hambrgr.png', 'Burger');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(6, 1, 1, 'Mexican Burger', 60, 'Mexican Burger', 'MexicanBurger.jpg', 'Burger');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(7, 1, 1, 'Veggie Burgers', 60, 'Veggie Burgers', 'veggie-burgers.jpg', 'Burgers');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(8, 1, 4, 'Ultimate-Burger-Meal', 150, 'Ultimate-Burger-Meal', 'Ultimate-Burger-Meal.png', 'Burger Meal');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(9, 1, 3, 'Paneer King Melt Burger', 90, 'Paneer King Melt Burger', 'paneerkingmelt.jpg', 'Burger');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values (10, 2, 6, 'Beef Shawarma', 150, 'Beef Shawarma', 'Beef Shawarma.jpg', 'Shawarma');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(11, 2, 6, 'Chicken Cheese Shawarma', 200, 'Chicken Cheese Shawarma', 'Chicken Cheese Shawarma.jpg', 'Shawarma');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(12, 2, 6, 'Chicken Shawarma', 180, 'Chicken Shawarma', 'Chicken Shawarma.jpg', 'Shawarma');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(13, 2, 6, 'Chicken Warp Shawarma', 200, 'Chicken Warp Shawarma', 'Chicken Warp Shawarma.jpg', 'Shawarma');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values (14, 2, 6, 'Grilled Chicken Shawarma', 250, 'Grilled Chicken Shawarma', 'Grilled Chicken Shawarma.jpg', 'Shawarma');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(15, 3, 6, 'Cheese&Onion Pizza', 600, 'Cheese&Onion Pizza', 'Cheese&Onion Pizza.jpg', 'Pizza');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(16, 3, 6, 'Chicken Tikka Pizza', 650, 'Chicken Tikka Pizza', '2Chicken Tikka Pizza.jpg', 'Pizza');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(17, 3, 6, 'Grilled Cheese Pizza', 600, 'Grilled Cheese Pizza', 'Grilled Cheese Pizza.JPG', 'Pizza');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(19, 3, 6, 'Gyros Pizza', 600, 'Gyros Pizza', 'Gyros Pizza.jpg', 'Pizza');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(20, 3, 6, 'Kebab Pizza', 600, 'Kebab Pizza', 'Kebab Pizza.jpg', 'Pizza');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(21, 3, 6, 'Mexican Pizza', 800, 'Mexican Pizza', 'Mexican pizza.jpg', 'Pizza');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(22, 3, 6, 'Spanish Tapas Pizza', 500, 'Spanish Tapas Pizza', 'Spanish Tapas Pizza.jpg', 'Pizza');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(23, 4, 6, 'Black Forest Cake', 70, 'Black Forest Cake', 'BlackForest.jpg', 'Cake');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values (24, 4, 6, 'Buttercream Strawberry Cake', 80, 'Buttercream Strawberry Cake', 'buttercreamstrawberrycake.jpg', 'Cake');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(25, 4, 6, 'Caramel Chocolate Banana', 70, 'Caramel Chocolate Banana', 'Caramel_chocolate_banana.jpg', 'Cake');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(26, 4, 6, 'Dark Chocolate Cake', 65, 'Dark Chocolate Cake', 'darkchocolate.jpg', 'Cake');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(27, 4, 6, 'Molten Lava Cake', 60, 'Molten Lava Cake', 'moltenlava.jpg', 'Cake');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(32, 5, 6, 'Italian Beef Lasagne', 250, 'Italian Beef Lasagne', 'italianbeeflasagne.jpg', 'Pasta');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(33, 5, 2, 'Macaroni Cheese', 350, 'Macaroni Cheese', 'macaroni-cheese.jpeg', 'Pasta');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(34, 5, 4, 'Pasta Aglio Olio', 300, 'Pasta Aglio Olio', 'pasta-aglio-olio.jpg', 'Pasta');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(35, 5, 6, 'Pasta Fresca', 300, 'Pasta Fresca', 'PastaFresca.png', 'Pasta');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(36, 5, 5, 'Pizza Pasta', 250, 'Pizza Pasta', 'pizzapasta.jpeg', 'Pasta');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values(37, 6, 5, 'Set Menu 1', 120, 'Set Menu 1', 'setmenu1.jpg', 'Set Menu');

insert into products ( product_id, cat_id, brand_id, product_title, product_price, product_desc, product_image, product_keywords )
values (38, 6, 4, 'Set Menu 2', 150, 'Set Menu 2', 'setmenu2.jpg', 'Set Menu');
