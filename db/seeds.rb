# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Merchant.create(merch_fname:"Gilberto",merch_lname:"Styles",merch_dba:"Gil's Garage",merch_email:"gstyles@woohoo.com",merch_phone:"7085555785",merch_cell:"7089338474",merch_address1:"555 quick way",merch_city:"Chicago",merch_state:"Illinois",merch_zip:"60101")
#Merchant.create(merch_fname:"Tonto",merch_lname:"Squanto",merch_dba:"Los Amigos Mexican Restaurant",merch_email:"losamigosMR@woohoo.com",merch_phone:"70831231123",merch_cell:"3125244555",merch_address1:"123 broadway",merch_city:"Chicago",merch_state:"Illinois",merch_zip:"60608")
#Merchant.create(merch_fname:"Steven",merch_lname:"Tyler",merch_dba:"Aero Guitars",merch_email:"looselips@woohoo.com",merch_phone:"7082523131",merch_cell:"8705459565",merch_address1:"10 Ladies way",merch_city:"Chicago",merch_state:"Illinois",merch_zip:"60601")
#Merchant.create(merch_fname:"Paul",merch_lname:"Konerko",merch_dba:"Pauls Baseball Cards",merch_email:"WSox@woohoo.com",merch_phone:"3129999999",merch_cell:"7089321414",merch_address1:"3500 S. Halsted",merch_city:"Chicago",merch_state:"Illinois",merch_zip:"60616")

#Manufacturer.create(manufacturer_name:"Ingenico", manu_website:"www.ingenico.com", contact_name:"Sarah Palin", contact_phone:"7155555555")
#Manufacturer.create(manufacturer_name:"Verifone", manu_website:"www.verifone.com", contact_name:"Veronica Vale", contact_phone:"3125856569")
#Manufacturer.create(manufacturer_name:"Hypercom", manu_website:"www.hypercom.com", contact_name:"Johh Shift", contact_phone:"8702544648")
#Manufacturer.create(manufacturer_name:"Exatouch", manu_website:"www.exatouch.com", contact_name:"Sean Rays", contact_phone:"6605485654")

#Terminaltype.create(type_name:"stand alone")
#Terminaltype.create(type_name:"pin pad")
#Terminaltype.create(type_name:"POS")

#Salesrep.create(rep_fname:"Noe",rep_lname:"Moreno",rep_email:"moreno.npc@gmail.com",rep_phone:"7089329546")
#Salesrep.create(rep_fname:"Omar",rep_lname:"Moreno",rep_email:"o.moreno75@att.net",rep_phone:"7082599898")

