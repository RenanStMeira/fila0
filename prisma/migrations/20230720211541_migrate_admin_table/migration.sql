-- CreateTable
CREATE TABLE "Amin" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "contact" TEXT NOT NULL,
    "adress" TEXT,

    CONSTRAINT "Amin_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Amin_email_key" ON "Amin"("email");
