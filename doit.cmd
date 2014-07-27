call rails generate scaffold manufacturer manufacturer_name:string manu_website:string contact_name:string contact_phone:string
call rails generate scaffold processing discountrate:decimal transfee:decimal batchfee:decimal annualfee:float statementfee:float 
call rails generate scaffold terminaltype type_name:string
call rails generate scaffold salesrep rep_fname:string rep_lname:string rep_email:string rep_phone:string
call rails generate scaffold saleterminal stock_number:string manufacturer_id:integer model:string year:string color:string terminaltype_id:integer purchase_date:date invoice_price:float sale_price:float features_note:text
call rails generate scaffold sale saleterminal_id:integer merchant_id:integer salesrep_id:integer sale_price:float sale_date:date downpayment:float finance_amount:float finance_rate:float
call rails generate scaffold lease saleterminal_id:integer merchant_id:integer salesrep_id:integer lease_price:float lease_date:date lease_term_months:integer 
call rails generate scaffold maintenance saleterminal_id:integer service_date:date maint_notes:text