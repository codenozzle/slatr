# Supplier
## GET /supplier/{id}
Responding with JSON or XML, this GET retrieves a supplier's general data. The SciQuest ID, a unique, SelectSite-created ID, of the supplier is a required input for this action. Depending on which field your ERP ID is stored in SelectSite, GETSupplierNumberid or GETThirdParty can be used to retrieve the associated SciQuest ID for each supplier.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}

> The above endpoints return data structured like this:

```json
{
	"addresses": [
		{
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
200 | successful operation | #/definitions/SupplierEntityModelV1 | 



## PUT /supplier/{id}
Using JSON or XML, this PUT updates all or selected general data fields for an existing supplier. The SciQuest ID, a unique, SelectSite-created ID, of the supplier is a required input for this action. Depending on which field your ERP ID is stored in SelectSite, GETSupplierNumberid or GETThirdParty can be used to retrieve the associated SciQuest ID for each supplier.

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
Responding with JSON or XML, this GET retrieves all address data for an existing supplier. The SciQuest ID, a unique, SelectSite-created ID, of the supplier is a required input for this action. Depending on which field your ERP ID is stored in SelectSite, GETSupplierNumberid or GETThirdParty can be used to retrieve the associated SciQuest ID for each supplier.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}/address

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}/address

> The above endpoints return data structured like this:

```json
{
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



## PUT /supplier/{id}/address/{sqAddressId}
Using JSON or XML, this PUT updates all or selected address fields for an existing supplier address. The SciQuest ID and SciQuest Address ID, both unique, SelectSite-created IDs, are required inputs for this action. Depending on which field your ERP ID is stored in SelectSite, GETSupplierNumberid or GETThirdParty can be used to retrieve the associated SciQuest ID for each supplier. GETAddressid can be used to retrieve the associated SciQuest Address ID for each address, using the associated ERP Address ID.

> Prod: PUT https://api.sciquest.com/apps/rest/supplier/{id}/address/{sqAddressId}

> UIT: PUT https://api-uit.sciquest.com/apps/rest/supplier/{id}/address/{sqAddressId}

> The above endpoints return data structured like this:

```json
{
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
Responding with JSON or XML, this GET retrieves all contact data for an existing supplier. The SciQuest ID, a unique, SelectSite-created ID, of the supplier is a required input for this action. Depending on which field your ERP ID is stored in SelectSite, GETSupplierNumberid or GETThirdParty can be used to retrieve the associated SciQuest ID for each supplier.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}/contact

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}/contact

> The above endpoints return data structured like this:

```json
{
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



## PUT /supplier/{id}/contact/{sqContactId}
Using JSON or XML, this PUT updates all or selected contact fields for an existing supplier contact. The SciQuest ID and SciQuest Contact ID, both unique, SelectSite-created IDs, are required inputs for this action. Depending on which field your ERP ID is stored in SelectSite, GETSupplierNumberid or GETThirdParty can be used to retrieve the associated SciQuest ID for each supplier. GETContactid can be used to retrieve the associated SciQuest Contact ID for each contact, using the associated ERP Contact ID.

> Prod: PUT https://api.sciquest.com/apps/rest/supplier/{id}/contact/{sqContactId}

> UIT: PUT https://api-uit.sciquest.com/apps/rest/supplier/{id}/contact/{sqContactId}

> The above endpoints return data structured like this:

```json
{
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
Responding with JSON or XML, this GET retrieves a supplier's general, address and contact data. The SciQuest ID, a unique, SelectSite-created ID, of the supplier is a required input for this action. Depending on which field your ERP ID is stored in SelectSite, GETSupplierNumberid or GETThirdParty can be used to retrieve the associated SciQuest ID for each supplier.

> Prod: GET https://api.sciquest.com/apps/rest/supplier/{id}/full

> UIT: GET https://api-uit.sciquest.com/apps/rest/supplier/{id}/full

> The above endpoints return data structured like this:

```json
{
	"addresses": [
		{
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


