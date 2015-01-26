
###
  Conditions
###

# you can reverse if
if 3 < 4 then 'yes'
if 1 == false then 'yes' else 'no'
#somethink like !()
unless true
	'unless'

# equal to ===
if 1 is true
	console.log 'true'
# not equal to !===
if 1 isnt true
	'not true'


###
  function & function invoke
###
square = (x)-> x * x
console.log square(3)

#function without the return value and with the default value
getTime = (start = 0, end = 3)->
	end - start

#splat multiple arguements __slice
sum = (num...)->

#immidiate invoke function
immediate = do ->
	imme = ['hi', 'hello', 'goo']

#function with default value
defaultValueFn = (foo='baa') ->foo

###
	objects
###
myObj = {
	foo: 'bar'
	alpha: 1221
	omega: (x, w)-> x * 7
}

###
  Strings
###
#string concat no + needed
longString = 'this is a
  very long string
  you see '


###
  Loops
###
#for the value
for name in ['cat', 'dog', 'bird']
	console.log "#{name}"

#for with the index
for name, i in ['cat', 'dog', 'bird']
	console.log "#{i} is #{name}"

release = (x)-> 'hello'

#releaes is a function being excuted here
release prisoner for prisoner in ["Roger", "Roderick", "Brian"]

#while loop
count = 0;
while count < 6
	count++
	console.log (count)

#will compile into a loop that pushing the value into array
count2 = 6;
somefetch = while count2 -= 1
	console.log (count2)

#very useful ? to test for null or undefine value
testNull = null ? 1

###
  Reproduce some Jquery code here
$(function() {
	$.get('example.php', function(data) {
	if (data.errors != null) { alert("There was an error!");
	} else {
	$("#content").text(data.message); }
	},
  'json') })
###

#$ ->
#	$.get 'example.php'
#	,(data)->
#		if data.errors?
#			alert 'There was an error'
#		else
#			$('#content').text data.message
#	,'json'
#	return
###
  immediate execution
###
#ab do -> 'hello'
#
#
#$ ->
#	$.get 'example.php', (data) ->
#		if data.errors?
#			alert "There was an error!"
#		else
#			$("#content").text data.message
#	, 'json'
#	return


###
  String Interpolation
###

string1= 'String One More string'
string2 = 'String Two'

console.log "first string #{string1 if true }"
console.log "two string #{string2}"
console.log "try some's \" \"good string #{if 'kfkfk'  then escape('kfkakkf') }"
console.log "Conversion to a number form string #{+'100'}"
mutiline= """
<ul>
<li>list one</li>
<li>List 2</li>
</ul>
"""
console.log mutiline

#exist of assign
et=null;
et?='yes it does'
console.log "if it exiists: #{et}"
# or assign
et||=0
#same as
et||(et=0)
console.log et?

et={
	a:'foo'
	b:'bar'
}

#if dt exist then print dt.a else it goes undefine: better error catching
console.log dt?.a
console.log et?.a isnt 'foo'
#is === isn't !== not !

###
  Case switch
###
today='wed`'
switch today
	#there are two cases here
	when 'mon','fri'
		console.log 'monday'
	when 'tue'
		console.log 'tue'
	else
		console.log 'today is today'

#I added a line for photo-crop
# more line for photo-crop
# this is the first release
# apply fix 1.01
# This is the commit for photo-grallery
# some code for the  photo-swipe
# added some more code for photo-swipe