# Supplier

The Supplier interface is used by an external client to create a supplier in SelectSite; to retrieve information from SelectSite about one or more suppliers; or to modify information in SelectSite about one or more suppliers.
## GET /supplier
This method retrieves the SciQuest Supplier ID for a supplier using the ERP Third Party Reference Number or the ERP Supplier Number. The SciQuest ID, a unique identifier created by and stored in SelectSite, is a required input for other GET, POST, and PUT.<br /><br />This method responds to the GET request with JSON or XML.

> Prod: GET https://api.sciquest.com/apps/rest/supplier

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier

> The above endpoints return data structured like this:

```json
{
	"supplierId": 0,
	"supplierNumber": "string",
	"thirdPartyNumber": "string"
}

```

```xml
<supplier>
	<supplierId>0</supplierId>
	<supplierNumber>"string"</supplierNumber>
	<thirdPartyNumber>"string"</thirdPartyNumber>
</supplier>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
supplierNumber | query | false | Supplier Number | 
thirdPartyNumber | query | false | Third Party Number | 


### HTTP Request
 	
`GET /supplier`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier.search-v1+json; | 
application/vnd.sciquest.com.supplier.search-v1+xml; | 


Consumes |
-------- |


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | supplier | 



## POST /supplier
This method uses JSON or XML to create a new supplier. You can create a supplier with only general data; or with general data and address data, contact data, or both.

> Prod: POST https://api.sciquest.com/apps/rest/supplier

> UIT: POST https://api-uit.sciquest.com/apps/rest/supplier

> The above endpoints return data structured like this:

```json
{
	"addresses": [
		{
		"id": 0,
		"name": "string",
		"addressType": "string",
		"addressId": "string",
		"isActive": "string",
		"isPrimary": "string",
		"country": "string",
		"streetLine1": "string",
		"streetLine2": "string",
		"streetLine3": "string",
		"city": "string",
		"state": "string",
		"postalCode": "string",
		"phone": "string",
		"tollFreeNumber": "string",
		"fax": "string",
		"notes": "string"
		}
	],
	"contacts": [
		{
		"id": 0,
		"name": "string",
		"contactType": "string",
		"contactId": "string",
		"isActive": "string",
		"isPrimary": "string",
		"firstName": "string",
		"lastName": "string",
		"title": "string",
		"email": "string",
		"phone": "string",
		"tollFreeNumber": "string",
		"fax": "string",
		"notes": "string"
		}
	],
	"id": 0,
	"supplierName": "string",
	"doingBusinessAs": "string",
	"otherNames": "string",
	"countryOfOrigin": "string",
	"supplierNumber": "string",
	"thirdPartyNumber": "string",
	"legalStructure": "string",
	"taxIdentificationType": "string",
	"taxIdentificationNumber": "string",
	"vatRegistrationNumber": "string"
}

```

```xml
<supplier>
	<addresses>
		<id>0</id>
		<name>"string"</name>
		<addressType>"string"</addressType>
		<addressId>"string"</addressId>
		<isActive>"string"</isActive>
		<isPrimary>"string"</isPrimary>
		<country>"string"</country>
		<streetLine1>"string"</streetLine1>
		<streetLine2>"string"</streetLine2>
		<streetLine3>"string"</streetLine3>
		<city>"string"</city>
		<state>"string"</state>
		<postalCode>"string"</postalCode>
		<phone>"string"</phone>
		<tollFreeNumber>"string"</tollFreeNumber>
		<fax>"string"</fax>
		<notes>"string"</notes>
	</addresses>
	<contacts>
		<id>0</id>
		<name>"string"</name>
		<contactType>"string"</contactType>
		<contactId>"string"</contactId>
		<isActive>"string"</isActive>
		<isPrimary>"string"</isPrimary>
		<firstName>"string"</firstName>
		<lastName>"string"</lastName>
		<title>"string"</title>
		<email>"string"</email>
		<phone>"string"</phone>
		<tollFreeNumber>"string"</tollFreeNumber>
		<fax>"string"</fax>
		<notes>"string"</notes>
	</contacts>
	<id>0</id>
	<supplierName>"string"</supplierName>
	<doingBusinessAs>"string"</doingBusinessAs>
	<otherNames>"string"</otherNames>
	<countryOfOrigin>"string"</countryOfOrigin>
	<supplierNumber>"string"</supplierNumber>
	<thirdPartyNumber>"string"</thirdPartyNumber>
	<legalStructure>"string"</legalStructure>
	<taxIdentificationType>"string"</taxIdentificationType>
	<taxIdentificationNumber>"string"</taxIdentificationNumber>
	<vatRegistrationNumber>"string"</vatRegistrationNumber>
