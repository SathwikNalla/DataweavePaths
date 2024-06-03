%dw 2.0
output application/json
---
payload distinctBy ((item, index) -> item.lineId)