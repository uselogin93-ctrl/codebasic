Delimiter $$
create trigger trig_1 
after insert 
on collage 
for each row 
Begin 
	IF new.dept="CS" then 
		insert into cstable(id,name,dept,Actionture,Actiondate)
		values(new.name,new.dept,"new cs students added",now());
    End IF;
    IF new.dept="it" then
		insert into itTable(id,name,dept,Actionture,Actiondate)
        values(new.name,new.dept,"new cs students added",now());
	End IF;
End $$
Delimiter ;  

Delimiter $$
create trigger update_order
after update 
on order_table 
for each row 
Begin 
	IF new.O_status="returned" then 
		insert into return_table(c_name, O_name, Actiontype, Actiondate)
		values(new.c_name,new.O_name,"Returned Order",now());
    End IF;
End $$
Delimiter ;