</supplier>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
body | body | true | Supplier | 


### HTTP Request
 	
`POST /supplier`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier-v1+json; | 
application/vnd.sciquest.com.supplier-v1+xml; | 


Consumes |
-------- |
application/vnd.sciquest.com.supplier-v1+json; | 
application/vnd.sciquest.com.supplier-v1+xml; | 


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | supplier | 



## GET /supplier/{id}
This method retrieves all of the general data about the supplier with the specified supplier ID.<br /><br />The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier.<br /><br /> This method responds to the GET request with JSON or XML.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}

> The above endpoints return data structured like this:

```json
{
	"id": 0,
	"supplierName": "string",
	"doingBusinessAs": "string",
	"otherNames": "string",
	"countryOfOrigin": "string",
	"supplierNumber": "string",
	"thirdPartyNumber": "string",
	"legalStructure": "string",
	"taxIdentificationType": "string",
	"taxIdentificationNumber": "string",
	"vatRegistrationNumber": "string"
}

```

```xml
<supplier>
	<id>0</id>
	<supplierName>"string"</supplierName>
	<doingBusinessAs>"string"</doingBusinessAs>
	<otherNames>"string"</otherNames>
	<countryOfOrigin>"string"</countryOfOrigin>
	<supplierNumber>"string"</supplierNumber>
	<thirdPartyNumber>"string"</thirdPartyNumber>
	<legalStructure>"string"</legalStructure>
	<taxIdentificationType>"string"</taxIdentificationType>
	<taxIdentificationNumber>"string"</taxIdentificationNumber>
	<vatRegistrationNumber>"string"</vatRegistrationNumber>
</supplier>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 


### HTTP Request
 	
`GET /supplier/{id}`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier-v1+json; | 
application/vnd.sciquest.com.supplier-v1+xml; | 


Consumes |
-------- |


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | supplier | 



## PUT /supplier/{id}
This method uses JSON or XML to update some or all of the general data fields for the supplier with the specified supplier ID.<br /><br />The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier.

> Prod: PUT https://api.sciquest.com/apps/rest/supplier/{id}

> UIT: PUT https://api-uit.sciquest.com/apps/rest/supplier/{id}

> The above endpoints return data structured like this:

```json
{
	"id": 0,
	"supplierName": "string",
	"doingBusinessAs": "string",
	"otherNames": "string",
	"countryOfOrigin": "string",
	"supplierNumber": "string",
	"thirdPartyNumber": "string",
	"legalStructure": "string",
	"taxIdentificationType": "string",
	"taxIdentificationNumber": "string",
	"vatRegistrationNumber": "string"
}

```

```xml
<supplier>
	<id>0</id>
	<supplierName>"string"</supplierName>
	<doingBusinessAs>"string"</doingBusinessAs>
	<otherNames>"string"</otherNames>
	<countryOfOrigin>"string"</countryOfOrigin>
	<supplierNumber>"string"</supplierNumber>
	<thirdPartyNumber>"string"</thirdPartyNumber>
	<legalStructure>"string"</legalStructure>
	<taxIdentificationType>"string"</taxIdentificationType>
	<taxIdentificationNumber>"string"</taxIdentificationNumber>
	<vatRegistrationNumber>"string"</vatRegistrationNumber>
