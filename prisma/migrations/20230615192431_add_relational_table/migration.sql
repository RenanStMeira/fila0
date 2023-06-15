/*
  Warnings:

  - You are about to drop the column `updateAt` on the `pacientes` table. All the data in the column will be lost.
  - Added the required column `updatedAt` to the `pacientes` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "pacientes" DROP COLUMN "updateAt",
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "exames_de_imagens" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "cid" TEXT NOT NULL,
    "data_pedido" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "pacienteId" TEXT NOT NULL,

    CONSTRAINT "exames_de_imagens_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "laboratoriais" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "cid" TEXT NOT NULL,
    "data_pedido" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "pacienteId" TEXT NOT NULL,

    CONSTRAINT "laboratoriais_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "exames_de_imagens" ADD CONSTRAINT "exames_de_imagens_pacienteId_fkey" FOREIGN KEY ("pacienteId") REFERENCES "pacientes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "laboratoriais" ADD CONSTRAINT "laboratoriais_pacienteId_fkey" FOREIGN KEY ("pacienteId") REFERENCES "pacientes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
