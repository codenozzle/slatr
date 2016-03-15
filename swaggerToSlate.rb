#!/usr/bin/ruby

require 'net/http'
require 'json'

def swaggerToMarkdown(swaggerDefinition, tagDescriptions)
	output = ''
	generageMarkdownResources(swaggerDefinition).each do |key, values|
  		output += "# " + key + "\n\n";
  		output += tagDescriptions[key]
  		values.each do |value|
  			output += value
  		end
	end
	return output
end

def generageMarkdownResources(swaggerDefinition)
	paths = Hash.new
	if swaggerDefinition["paths"] != nil
		swaggerDefinition["paths"].each do |path, values|
	  	 	values.each do |operation, values|
	  	 		tag = values["tags"][0]
				if !paths.has_key?(tag)
					paths[tag] = Array.new
				end
				modelName = values["responses"]["200"]["schema"]["$ref"].rpartition('/').last
				jsonExample = generateJSONExample(modelName, swaggerDefinition["definitions"], "\t", true)
				xmlExample = generateXMLExample(modelName, modelName, swaggerDefinition["definitions"], "\t", true)
				paths[tag].push resourceBuilder(path, operation.upcase, values, jsonExample, xmlExample)
	  	 	end
		end
	end
	return paths
end

def generateXMLKeyValuePair(key, value, indent)
	return indent + "<" + key + ">" + value + "</" + key + ">\n"
end

def generateXMLExample(elementName, parsed, definitions, indent, isRoot)
	output = ""
	if !isRoot
		output += indent
	end
	output += "<" + elementName + ">\n"
	if definitions[parsed]["properties"] != nil
		definitions[parsed]["properties"].each do |key, values|
			case values["type"]
			when "string"
				output += generateXMLKeyValuePair(key, '"string"', indent)
			when "boolean"
				output += generateXMLKeyValuePair(key, 'false', indent)
			when "array"
				modelName = values["items"]["$ref"].rpartition('/').last
				output += indent + "<" + key + ">\n" 
				output += generateXMLExample(values["xml"]["name"], modelName, definitions, indent + "\t", false)
				output += indent + "</" + key + ">\n"
			else
				output += generateXMLKeyValuePair(key, '""', indent)
			end
		end
	end
	if !isRoot
		output += indent
	end
	output += "</" + elementName + ">\n"
	return output
end

def generateJSONKeyValuePair(key, value, indent)
	return indent + '"' + key + '": ' + value
end

def generateJSONExample(parsed, definitions, indent, isRoot)
	output = ""
	if !isRoot
		output += indent
	end
	output += "{\n"
	if definitions[parsed]["properties"] != nil
		length = definitions[parsed]["properties"].length
		count = 0
		definitions[parsed]["properties"].each do |key, values|
			case values["type"]
			when "string"
				output += generateJSONKeyValuePair(key, '"string"', indent)
			when "boolean"
				output += generateJSONKeyValuePair(key, 'false', indent)
			when "array"
				modelName = values["items"]["$ref"].rpartition('/').last
				output += indent + '"' + key + '"' + ": [\n"
				output += generateJSONExample(modelName, definitions, indent + "\t", false)
				output += indent + "]"
			else
				output += generateJSONKeyValuePair(key, '""', indent)
			end
			if count < length - 1
				output += ","
			end
			output += "\n"
			count += 1
		end
	end
	if !isRoot
		output += indent
	end
	output += "}\n"
	return output
end

def getParameters(values)
	output = ''
	if values != nil
		values.each do |param|
			output += param["name"] + ' | '
			output += param["in"] + ' | '
			output += (param["required"] ? "true" : "false") + ' | '
			if param["description"] != nil
				output += param["description"] + ' | '
			end
			output += "\n"
		end
	end
	return output
end

def getPipedValues(values)
	output = ''
	if values != nil
		values.each do |value|
			output += value + ' | ' + "\n"
		end
	end
	return output
end

def getResponses(values)
	output = ''
	values.each do |key, response|
		output += key + ' | '
		output += response["description"] + ' | '
		if response["schema"] != nil && response["schema"]["$ref"] != nil
			output += response["schema"]["$ref"] + ' | '
		end
		output += "\n"
	end
	return output
end

def resourceBuilder(path, operation, values, jsonExample, xmlExample)
output = <<-OUTPUT

## #{operation + ' ' + path}
#{values["description"]}

> Prod: #{operation} https://api.sciquest.com/apps/rest#{path}

> UIT: #{operation} https://api-uit.sciquest.com/apps/rest#{path}

> The above endpoints return data structured like this:

```json
#{jsonExample}
```

```xml
#{xmlExample}
```

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
#{getParameters(values["parameters"])}

### HTTP Request
 	
`#{operation + ' ' + path}`

### Media Types
Produces | 
-------- |
#{getPipedValues(values["produces"])}

Consumes |
-------- |
#{getPipedValues(values["consumes"])}

Responses | Description | Model |
--------- | ----------- | ----- |
#{getResponses(values["responses"])}

OUTPUT

return output
end

tagDescriptions = Hash.new
tagDescriptions["Supplier"] = "The Supplier interface is used by an external client to retrieve information from SelectSite about one or more suppliers, or to modify information in SelectSite about one or more suppliers."

url = ARGV[0]
if url != nil
	#parsed = JSON.parse(Net::HTTP.get(URI(url)))
	parsed = JSON.parse(File.open('swagger.json').read())
	File.open(File.join("./source/includes", '_paths.md'), 'w') do |f|
	  	f.puts swaggerToMarkdown(parsed, tagDescriptions)
	end
else
	puts 'Please input a Swagger url'
end