</supplier>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 
body | body | true | Supplier | 


### HTTP Request
 	
`PUT /supplier/{id}`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier-v1+json; | 
application/vnd.sciquest.com.supplier-v1+xml; | 


Consumes |
-------- |
application/vnd.sciquest.com.supplier-v1+json; | 
application/vnd.sciquest.com.supplier-v1+xml; | 


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | supplier | 



## GET /supplier/{id}/address
This method retrieves all of the address data for the supplier with the specified supplier ID.<br /><br />The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier. To retrieve a specific address, populate the optional addressID parameter with the appropriate ERP Address ID.<br /><br />This method responds to the GET request with JSON or XML.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}/address

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}/address

> The above endpoints return data structured like this:

```json
{
	"id": 0,
	"name": "string",
	"addressType": "string",
	"addressId": "string",
	"isActive": "string",
	"isPrimary": "string",
	"country": "string",
	"streetLine1": "string",
	"streetLine2": "string",
	"streetLine3": "string",
	"city": "string",
	"state": "string",
	"postalCode": "string",
	"phone": "string",
	"tollFreeNumber": "string",
	"fax": "string",
	"notes": "string"
}

```

```xml
<address>
	<id>0</id>
	<name>"string"</name>
	<addressType>"string"</addressType>
	<addressId>"string"</addressId>
	<isActive>"string"</isActive>
	<isPrimary>"string"</isPrimary>
	<country>"string"</country>
	<streetLine1>"string"</streetLine1>
	<streetLine2>"string"</streetLine2>
	<streetLine3>"string"</streetLine3>
	<city>"string"</city>
	<state>"string"</state>
	<postalCode>"string"</postalCode>
	<phone>"string"</phone>
	<tollFreeNumber>"string"</tollFreeNumber>
	<fax>"string"</fax>
	<notes>"string"</notes>
</address>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 
addressId | query | false | ERP Address ID | 


### HTTP Request
 	
`GET /supplier/{id}/address`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier.address-v1+json; | 
application/vnd.sciquest.com.supplier.address-v1+xml; | 


Consumes |
-------- |


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | address | 



## POST /supplier/{id}/address
This method uses JSON or XML to create new address data for an existing supplier.<br /><br /> The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier. To create a specific address, populate the optional addressID parameter with the appropriate ERP Address ID.

> Prod: POST https://api.sciquest.com/apps/rest/supplier/{id}/address

> UIT: POST https://api-uit.sciquest.com/apps/rest/supplier/{id}/address

> The above endpoints return data structured like this:

```json
{
	"id": 0,
	"name": "string",
	"addressType": "string",
	"addressId": "string",
	"isActive": "string",
	"isPrimary": "string",
	"country": "string",
	"streetLine1": "string",
	"streetLine2": "string",
	"streetLine3": "string",
	"city": "string",
	"state": "string",
	"postalCode": "string",
	"phone": "string",
	"tollFreeNumber": "string",
	"fax": "string",
	"notes": "string"
}

```

```xml
<address>
	<id>0</id>
	<name>"string"</name>
	<addressType>"string"</addressType>
	<addressId>"string"</addressId>
	<isActive>"string"</isActive>
	<isPrimary>"string"</isPrimary>
	<country>"string"</country>
	<streetLine1>"string"</streetLine1>
	<streetLine2>"string"</streetLine2>
	<streetLine3>"string"</streetLine3>
	<city>"string"</city>
	<state>"string"</state>
	<postalCode>"string"</postalCode>
	<phone>"string"</phone>
	<tollFreeNumber>"string"</tollFreeNumber>
	<fax>"string"</fax>
	<notes>"string"</notes>
</address>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 
body | body | true | Supplier Address | 


### HTTP Request
 	
`POST /supplier/{id}/address`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier.address-v1+json; | 
application/vnd.sciquest.com.supplier.address-v1+xml; | 


