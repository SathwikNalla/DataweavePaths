/* 
Change All Keys to uppercase 
Change Key Name
*/
%dw 2.0
output application/json
---
//Change All Keys to uppercase 
/* payload map ($ mapObject ((value, key, index) -> (upper(key)): value))*/
// Change Key Name
/* 
    payload map ((item, index) -> item mapObject ((value, key, index) -> 
    if((key ~= "Name__c") )
    {
        "Name": value
    }
    else if((key ~= "Pho_no__c"))
    {
        "PhoneNumber": value
    }
     else 
     {
         (key): value
     }
)) 
*/
                //[Or]
/*
payload map ((item, index) -> 
{
    "Name": item.Name__c,
    (item - "Name__c")
} ) 
*/

                //[Or]
// Change only name
/* payload map ((item, index) -> 
 {
    "Name": item.Name__c
} ++ item - "Name__c") */

payload
