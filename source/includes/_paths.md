# Supplier

The Supplier interface is used by an external client to retrieve information from SelectSite about one or more suppliers, or to modify information in SelectSite about one or more suppliers.
## GET /supplier
Responding with JSON or XML, this GET retrieves the SciQuest Supplier ID for a Supplier using the ERP Third Party Reference Number or ERP Supplier Number. The SciQuest ID, a unique, SelectSite-created ID, for the supplier is a required input for other GET, PUT and POST actions.

> Prod: GET https://api.sciquest.com/apps/rest/supplier

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier

> The above endpoints return data structured like this:

```json
{
	"supplierId": "",
	"supplierNumber": "string",
	"thirdPartyNumber": "string"
}

```

```xml
<SupplierSearchEntityModelV1>
	<supplierId>""</supplierId>
	<supplierNumber>"string"</supplierNumber>
	<thirdPartyNumber>"string"</thirdPartyNumber>
</SupplierSearchEntityModelV1>

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
200 | successful operation | #/definitions/SupplierSearchEntityModelV1 | 



## POST /supplier
Using JSON or XML, this POST creates a new supplier and may be used to create a supplier with only general data or a supplier with general data and address and/or contact data.

> Prod: POST https://api.sciquest.com/apps/rest/supplier

> UIT: POST https://api-uit.sciquest.com/apps/rest/supplier

> The above endpoints return data structured like this:

```json
{
	"addresses": [
		{
		"id": "",
		"name": "string",
		"addressType": "string",
		"addressId": "string",
		"isActive": false,
		"isPrimary": false,
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
		"id": "",
		"name": "string",
		"contactType": "string",
		"contactId": "string",
		"isActive": false,
		"isPrimary": false,
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
<SupplierEntityModelV1>
	<addresses>
		<address>
		<id>""</id>
		<name>"string"</name>
		<addressType>"string"</addressType>
		<addressId>"string"</addressId>
		<isActive>false</isActive>
		<isPrimary>false</isPrimary>
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
	</addresses>
	<contacts>
		<contact>
		<id>""</id>
		<name>"string"</name>
		<contactType>"string"</contactType>
		<contactId>"string"</contactId>
		<isActive>false</isActive>
		<isPrimary>false</isPrimary>
		<firstName>"string"</firstName>
		<lastName>"string"</lastName>
		<title>"string"</title>
		<email>"string"</email>
		<phone>"string"</phone>
		<tollFreeNumber>"string"</tollFreeNumber>
		<fax>"string"</fax>
		<notes>"string"</notes>
		</contact>
	</contacts>
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
</SupplierEntityModelV1>

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
200 | successful operation | #/definitions/SupplierEntityModelV1 | 



## GET /supplier/{id}
This method retrieves all of the general data about the supplier with the specified supplier ID.<br /><br />The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier.<br /><br /> This method responds to the GET request with JSON or XML.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}

> The above endpoints return data structured like this:

```json
{
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
<SupplierEntityModel>
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
</SupplierEntityModel>

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
200 | successful operation | #/definitions/SupplierEntityModel | 



## PUT /supplier/{id}
This method uses JSON or XML to update some or all of the general data fields for the supplier with the specified supplier ID.<br /><br />The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier.

> Prod: PUT https://api.sciquest.com/apps/rest/supplier/{id}

> UIT: PUT https://api-uit.sciquest.com/apps/rest/supplier/{id}

> The above endpoints return data structured like this:

```json
{
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
<SupplierEntityModel>
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
</SupplierEntityModel>

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
200 | successful operation | #/definitions/SupplierEntityModel | 



## GET /supplier/{id}/address
This method retrieves all of the address data for the supplier with the specified supplier ID.<br /><br />The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier. To retrieve a specific address, populate the optional addressID parameter with the appropriate ERP Address ID.<br /><br />This method responds to the GET request with JSON or XML.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}/address

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}/address

> The above endpoints return data structured like this:

```json
{
	"id": "",
	"name": "string",
	"addressType": "string",
	"addressId": "string",
	"isActive": false,
	"isPrimary": false,
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
<SupplierAddressModelV1>
	<id>""</id>
	<name>"string"</name>
	<addressType>"string"</addressType>
	<addressId>"string"</addressId>
	<isActive>false</isActive>
	<isPrimary>false</isPrimary>
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
</SupplierAddressModelV1>

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
200 | successful operation | #/definitions/SupplierAddressModelV1 | 



## POST /supplier/{id}/address
Using JSON or XML, this POST creates new address data for an existing supplier. The SciQuest ID, a unique, SelectSite-created ID, of the supplier is a required input for this action. Depending on which field your ERP ID is stored in SelectSite, GETSupplierNumberid or GETThirdParty can be used to retrieve the associated SciQuest ID for each supplier.

> Prod: POST https://api.sciquest.com/apps/rest/supplier/{id}/address

> UIT: POST https://api-uit.sciquest.com/apps/rest/supplier/{id}/address

> The above endpoints return data structured like this:

```json
{
	"id": "",
	"name": "string",
	"addressType": "string",
	"addressId": "string",
	"isActive": false,
	"isPrimary": false,
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
<SupplierAddressModelV1>
	<id>""</id>
	<name>"string"</name>
	<addressType>"string"</addressType>
	<addressId>"string"</addressId>
	<isActive>false</isActive>
	<isPrimary>false</isPrimary>
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
</SupplierAddressModelV1>

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
200 | successful operation | #/definitions/SupplierAddressModelV1 | 



## PUT /supplier/{id}/address/{sqAddressId}
This method uses JSON or XML to update some or all of the address fields, with the specified address ID, for the supplier with the specified supplier ID.<br /><br /> The SciQuest Supplier ID, <i>id</i>, and the SciQuest Address ID, <i>sqAddressId</i>, are both required, and both are unique identifiers created by and stored in SelectSite.<br /><br /> Use GETSupplier to retrieve the ID associated with each supplier.<br /><br /> Use GETSupplieridAddress to retrieve the SciQuest Address ID associated with each address in the response, using the optional associated ERP Address ID field as a parameter.

> Prod: PUT https://api.sciquest.com/apps/rest/supplier/{id}/address/{sqAddressId}

> UIT: PUT https://api-uit.sciquest.com/apps/rest/supplier/{id}/address/{sqAddressId}

> The above endpoints return data structured like this:

```json
{
	"id": "",
	"name": "string",
	"addressType": "string",
	"addressId": "string",
	"isActive": false,
	"isPrimary": false,
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
<SupplierAddressModelV1>
	<id>""</id>
	<name>"string"</name>
	<addressType>"string"</addressType>
	<addressId>"string"</addressId>
	<isActive>false</isActive>
	<isPrimary>false</isPrimary>
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
</SupplierAddressModelV1>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 
sqAddressId | path | true | SciQuest Address ID | 
body | body | true | Supplier Address | 


### HTTP Request
 	
`PUT /supplier/{id}/address/{sqAddressId}`

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
200 | successful operation | #/definitions/SupplierAddressModelV1 | 



## GET /supplier/{id}/contact
This method retrieves all of the contact data for the supplier with the specified supplier ID.<br /><br /> The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite. Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier.<br /><br /> To retrieve a specific contact, populate the optional contactID parameter with the appropriate ERP Contact ID. This method responds to the GET request with JSON or XML.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}/contact

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}/contact

> The above endpoints return data structured like this:

```json
{
	"id": "",
	"name": "string",
	"contactType": "string",
	"contactId": "string",
	"isActive": false,
	"isPrimary": false,
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
<SupplierContactModelV1>
	<id>""</id>
	<name>"string"</name>
	<contactType>"string"</contactType>
	<contactId>"string"</contactId>
	<isActive>false</isActive>
	<isPrimary>false</isPrimary>
	<firstName>"string"</firstName>
	<lastName>"string"</lastName>
	<title>"string"</title>
	<email>"string"</email>
	<phone>"string"</phone>
	<tollFreeNumber>"string"</tollFreeNumber>
	<fax>"string"</fax>
	<notes>"string"</notes>
</SupplierContactModelV1>

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
200 | successful operation | #/definitions/SupplierContactModelV1 | 



## POST /supplier/{id}/contact
Using JSON or XML, this POST creates new contact data for an existing supplier. The SciQuest ID, a unique, SelectSite-created ID, of the supplier is a required input for this action. Depending on which field your ERP ID is stored in SelectSite, GETSupplierNumberid or GETThirdParty can be used to retrieve the associated SciQuest ID for each supplier.

> Prod: POST https://api.sciquest.com/apps/rest/supplier/{id}/contact

> UIT: POST https://api-uit.sciquest.com/apps/rest/supplier/{id}/contact

> The above endpoints return data structured like this:

```json
{
	"id": "",
	"name": "string",
	"contactType": "string",
	"contactId": "string",
	"isActive": false,
	"isPrimary": false,
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
<SupplierContactModelV1>
	<id>""</id>
	<name>"string"</name>
	<contactType>"string"</contactType>
	<contactId>"string"</contactId>
	<isActive>false</isActive>
	<isPrimary>false</isPrimary>
	<firstName>"string"</firstName>
	<lastName>"string"</lastName>
	<title>"string"</title>
	<email>"string"</email>
	<phone>"string"</phone>
	<tollFreeNumber>"string"</tollFreeNumber>
	<fax>"string"</fax>
	<notes>"string"</notes>
</SupplierContactModelV1>

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
200 | successful operation | #/definitions/SupplierContactModelV1 | 



## PUT /supplier/{id}/contact/{sqContactId}
This method uses JSON or XML to update some or all of the contact fields, with the specified contact ID, for the supplier with the specified supplier ID.<br /><br /> The SciQuest Supplier ID, <i>id</i>, and the SciQuest Contact ID, <i>sqContactId</i>, are both required, and both are unique identifiers created by and stored in SelectSite.<br /><br /> Use GETSupplier to retrieve the ID associated with each supplier.<br /><br /> Use GETSupplieridContact to retrieve the SciQuest Contact ID associated with each contact in the response, using the optional associated ERP Contact ID field as a parameter.

> Prod: PUT https://api.sciquest.com/apps/rest/supplier/{id}/contact/{sqContactId}

> UIT: PUT https://api-uit.sciquest.com/apps/rest/supplier/{id}/contact/{sqContactId}

> The above endpoints return data structured like this:

```json
{
	"id": "",
	"name": "string",
	"contactType": "string",
	"contactId": "string",
	"isActive": false,
	"isPrimary": false,
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
<SupplierContactModelV1>
	<id>""</id>
	<name>"string"</name>
	<contactType>"string"</contactType>
	<contactId>"string"</contactId>
	<isActive>false</isActive>
	<isPrimary>false</isPrimary>
	<firstName>"string"</firstName>
	<lastName>"string"</lastName>
	<title>"string"</title>
	<email>"string"</email>
	<phone>"string"</phone>
	<tollFreeNumber>"string"</tollFreeNumber>
	<fax>"string"</fax>
	<notes>"string"</notes>
</SupplierContactModelV1>

```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
id | path | true | SciQuest Supplier ID | 
sqContactId | path | true | SciQuest Contact ID | 
body | body | true | Supplier Contact | 


### HTTP Request
 	
`PUT /supplier/{id}/contact/{sqContactId}`

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
200 | successful operation | #/definitions/SupplierContactModelV1 | 



## GET /supplier/{id}/full
This method retrieves all of the general, address, and contact data for the supplier with the specified supplier ID.<br /><br />The SciQuest Supplier ID, <i>id</i>, is required, and is a unique identifier created by and stored in SelectSite.<br /><br /> Use GETSupplier to retrieve the SciQuest Supplier ID associated with each supplier.<br /><br /> This method responds to the GET request with JSON or XML.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}/full

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}/full

> The above endpoints return data structured like this:

```json
{
	"addresses": [
		{
		"id": "",
		"name": "string",
		"addressType": "string",
		"addressId": "string",
		"isActive": false,
		"isPrimary": false,
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
		"id": "",
		"name": "string",
		"contactType": "string",
		"contactId": "string",
		"isActive": false,
		"isPrimary": false,
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
<SupplierEntityModelV1>
	<addresses>
		<address>
		<id>""</id>
		<name>"string"</name>
		<addressType>"string"</addressType>
		<addressId>"string"</addressId>
		<isActive>false</isActive>
		<isPrimary>false</isPrimary>
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
	</addresses>
	<contacts>
		<contact>
		<id>""</id>
		<name>"string"</name>
		<contactType>"string"</contactType>
		<contactId>"string"</contactId>
		<isActive>false</isActive>
		<isPrimary>false</isPrimary>
		<firstName>"string"</firstName>
		<lastName>"string"</lastName>
		<title>"string"</title>
		<email>"string"</email>
		<phone>"string"</phone>
		<tollFreeNumber>"string"</tollFreeNumber>
		<fax>"string"</fax>
		<notes>"string"</notes>
		</contact>
	</contacts>
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
</SupplierEntityModelV1>

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
200 | successful operation | #/definitions/SupplierEntityModelV1 | 