Consumes |
-------- |
application/vnd.sciquest.com.supplier.address-v1+json; | 
application/vnd.sciquest.com.supplier.address-v1+xml; | 


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | address | 



## PUT /supplier/{id}/address/{addressId}
This method uses JSON or XML to update some or all of the address fields, with the specified address ID, for the supplier with the specified supplier ID.<br /><br /> The SciQuest Supplier ID, <i>id</i>, and the SciQuest Address ID, <i>addressId</i>, are both required, and both are unique identifiers created by and stored in SelectSite.<br /><br /> Use GETSupplier to retrieve the ID associated with each supplier.<br /><br /> Use GETSupplieridAddress to retrieve the SciQuest Address ID associated with each address in the response, using the optional associated ERP Address ID field as a parameter.

> Prod: PUT https://api.sciquest.com/apps/rest/supplier/{id}/address/{addressId}

> UIT: PUT https://api-uit.sciquest.com/apps/rest/supplier/{id}/address/{addressId}

> The above endpoints return data structured like this:

```json
{
	"id": 0,
	"name": "string",
	"addressType": "string",
	"addressId": "string",
	"isActive": "string",
	"isPrimary": "string",
	"country": "string",
	"streetLine1": "string",
	"streetLine2": "string",
	"streetLine3": "string",
	"city": "string",
	"state": "string",
	"postalCode": "string",
	"phone": "string",
	"tollFreeNumber": "string",
	"fax": "string",
	"notes": "string"
}

```

```xml
<address>
	<id>0</id>
	<name>"string"</name>
	<addressType>"string"</addressType>
	<addressId>"string"</addressId>
	<isActive>"string"</isActive>
	<isPrimary>"string"</isPrimary>
	<country>"string"</country>
	<streetLine1>"string"</streetLine1>
	<streetLine2>"string"</streetLine2>
	<streetLine3>"string"</streetLine3>
	<city>"string"</city>
	<state>"string"</state>
	<postalCode>"string"</postalCode>
	<phone>"string"</phone>
	<tollFreeNumber>"string"</tollFreeNumber>
	<fax>"string"</fax>
	<notes>"string"</notes>
</address>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 
addressId | path | true | SciQuest Address ID | 
body | body | true | Supplier Address | 


### HTTP Request
 	
`PUT /supplier/{id}/address/{addressId}`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier.address-v1+json; | 
application/vnd.sciquest.com.supplier.address-v1+xml; | 


Consumes |
-------- |
application/vnd.sciquest.com.supplier.address-v1+json; | 
application/vnd.sciquest.com.supplier.address-v1+xml; | 


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | address | 



## GET /supplier/{id}/contact
This method retrieves all of the contact data for the supplier with the specified supplier ID.<br /><br /> The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier.<br /><br /> To retrieve a specific contact, populate the optional contactID parameter with the appropriate ERP Contact ID. This method responds to the GET request with JSON or XML.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}/contact

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}/contact

> The above endpoints return data structured like this:

```json
{
	"id": 0,
	"name": "string",
	"contactType": "string",
	"contactId": "string",
	"isActive": "string",
	"isPrimary": "string",
	"firstName": "string",
	"lastName": "string",
	"title": "string",
	"email": "string",
	"phone": "string",
	"tollFreeNumber": "string",
	"fax": "string",
	"notes": "string"
}

```

```xml
<contact>
	<id>0</id>
	<name>"string"</name>
	<contactType>"string"</contactType>
	<contactId>"string"</contactId>
	<isActive>"string"</isActive>
	<isPrimary>"string"</isPrimary>
	<firstName>"string"</firstName>
	<lastName>"string"</lastName>
	<title>"string"</title>
	<email>"string"</email>
	<phone>"string"</phone>
	<tollFreeNumber>"string"</tollFreeNumber>
	<fax>"string"</fax>
	<notes>"string"</notes>
</contact>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 
contactId | query | false | ERP Contact ID | 


### HTTP Request
 	
