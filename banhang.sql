create database banhang;

use BanHang;

Create table
    danhmuc (
        DanhmucID CHAR(10) PRIMARY KEY,
        TenDanhMuc VARCHAR(60) UNIQUE
    );

INSERT INTO
    danhmuc(DanhMucID, TenDanhMuc)
VALUES ('L1', 'Danh mục 1');

INSERT INTO
    danhmuc(DanhMucID, TenDanhMuc)
VALUES ('L2', 'Danh Mục 2');

INSERT INTO
    danhmuc(DanhMucID, TenDanhMuc)
VALUES ('L3', 'Danh mục 3');

INSERT INTO
    danhmuc(DanhMucID, TenDanhMuc)
VALUES ('L4', 'Danh mục 4');

DELIMITER //

CREATE PROCEDURE GETDANHMUCALL() BEGIN SELECT*FROM 
	SELECT*FROM select*from danhmuc;
	end;


DELIMITER;

call getdanhmucall();

-- USE banhang;

CREATE PROCEDURE DELETEDANHMUCBYID(IN IDDM CHAR(10)
) BEGIN DELETE 
	DELETE FROM `banhang`.`danhmuc` WHERE DanhMucID = idDM;
	end;


call deleteDanhMucbyid('L4');

-- Thêm danh mục

CREATE PROCEDURE INSECTDANHMUC(IN DMID CHAR(10), IN 
TENDM VARCHAR(60)) BEGIN INSERT 
	INSERT INTO
	    `banhang`.`danhmuc` (`DanhmucID`, `TenDanhMuc`)
	VALUES (dmID, tenDM);
	END;


CALL `INSECTDANHMUC`('cong','Phan Thành Công');

SELECT * FROM danhmuc;

-- Sửa danh mục

CREATE PROCEDURE UPDATEDANHMUC(IN DMID CHAR(10), IN 
TENDM VARCHAR(60)) BEGIN UPDATE 
	UPDATE `banhang`.`danhmuc`
	SET `TenDanhMuc` = TENDM
	WHERE `DanhmucID` = DMID;
	END CALL 


CALL `UpdateDanhMuc`('phan','Phan Thành Công 292');

SELECT * FROM danhmuc;