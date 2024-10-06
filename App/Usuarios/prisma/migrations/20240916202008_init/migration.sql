-- Crear la tabla Users
CREATE TABLE "Users" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL
);

-- Crear la tabla Persons
CREATE TABLE "Persons" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "lastName" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    "weight" REAL NOT NULL,
    "height" REAL NOT NULL,
    "userID" INTEGER NOT NULL,
    CONSTRAINT "Persons_userID_fkey" FOREIGN KEY ("userID") REFERENCES "Users" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Crear índice único en el campo email de Users
CREATE UNIQUE INDEX "Users_email_key" ON "Users"("email");