`GET /supplier/{id}/contact`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier.contact-v1+json; | 
application/vnd.sciquest.com.supplier.contact-v1+xml; | 


Consumes |
-------- |


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | contact | 



## POST /supplier/{id}/contact
This method uses JSON or XML to create new contact data for an existing supplier.<br /><br /> The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier. To create a specific contact, populate the optional contactID parameter with the appropriate ERP Contact ID.

> Prod: POST https://api.sciquest.com/apps/rest/supplier/{id}/contact

> UIT: POST https://api-uit.sciquest.com/apps/rest/supplier/{id}/contact

> The above endpoints return data structured like this:

```json
{
	"id": 0,
	"name": "string",
	"contactType": "string",
	"contactId": "string",
	"isActive": "string",
	"isPrimary": "string",
	"firstName": "string",
	"lastName": "string",
	"title": "string",
	"email": "string",
	"phone": "string",
	"tollFreeNumber": "string",
	"fax": "string",
	"notes": "string"
}

```

```xml
<contact>
	<id>0</id>
	<name>"string"</name>
	<contactType>"string"</contactType>
	<contactId>"string"</contactId>
	<isActive>"string"</isActive>
	<isPrimary>"string"</isPrimary>
	<firstName>"string"</firstName>
	<lastName>"string"</lastName>
	<title>"string"</title>
	<email>"string"</email>
	<phone>"string"</phone>
	<tollFreeNumber>"string"</tollFreeNumber>
	<fax>"string"</fax>
	<notes>"string"</notes>
</contact>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 
body | body | true | Supplier Contact | 


### HTTP Request
 	
`POST /supplier/{id}/contact`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier.contact-v1+json; | 
application/vnd.sciquest.com.supplier.contact-v1+xml; | 


Consumes |
-------- |
application/vnd.sciquest.com.supplier.contact-v1+json; | 
application/vnd.sciquest.com.supplier.contact-v1+xml; | 


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | contact | 



## PUT /supplier/{id}/contact/{contactId}
This method uses JSON or XML to update some or all of the contact fields, with the specified contact ID, for the supplier with the specified supplier ID.<br /><br /> The SciQuest Supplier ID, <i>id</i>, and the SciQuest Contact ID, <i>contactId</i>, are both required, and both are unique identifiers created by and stored in SelectSite.<br /><br /> Use GETSupplier to retrieve the ID associated with each supplier.<br /><br /> Use GETSupplieridContact to retrieve the SciQuest Contact ID associated with each contact in the response, using the optional associated ERP Contact ID field as a parameter.

> Prod: PUT https://api.sciquest.com/apps/rest/supplier/{id}/contact/{contactId}

> UIT: PUT https://api-uit.sciquest.com/apps/rest/supplier/{id}/contact/{contactId}

> The above endpoints return data structured like this:

```json
{
	"id": 0,
	"name": "string",
	"contactType": "string",
	"contactId": "string",
	"isActive": "string",
	"isPrimary": "string",
	"firstName": "string",
	"lastName": "string",
	"title": "string",
	"email": "string",
	"phone": "string",
	"tollFreeNumber": "string",
	"fax": "string",
	"notes": "string"
}

```

```xml
<contact>
	<id>0</id>
	<name>"string"</name>
	<contactType>"string"</contactType>
	<contactId>"string"</contactId>
	<isActive>"string"</isActive>
	<isPrimary>"string"</isPrimary>
	<firstName>"string"</firstName>
	<lastName>"string"</lastName>
	<title>"string"</title>
	<email>"string"</email>
	<phone>"string"</phone>
	<tollFreeNumber>"string"</tollFreeNumber>
	<fax>"string"</fax>
	<notes>"string"</notes>
</contact>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 
contactId | path | true | SciQuest Contact ID | 
body | body | true | Supplier Contact | 


### HTTP Request
 	
`PUT /supplier/{id}/contact/{contactId}`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier.contact-v1+json; | 
application/vnd.sciquest.com.supplier.contact-v1+xml; | 


