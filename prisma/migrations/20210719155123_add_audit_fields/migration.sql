/*
  Warnings:

  - Added the required column `created_by` to the `Card` table without a default value. This is not possible if the table is not empty.
  - Made the column `customer_id` on table `Card` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `created_by` to the `Customer` table without a default value. This is not possible if the table is not empty.
  - Made the column `program_id` on table `Customer` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `created_by` to the `Payment` table without a default value. This is not possible if the table is not empty.
  - Made the column `customer_id` on table `Payment` required. This step will fail if there are existing NULL values in that column.
  - Added the required column `created_by` to the `Program` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Card" ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "created_by" VARCHAR(255) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMPTZ,
ADD COLUMN     "updated_by" VARCHAR(255),
ALTER COLUMN "customer_id" SET NOT NULL;

-- AlterTable
ALTER TABLE "Customer" ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "created_by" VARCHAR(255) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMPTZ,
ADD COLUMN     "updated_by" VARCHAR(255),
ALTER COLUMN "program_id" SET NOT NULL;

-- AlterTable
ALTER TABLE "Payment" ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "created_by" VARCHAR(255) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMPTZ,
ADD COLUMN     "updated_by" VARCHAR(255),
ALTER COLUMN "customer_id" SET NOT NULL;

-- AlterTable
ALTER TABLE "Program" ADD COLUMN     "created_at" TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "created_by" VARCHAR(255) NOT NULL,
ADD COLUMN     "updated_at" TIMESTAMPTZ,
ADD COLUMN     "updated_by" VARCHAR(255);
