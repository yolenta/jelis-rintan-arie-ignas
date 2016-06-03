--------------------------------------------------------
--  File created - Friday-June-03-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table AMBIL_MK
--------------------------------------------------------

  CREATE TABLE "HR"."AMBIL_MK" 
   (	"NIM" VARCHAR2(20 BYTE), 
	"KD_MK" VARCHAR2(10 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HR.AMBIL_MK
Insert into HR.AMBIL_MK (NIM,KD_MK) values ('145314101','M_TI_1');
Insert into HR.AMBIL_MK (NIM,KD_MK) values ('145314101','M_TI_2');
Insert into HR.AMBIL_MK (NIM,KD_MK) values ('145314101','M_TI_3');
Insert into HR.AMBIL_MK (NIM,KD_MK) values ('145314101','M_TI_4');
--------------------------------------------------------
--  DDL for Index SYS_C004189
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."SYS_C004189" ON "HR"."AMBIL_MK" ("NIM", "KD_MK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table AMBIL_MK
--------------------------------------------------------

  ALTER TABLE "HR"."AMBIL_MK" MODIFY ("NIM" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."AMBIL_MK" MODIFY ("KD_MK" NOT NULL ENABLE);
 
  ALTER TABLE "HR"."AMBIL_MK" ADD PRIMARY KEY ("NIM", "KD_MK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AMBIL_MK
--------------------------------------------------------

  ALTER TABLE "HR"."AMBIL_MK" ADD FOREIGN KEY ("NIM")
	  REFERENCES "HR"."MAHASISWA" ("NIM") ENABLE;
 
  ALTER TABLE "HR"."AMBIL_MK" ADD FOREIGN KEY ("KD_MK")
	  REFERENCES "HR"."MATA_KULIAH" ("KD_MK") ENABLE;