#Saleterminal.create(stock_number:"1",manufacturer_id:1,model:"ICT220",year:"2014",color:"Grey",terminaltype_id:"1",purchase_date:"2014-01-04",invoice_price:"225.99",sale_price:"400.00",features_note:"Dual COMM/Emv ready")
#Saleterminal.create(stock_number:"2",manufacturer_id:1,model:"ICT220",year:"2014",color:"Grey",terminaltype_id:"1",purchase_date:"2014-01-04",invoice_price:"225.99",sale_price:"400.00",features_note:"Dual COMM/Emv ready")
#Saleterminal.create(stock_number:"3",manufacturer_id:1,model:"ICT220",year:"2014",color:"Grey",terminaltype_id:"1",purchase_date:"2014-01-04",invoice_price:"225.99",sale_price:"400.00",features_note:"Dual COMM/Emv ready") 
#Saleterminal.create(stock_number:"4",manufacturer_id:1,model:"ICT220",year:"2014",color:"Grey",terminaltype_id:"1",purchase_date:"2014-01-04",invoice_price:"225.99",sale_price:"400.00",features_note:"Dual COMM/Emv ready") 
#Saleterminal.create(stock_number:"5",manufacturer_id:2,model:"VX520DC",year:"2014",color:"SIlver",terminaltype_id:"1",purchase_date:"2014-01-25",invoice_price:"259.99",sale_price:"450.00",features_note:"Dual COMM/Emv ready")
#Saleterminal.create(stock_number:"6",manufacturer_id:2,model:"VX520DC",year:"2014",color:"SIlver",terminaltype_id:"1",purchase_date:"2014-01-25",invoice_price:"259.99",sale_price:"450.00",features_note:"Dual COMM/Emv ready")
#Saleterminal.create(stock_number:"7",manufacturer_id:2,model:"VX520DC",year:"2014",color:"SIlver",terminaltype_id:"1",purchase_date:"2014-01-25",invoice_price:"259.99",sale_price:"450.00",features_note:"Dual COMM/Emv ready")
#Saleterminal.create(stock_number:"8",manufacturer_id:2,model:"VX520DC",year:"2014",color:"SIlver",terminaltype_id:"1",purchase_date:"2014-01-25",invoice_price:"259.99",sale_price:"450.00",features_note:"Dual COMM/Emv ready")
#Saleterminal.create(stock_number:"9",manufacturer_id:3,model:"4220",year:"2013",color:"black",terminaltype_id:"1",purchase_date:"2013-11-25",invoice_price:"259.99",sale_price:"450.00",features_note:"Dual COMM/Emv ready") 
#Saleterminal.create(stock_number:"10",manufacturer_id:3,model:"4220",year:"2013",color:"black",terminaltype_id:"1",purchase_date:"2013-11-25",invoice_price:"259.99",sale_price:"450.00",features_note:"Dual COMM/Emv ready") 
#Saleterminal.create(stock_number:"11",manufacturer_id:3,model:"4220",year:"2013",color:"black",terminaltype_id:"1",purchase_date:"2013-11-25",invoice_price:"259.99",sale_price:"450.00",features_note:"Dual COMM/Emv ready") 
#Saleterminal.create(stock_number:"12",manufacturer_id:3,model:"4220",year:"2013",color:"black",terminaltype_id:"1",purchase_date:"2013-11-25",invoice_price:"259.99",sale_price:"450.00",features_note:"Dual COMM/Emv ready") 
#Saleterminal.create(stock_number:"13",manufacturer_id:4,model:"plus1000x",year:"2014",color:"black",terminaltype_id:"3",purchase_date:"2014-02-05",invoice_price:"650.00",sale_price:"1800.00",features_note:"POS IP/Emv ready") 
#Saleterminal.create(stock_number:"14",manufacturer_id:4,model:"plus1000x",year:"2014",color:"black",terminaltype_id:"3",purchase_date:"2014-02-05",invoice_price:"650.00",sale_price:"1800.00",features_note:"POS IP/Emv ready")
#Saleterminal.create(stock_number:"15",manufacturer_id:4,model:"plus1000x",year:"2014",color:"black",terminaltype_id:"3",purchase_date:"2014-02-05",invoice_price:"650.00",sale_price:"1800.00",features_note:"POS IP/Emv ready")
#Saleterminal.create(stock_number:"16",manufacturer_id:4,model:"plus1000x",year:"2014",color:"black",terminaltype_id:"3",purchase_date:"2014-02-05",invoice_price:"650.00",sale_price:"1800.00",features_note:"POS IP/Emv ready")
#Saleterminal.create(stock_number:"17",manufacturer_id:1,model:"ingenPP",year:"2014",color:"grey",terminaltype_id:"2",purchase_date:"2014-01-04",invoice_price:"75.00",sale_price:"129.00",features_note:"debit pinpad")
#Saleterminal.create(stock_number:"18",manufacturer_id:1,model:"ingenPP",year:"2014",color:"grey",terminaltype_id:"2",purchase_date:"2014-01-04",invoice_price:"75.00",sale_price:"129.00",features_note:"debit pinpad")
#Saleterminal.create(stock_number:"19",manufacturer_id:1,model:"ingenPP",year:"2014",color:"grey",terminaltype_id:"2",purchase_date:"2014-01-04",invoice_price:"75.00",sale_price:"129.00",features_note:"debit pinpad")
#Saleterminal.create(stock_number:"20",manufacturer_id:1,model:"ingenPP",year:"2014",color:"grey",terminaltype_id:"2",purchase_date:"2014-01-04",invoice_price:"75.00",sale_price:"129.00",features_note:"debit pinpad")

#Sale.create(saleterminal_id:"1",merchant_id:"19",salesrep_id:"1",sale_price:"475.00",sale_date:"2014-02-05")
#Sale.create(saleterminal_id:"17",merchant_id:"19",salesrep_id:"1",sale_price:"140.00",sale_date:"2014-02-05")
#Sale.create(saleterminal_id:"5",merchant_id:"20",salesrep_id:"1",sale_price:"450.00",sale_date:"2014-02-10")

#Lease.create(saleterminal_id:"2",merchant_id:"21",salesrep_id:"1",lease_price:"49.00",lease_date:"2014-02-12",lease_term_months:"48")
#Lease.create(saleterminal_id:"6",merchant_id:"22",salesrep_id:"2",lease_price:"59.00",lease_date:"2014-03-17",lease_term_months:"48")

#Current.create(merchant_id:"19",current_discount:".0025",current_transfee:".15",current_terminal_lease:"false")
#Current.create(merchant_id:"20",current_discount:".0050",current_transfee:".05",current_terminal_lease:"false")
#Current.create(merchant_id:"21",current_discount:".0032",current_transfee:".08",current_terminal_lease:"true")
#Current.create(merchant_id:"22",current_discount:".0010",current_transfee:".22",current_terminal_lease:"true")

require 'digest/md5'
user1 = User.new
user1.username = "nmoreno"
user1.password = Digest::MD5.hexdigest("nmoreno:localhost:bailey")
user1.save
user2 = User.new
user2.username = "styler"
user2.password = Digest::MD5.hexdigest("styler:localhost:crazy")
user2.save
user3 = User.new
user3.username = "nyoung"
user3.password = Digest::MD5.hexdigest("nyoung:localhost:csny")
user3.save
