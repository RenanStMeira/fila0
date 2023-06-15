/*
  Warnings:

  - Added the required column `cid` to the `pacientes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cidade` to the `pacientes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `data_nasc` to the `pacientes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nome` to the `pacientes` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updateAt` to the `pacientes` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "pacientes" ADD COLUMN     "cid" TEXT NOT NULL,
ADD COLUMN     "cidade" TEXT NOT NULL,
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "data_nasc" TEXT NOT NULL,
ADD COLUMN     "fileId" TEXT,
ADD COLUMN     "nome" TEXT NOT NULL,
ADD COLUMN     "updateAt" TIMESTAMP(3) NOT NULL;
