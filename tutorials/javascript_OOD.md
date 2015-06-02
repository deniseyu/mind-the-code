# Object-Oriented Design in JavaScript

Key Questions to explore:

1. What are the main purposes of Object-Oriented Design?
2. What is state?
3. What do the following terms mean:
  - Method
  - Class vs. Instance
  - Attribute
  - Prototype
  - Constructor
  - Explicit returns

#### In this tutorial, we will be building a very simple Object-Oriented system. We will have the following objects:

* A house
* A human
* A cat

The human and cat can enter and leave the house. The human can feed the cat, and the cat can say 'Meow!'

This tutorial will provide a very basic overview to how objects in JavaScript can be constructed, how the state of objects can be changed, and how objects can interact with one another.

Any time you see a phrase, especially if it's in bold, make sure you understand it before proceeding. Be sure to discuss thoroughly with your pairing partner and coach.

### Creating Objects

Let's create a Cat object using a **function declaration** as our **constructor**.

```
function Cat() {}
```

Why the term 'function'? Short answer: it's just how JavaScript was written. JavaScript, like all other coding languages, is full of quirks, and this is one of them.

If you have node installed, open up the Terminal, and type the following:

```
.load cat.js
```

The output should look something like this:

```
> function Cat () {}
undefined
```

Don't worry about the 'undefined' bit. We will cover that later.

This means that we have loaded our very first object into our REPL! Without exiting the REPL, now try typing:

```
var cat = new Cat ();
```

This assigns an **instance** of the class Cat. Think about the Class as a set of blueprints for how every instance of Cat ought to be made. However, a blueprint of a cat is not a cat! Using our JavaScript powers, we create an instance of a cat based on the blueprint.

By convention, Classes should be capitalized and instances should not be. For multiple-word classes or instances, JavaScript convention is to use camel-case, i.e. instanceOfVeryFluffyCat or ClassOfVeryFluffyCats.

__Confused yet? Make sure you understand the distinction between a class and an instance before you go any further.__

### Creating instance methods

Now let's give this cat some behavior. Let's give it a **method** so it can say 'Meow!'

To do so, we will create a method off of the **prototype**, which, in this case, is the same class of Cat.

```
Cat.prototype.meow = function() {
  return "Meow!"
}
```

Take a few minutes to talk through this with your group. Notice the use of the return keyword -- JavaScript uses **explicit returns**, which means that a function will return an undefined value unless we tell it specifically to return something else.

Remember how when we instantiated the Cat, we got an 'undefined' value?

You will need to reload the file into your node REPL each time you change the source code. Now, try creating a new instance of the cat, and calling .meow on it:

```
var fluffy = new Cat();
fluffy.meow();
```

Play around with this. What happens if you don't end the method call with ```()```? What if you call .meow() on the Cat class, rather than an instance?

Practice building some more methods, and play around with returning different data types.

__Make sure you understand how to build a new method off the prototype before proceeding.__

### Manipulating state

What does 'state' mean, in the real world? Chemical state, state of mind, state of wellbeing... what do these ideas have in common?

In programming, state is a concept that is at the core of Object-Oriented Design. All objects hold 'state' -- a collection of attributes that are true to an instance of an object at a certain point in time. Generally, these attributes can be modified.

This is a very useful concept when using code to model real-world objects.

Let's imagine that our cat has two states. He can be hungry, full, or satisfied. To store state in JavaScript, one way is to initialize our Cat with an attribute called 'hunger'. Let's modify our constructor.

```
function Cat () {
  this.hunger = "satisfied";
}
```

Every cat we initialize from this blueprint will start off with a satisfactory state of hunger.

Let's give him two new methods that will affect his hunger levels:

```
Cat.prototype.eat () {
  this.hunger = "full";
}

Cat.prototype.exercise () {
  this.hunger = "hungry";
}
```

Try reloading the file in the REPL again and playing around with this.

### CHALLENGE! Can you modify the hunger attribute and related methods to use integers instead of strings? Using flow control, can you set limits on his hunger level so he never exceeds 10 or goes below 0?

**Make sure you understand the concept of state before moving on.**
