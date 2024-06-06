/*
[
  {
    "first name": "MAX",
    "last name": "THE MULE"
  },
  {
    "first name": "ALBERT",
    "last name": "EINSTEIN"
  }
]

 */
%dw 2.0
output application/json
---
payload map ((item, index) -> 
{
    "first name": upper(item."First Name"),
    "last name": upper(item."Last Name")
}
)
