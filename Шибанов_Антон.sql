CREATE TABLE "Transactions" (
  "transaction_id" int PRIMARY KEY,
  "customer_id" int not NULL,
  "prod_id" int not NULL,
  "transaction_date" date not NULL,
  "online_order" bool,
  "order_status" varchar not NULL
);

CREATE TABLE "Products" (
  "prod_id" int PRIMARY KEY,
  "product_id" int not NULL,
  "brand" varchar not NULL,
  "product_line" varchar not NULL,
  "product_class" varchar not NULL,
  "product_size" varchar not NULL,
  "list_price" float not NULL,
  "standard_cost" float not NULL
);

CREATE TABLE "Customers" (
  "customer_id" int PRIMARY KEY,
  "first_name" varchar not NULL,
  "last_name" varchar,
  "gender" varchar,
  "DOB" date,
  "job_title" varchar,
  "job_industry_category" varchar,
  "wealth_segment" varchar not NULL,
  "deceased_indicator" varchar,
  "owns_car" varchar,
  "house" int not NULL,
  "street" varchar not NULL,
  "postcode" int not NULL,
  "state" varchar,
  "country" varchar,
  "property_valuation" int
);

ALTER TABLE "Transactions" ADD FOREIGN KEY ("customer_id") REFERENCES "Customers" ("customer_id");

ALTER TABLE "Transactions" ADD FOREIGN KEY ("prod_id") REFERENCES "Products" ("prod_id");

