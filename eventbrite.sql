CREATE TABLE "User" (
  "id_user" INTEGER PRIMARY KEY,
  "email" STRING NOT NULL,
  "encrypted_password" STRING NOT NULL,
  "description" TEXT,
  "first_name" STRING,
  "last_name" STRING
);

CREATE TABLE "Event" (
  "id_event" INTEGER PRIMARY KEY,
  "start_date" DATETIME NOT NULL,
  "duration" INTEGER NOT NULL,
  "title" STRING NOT NULL,
  "description" TEXT NOT NULL,
  "price" INTEGER NOT NULL,
  "location" STRING NOT NULL,
  "id_admin" INTEGER
);

CREATE TABLE "Participation" (
  "id_participation" INTEGER PRIMARY KEY,
  "stripe_customer_id" STRING,
  "id_user" INTEGER,
  "id_event" INTEGER
);

ALTER TABLE "Participation" ADD FOREIGN KEY ("id_user") REFERENCES "User" ("id_user");

ALTER TABLE "Participation" ADD FOREIGN KEY ("id_event") REFERENCES "Event" ("id_event");

ALTER TABLE "Event" ADD FOREIGN KEY ("id_admin") REFERENCES "User" ("id_user");
