use Coursework
go
ALTER TABLE Branch
DROP CONSTRAINT fk_branch_loc
delete from Territory
ALTER TABLE Employee
DROP CONSTRAINT fk_working_br
delete from Branch
delete from OrderDetail
delete from [Product]
delete from Category
delete from Orderr
delete from CarrierEmployee
delete from Carrier
delete from OnlineShop
delete from Employee

ALTER TABLE Branch
ADD constraint fk_branch_loc foreign key(locationID) 
             references Territory(territoryNO)
ALTER TABLE Employee
ADD CONSTRAINT fk_working_br foreign key(workingBranchNo) 
             references Branch(branchNO)