Consumes |
-------- |
application/vnd.sciquest.com.supplier.contact-v1+json; | 
application/vnd.sciquest.com.supplier.contact-v1+xml; | 


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | contact | 



## GET /supplier/{id}/full
This method retrieves all of the general, address, and contact data for the supplier with the specified supplier ID.<br /><br />The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite.<br /><br /> Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier.<br /><br /> This method responds to the GET request with JSON or XML.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}/full

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}/full

> The above endpoints return data structured like this:

```json
{
	"addresses": [
		{
		"id": 0,
		"name": "string",
		"addressType": "string",
		"addressId": "string",
		"isActive": "string",
		"isPrimary": "string",
		"country": "string",
		"streetLine1": "string",
		"streetLine2": "string",
		"streetLine3": "string",
		"city": "string",
		"state": "string",
		"postalCode": "string",
		"phone": "string",
		"tollFreeNumber": "string",
		"fax": "string",
		"notes": "string"
		}
	],
	"contacts": [
		{
		"id": 0,
		"name": "string",
		"contactType": "string",
		"contactId": "string",
		"isActive": "string",
		"isPrimary": "string",
		"firstName": "string",
		"lastName": "string",
		"title": "string",
		"email": "string",
		"phone": "string",
		"tollFreeNumber": "string",
		"fax": "string",
		"notes": "string"
		}
	],
	"id": 0,
	"supplierName": "string",
	"doingBusinessAs": "string",
	"otherNames": "string",
	"countryOfOrigin": "string",
	"supplierNumber": "string",
	"thirdPartyNumber": "string",
	"legalStructure": "string",
	"taxIdentificationType": "string",
	"taxIdentificationNumber": "string",
	"vatRegistrationNumber": "string"
}

```

```xml
<supplier>
	<addresses>
		<id>0</id>
		<name>"string"</name>
		<addressType>"string"</addressType>
		<addressId>"string"</addressId>
		<isActive>"string"</isActive>
		<isPrimary>"string"</isPrimary>
		<country>"string"</country>
		<streetLine1>"string"</streetLine1>
		<streetLine2>"string"</streetLine2>
		<streetLine3>"string"</streetLine3>
		<city>"string"</city>
		<state>"string"</state>
		<postalCode>"string"</postalCode>
		<phone>"string"</phone>
		<tollFreeNumber>"string"</tollFreeNumber>
		<fax>"string"</fax>
		<notes>"string"</notes>
	</addresses>
	<contacts>
		<id>0</id>
		<name>"string"</name>
		<contactType>"string"</contactType>
		<contactId>"string"</contactId>
		<isActive>"string"</isActive>
		<isPrimary>"string"</isPrimary>
		<firstName>"string"</firstName>
		<lastName>"string"</lastName>
		<title>"string"</title>
		<email>"string"</email>
		<phone>"string"</phone>
		<tollFreeNumber>"string"</tollFreeNumber>
		<fax>"string"</fax>
		<notes>"string"</notes>
	</contacts>
	<id>0</id>
	<supplierName>"string"</supplierName>
	<doingBusinessAs>"string"</doingBusinessAs>
	<otherNames>"string"</otherNames>
	<countryOfOrigin>"string"</countryOfOrigin>
	<supplierNumber>"string"</supplierNumber>
	<thirdPartyNumber>"string"</thirdPartyNumber>
	<legalStructure>"string"</legalStructure>
	<taxIdentificationType>"string"</taxIdentificationType>
	<taxIdentificationNumber>"string"</taxIdentificationNumber>
	<vatRegistrationNumber>"string"</vatRegistrationNumber>
</supplier>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 


### HTTP Request
 	
`GET /supplier/{id}/full`

### Media Types
Produces | 
-------- |
application/vnd.sciquest.com.supplier-v1+json; | 
application/vnd.sciquest.com.supplier-v1+xml; | 


Consumes |
-------- |


Responses | Description | Model |
--------- | ----------- | ----- |
200 | successful operation | supplier | 


