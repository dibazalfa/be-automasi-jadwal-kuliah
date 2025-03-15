-- CreateTable
CREATE TABLE "admin" (
    "id_admin" TEXT NOT NULL,
    "username" VARCHAR(255) NOT NULL,
    "password" VARCHAR(255) NOT NULL,

    CONSTRAINT "admin_pkey" PRIMARY KEY ("id_admin")
);
