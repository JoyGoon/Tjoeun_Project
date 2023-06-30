
CREATE TABLE "SAWONGYEOLJAE" (
    "IDX" NUMBER(*,0) NOT NULL, 
    "SUBJECT" VARCHAR2(30 BYTE) NOT NULL, 
    "CONTENT" VARCHAR2(3000 BYTE) NOT NULL, 
    "WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
    CONSTRAINT "SAWONGYEOLJAE_PK" PRIMARY KEY ("IDX")
);


delete from sawongyeoljae;
drop sequence sawongyeoljae_idx_seq;
create sequence sawongyeoljae_idx_seq;


select * from sawongyeoljae order by idx desc;


insert into sawongyeoljae (idx, subject, content) 
values (sawongyeoljae_idx_seq.nextval, subject, content);

COMMIT;