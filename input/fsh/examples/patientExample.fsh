Instance: PatientExample
InstanceOf: Patient_ke_Profile
Description: "An example of a patient"
* identifier
  * id = "1"
* active = true
* name
  * given[0] = "John"
  * family = "Pond"
* gender = #male
* birthDate = "1993-12-27"
* deceasedBoolean = false

* address.use = #home
* address.type = #postal
* address.line = "00200"
* address.city = "Nairobi"
* address.country = "Kenya"

* telecom.system = #phone
* maritalStatus = #unknown

* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#BP "Billing contact person"
* contact.name.text = "john doe"
* contact.name.use = #official
* contact.telecom.system = #phone
* contact.telecom.value = "12345"
* contact.telecom.use = #home
* contact.telecom.system = #email
* contact.telecom.value = "mkjk@as.com"
* contact.telecom.use = #home
* contact.address.text = "00200"
* contact.address.use = #home
* contact.address.type = #postal
* contact.address.city = "Nairobi"
* contact.address.country = "Kenya"
* contact.gender = #male