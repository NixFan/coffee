###
  Array
###

list = [1, 2, 3, 4, 5]
#actually creates an array 1,2,3
range = [1..10]
#perform a replace here
range[0..1] = ['p', 'w']
#perform a slice
firstThree = ['a', 'b', 'c', 'd'].slice(0, 2);

#similar to php array_in function use 'not in' or 'in'
if 'g' not in firstThree
	console.log('found it in array')

#perform a array foreach
foreachFn = (item)-> item + 'kkk'
foreachFn(item) for item in firstThree

#identical to above using 'do' to invoke immediatel
for item,key in firstThree
	do (item)->
		console.log(item + 'Kilogram and s')
		return


#array map
result = (item.name for item in firstThree)
console.log('first three' + firstThree)

#index array assignment to variable aka Destructive Assignment

HttpHeader = [200, {'Content-Type': 'text/json'}, 'status OK']
[status,header,body]=HttpHeader
console.log("Header: #{header['Content-Type']} Status: #{status} Body: #{status}")

# Replacing Array value
myArray = [1..33]
myArray[2..3] = ['a', 'b']
console.log myArray.join ', '

#injecting Array value last index use -1
myArray[2..-1] = ['k', 'j']
console.log myArray.join ', '

#Destructive object assignment
desObj = {
	name: 'peter'
	contact: {
		address: 'central'
		phone: '11212121'
	}
}

console.log(desObj)
{name,contact:{address}}=desObj
console.log("Destructive Assignment name: #{name} contact-address: #{address}")

#using the 'for..in' to loop array and 'by' keyword to filter
#Key and object is actually in the opposite place in for..in and for..
myArray = [1..20]
for value,key in myArray by 2
	console.log "Some Key: #{key} Value: #{value}"

#Iterating trough object using 'for..of'
myObj = {a: 1, b: 2, c: 3, d: 4}
for key,obj of myObj
	console.log "Object value: #{obj}"
