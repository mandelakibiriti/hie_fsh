Alias: $kenya-counties-extension = http://example.org/StructureDefinition/kenya-counties-extension

Profile: ClaimProfile
Parent: Claim
Id: Claim-ke
Title: "Claims"
Description: "Standardise the format of electronic claims / pre-authorizations / pre-determinations."

* extension contains KenyaCountiesExtension named county 0..1 
* identifier 1..1 MS 
* status from ClaimsStatusVS
* status ^short = "Patient Claim's status"
* type MS  
* subType MS
* billablePeriod MS
* enterer MS  
* insurer MS  
* provider MS  
* referral MS  
* facility MS  
* careTeam MS  