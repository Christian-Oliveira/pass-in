-- AlterTable
ALTER TABLE "attendees" RENAME CONSTRAINT "new_attendees_pkey" TO "attendees_pkey",
ALTER COLUMN "created_at" SET DATA TYPE TIMESTAMP(3);

-- AlterTable
ALTER TABLE "check_ins" RENAME CONSTRAINT "new_check_ins_pkey" TO "check_ins_pkey",
ALTER COLUMN "created_at" SET DATA TYPE TIMESTAMP(3);

-- AddForeignKey
ALTER TABLE "check_ins" ADD CONSTRAINT "check_ins_attendee_id_fkey" FOREIGN KEY ("attendee_id") REFERENCES "attendees"("id") ON DELETE CASCADE ON UPDATE CASCADE;
