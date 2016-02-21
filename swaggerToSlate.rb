#!/usr/bin/ruby

require 'net/http'
require 'json'

def swaggerToMarkdown(parsed)
	output = ''
	remapSwaggerPaths(parsed["paths"]).each do |key, values|
  		output += "# " + key;
  		values.each do |value|
  			output += value
  		end
	end

	output += "# Models \n"
	remapSwaggerModels(parsed["definitions"]).each do |key, values|
  		output += "## " + key + "\n";
  		values.each do |value|
  			#output += value[]
  		end
	end
	return output
end

def remapSwaggerPaths(parsed)
	paths = Hash.new
	if parsed != nil
		parsed.each do |path, values|
	  	 	values.each do |operation, values|
	  	 		tag = values["tags"][0]
				if !paths.has_key?(tag)
					paths[tag] = Array.new
				end
				paths[tag].push resourceBuilder(path, operation, values)
	  	 	end
		end
	end
	return paths
end

def remapSwaggerModels(parsed)
	models = Hash.new
	if parsed != nil
		parsed.each do |key, values|
			if !models.has_key?(key)
				models[key] = Array.new
			end
			models[key].push values
		end
	end
	return models
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

def resourceBuilder(path, operation, values)

output = <<-OUTPUT

##  #{values["summary"]}

### #{path}

```shell
curl "http://example.com/api/kittens"
  -H
```

> The above command returns JSON structured like this:

```json
{
	"id": 1,
	"name": "Fluffums",
	"breed": "calico",
	"fluffiness": 6,
	"cuteness": 7
}
```

#{values["description"]}

### Parameters

Parameter | Location | Required | Description
--------- | --------- | --------- | ---------
#{getParameters(values["parameters"])}

### HTTP Request
 	
`#{operation + path}`

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

<aside class="success">A happy Questie, is an authenticated Questie</aside>
OUTPUT

return output
end

url = ARGV[0]
if url != nil
	parsed = JSON.parse(Net::HTTP.get(URI(url)))
	File.open(File.join("./source/includes", '_paths.md'), 'w') do |f|
	  	f.puts swaggerToMarkdown(parsed)
	end
else
	puts 'Please input a Swagger url'
end



