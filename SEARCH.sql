--SELECT GIANGVIEN.MSGV,HOTENGV,GIANGVIEN.MAKHOA,TENKHOA,GIOITINHGV,NGAYSINHGV,CHUCVU,PASSWORDGV,ENABLEGV FROM GIANGVIEN INNER JOIN GVACCOUNTS ON GIANGVIEN.MSGV = GVACCOUNTS.MSGV INNER JOIN KHOA ON KHOA.MAKHOA = GIANGVIEN.MAKHOA where KHOA.MAKHOA LIKE '%CNTT%' and HOTENGV like '%YEN%' 


--ALTER TABLE SINHVIEN ADD MAKHOA VARCHAR(10);
--ALTER TABLE SINHVIEN ADD CONSTRAINT fk_SV_KHOA FOREIGN KEY (MAKHOA) REFERENCES KHOA(MAKHOA);




INSERT INTO SINHVIEN VALUES ('21004064','1CTT21A1','TEN',1,'2003-08-14','CNTT'); INSERT INTO SVACCOUNTS VALUES ('21004064','21004064','PASS',1)
SELECT * FROM SINHVIEN;
UPDATE SINHVIEN SET MALOP = '1CTT21A1', HOTENSV = 'HOTEN', GIOITINHSV = 0, NGAYSINHSV = '2003-08-14', MAKHOA = 'CNOT' WHERE MSSV = '21004064'; UPDATE SVACCOUNTS SET PASSWORDSV = '', ENABLESV = 1 WHERE UIDSV = ''

SELECT SINHVIEN.MSSV,HOTENSV,SINHVIEN.MALOP,LOP.MAKHOA,GIOITINHSV,NGAYSINHSV,PASSWORDSV,ENABLESV FROM SINHVIEN INNER JOIN SVACCOUNTS ON SINHVIEN.MSSV = SVACCOUNTS.MSSV INNER JOIN LOP ON LOP.MALOP = SINHVIEN.MALOP where SINHVIEN.MSSV LIKE '%%' and HOTENSV like '%huy%' and LOP.MALOP like '%%' and LOP.MAKHOA like '%%' ORDER BY MSSV ASC  

select MALOP,LOP.MAKHOA,KHOA.TENKHOA from LOP,KHOA where LOP.MAKHOA = KHOA.MAKHOA

select MAKHOA,TENKHOA from KHOA where MAKHOA = 'CNTT'



select SINHVIEN.MSSV,HOTENSV,SINHVIEN.MALOP,KHOA.TENKHOA,LOP.MAKHOA,GIOITINHSV,NGAYSINHSV,PASSWORDSV,ENABLESV FROM SINHVIEN INNER JOIN SVACCOUNTS ON SINHVIEN.MSSV = SVACCOUNTS.MSSV INNER JOIN LOP ON LOP.MALOP = SINHVIEN.MALOP INNER JOIN KHOA ON LOP.MALOP = SINHVIEN.MALOP ORDER BY MSSV ASC

 