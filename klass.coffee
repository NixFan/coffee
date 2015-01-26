class Animal
	constructor: (@name)->
		@lastname = 'lastname'
#		the above statement is equivalent to @name=name

#prototype value with no this
	instancePro: 'nice stuff'
	protoMethod: (pro)->
#		function that return nothing
		console.log @name
		a = 'hello'
		return

#	a scope this.walk not only in the prototype chain
# this.walk ensure it's always excute in the class instance

	walk: =>
		console.log ('hello')
		console.log 'walking ', @name

class Bird extends Animal
	#	constructors:(@name)->
	#		super('Animal')
	checkLastname: ()-> @lastname


#create new class instance
dog = new Animal('good')

dog.protoMethod('proto')
dog.walk()

bird = new Bird('betty')
bird.walk()
console.log bird.checkLastname()

#chainning
obj = ()->
myObject =
	{
	doSomething: ()-> 'fooo'
	}.doSomething()

obj2 =
{
	doSome: (foo, callback)->
		objCb = {
			fn:(cb)->
				cb()
				return
		}
		console.log foo
		callback.call(@, foo, objCb)
		return
}

obj2.doSome(
	'good stuff', (x,cb2)->
		console.log('tell me it:')
		cb2.fn(
			(cb)->
		)
)

class Camera
	constructor:(brand='nikon',type='zoom')->
		@brand=brand
		@type=type
		privateVar='Private variable'
		return
# -> still accessible when extend but not visible on console.log
	getType:->@type
#	=> is visible on the child class but also maintain the scope to the class instance itself
	shoot:()=>'Shooting: '+@name
	charge:()=> 'Charging'
	callSuper:(superArg)=>
		console.log "This is the parent class: #{superArg}"
	getPrivate:()->privateVar?
#	Class level utility feature can also call 'super'
	@classLevel:()->
		console.log('class level function')
		return


canon=new Camera(
	'cannon','Mannual'
)
console.log canon.getPrivate()

#Extend class
class VideoCam extends Camera
#	constructor:(brand='canon',type='video')->
	shoot:()->'We are videos tapping'
	callSuper:(superArg)->
#		calls the parent method and also be able to pass in arguments if desire
		super('hello super arg')
		console.log "this is the child: #{superArg}"


videoCam=new VideoCam('JVC')
console.log(videoCam.getType())
console.log(videoCam)
videoCam.callSuper('Incetance super arg')

#this will fail
#console.log VideoCam.shoot()
#this will work since it's classLevel by using @ which is this
VideoCam.classLevel()

#Can see how the class is structured
conole.log VideoCam
#all method actually inside __super__ if not using class level @
console.log VideoCam.__super__.shoot()