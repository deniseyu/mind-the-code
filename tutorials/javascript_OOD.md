# Object-Oriented Design in JavaScript

A caveat before you begin: There are many, many ways to do OOD in JavaScript. This is not the only way. This tutorial is intended to just get you started with a basic introduction to OOD. This tutorial also makes no assumptions about experience level with JavaScript; however, certain parts are deliberately under-explained with the intent to stimulate discussion among your group.

**This is not a definitive guide, and there will probably be many places where your coach disagrees! That's OK. I highly encourage you to explore, go off on tangents, and play in the console. It is more important that you use today to think critically about the concepts presented than to finish the tutorial.**

If you are interested in learning more about JavaScript OOD, please get in touch: hello@codebar.io.

### Key Questions to explore:

1. What are the main purposes of Object-Oriented Design?
2. What is state?
3. What do the following terms mean:
  - Functions
  - Function declaration
  - Object
  - Method
  - Property
  - Prototype
  - Constructor
  - Variable
  - Explicit return

#### In this tutorial, we will be building a very simple Object-Oriented system. We will have the following objects:

* A house
* A human
* A cat

The human and cat can enter and leave the house. The human can feed the cat, and the cat can say 'Meow!'

This tutorial will provide a very basic overview to how objects in JavaScript can be constructed, how the state of objects can be changed, and how objects can interact with one another.

Any time you see a phrase, especially if it's in bold, make sure you understand it before proceeding. Be sure to discuss thoroughly with your pairing partner and coach.

### If you have Node installed...

You will be able to load files into the terminal to play around. To do so, please refer to the Node installation instructions in this repo.

If you don't have Node, that's OK. You can still follow this tutorial. Everywhere you see the term "REPL", use the Chrome console or Firefox console instead. To load files, you will need to create an HTML document in the same directory where you will be saving your JS files.

```
<!DOCTYPE HTML>
  <HTML>
    <head>
      <script src='cat.js'></script>
      <script src='house.js'></script>
      <script src='human.js'></script>
    </head>
    <body>
      Hello JavaScript
    </body>
  </HTML>
```

Add the script tags as you go along and create the required files. Open the HTML document from the file system, and every time this tutorial says "reload the REPL", make sure you have required the relevant files, then just simply refresh the browser.

Your file structure should look something like this:

```
-- mind-the-code/
   |--- index.html
   |--- house.js
   |--- cat.js
   |--- human.js
```

### Creating Objects

Let's create a Cat object using a **function declaration** as our **constructor**.

```
function Cat () {}
```

Why the term 'function'? Short answer: it's just how JavaScript was written. JavaScript, like all other coding languages, is full of quirks, and this is one of them.

If you have Node installed, open up the Terminal, and type the following:

```
.load cat.js
```

The output should look something like this:

```
> function Cat () {}
undefined
```

Don't worry about the `undefined` bit. We will cover that later.

This means that we have loaded our very first object into our REPL! Without exiting the REPL, now try typing:

```
var cat = new Cat ();
```

(It doesn't really matter what you call the variable. Variable names are arbitrary in all programming languages, so we could say ```var ginger = new Cat ();``` or ```var luciferTheEvilCat = new Cat ();```. However, it is good practice to pick variable names that are clear and intuitive.)

This creates a new Cat object. Think about the Cat function as a blueprint for how every Cat object ought to be made. However, a blueprint of a cat is not a cat! Using our JavaScript powers, we create an instance of a cat based on the blueprint.

By convention, functions that you use to create new objects should be capitalized. For multiple-word functions, JavaScript convention is to use PascalCase, i.e. VeryFluffyCat. The variables themselves should not be capitalized, and multiple-word variables use camelCase, i.e. pussInBoots.

__Confused yet? Make sure you understand the distinction between a constructor function and an object before you go any further.__

### Creating methods

Now let's give this cat some behavior. Let's give it a **method** so it can say 'Meow!' To do so, we will define a method on the **prototype**.

```
Cat.prototype.meow = function () {
  return "Meow!";
}
```

Take a few minutes to talk through this with your group. Notice the use of the return keyword -- JavaScript uses **explicit returns**, which means that a function will return an `undefined` unless we tell it specifically to return something else.

Remember how when we create a new Cat, we got an `undefined` value?

You will need to reload the file into your Node REPL each time you change the source code. Now, try creating a new Cat object, and calling .meow on it:

```
var fluffy = new Cat();
fluffy.meow();
```

Play around with this. What happens if you don't end the method call with ```()```? What if you call .meow() on the Cat function, rather than a new Cat object?

Practice building some more methods, and play around with returning different things.

__Make sure you understand how to add a new method to the prototype before proceeding.__

### Manipulating state

What does 'state' mean, in the real world? Chemical state, state of mind, state of wellbeing... what do these ideas have in common?

In programming, state is a concept that is at the core of Object-Oriented Design. All objects hold 'state' -- a collection of properties that an object has at a certain time. Generally, these properties can be modified.

This is a very useful concept when using code to model real-world objects.

Let's imagine that our cat has two states. He can be hungry, full, or satisfied. To store state in JavaScript, one way is to define our Cat with an property called 'hunger'. Let's modify our constructor.

```
function Cat () {
  this.hunger = "satisfied";
}
```

Every new cat we create from this blueprint will start off with a satisfactory state of hunger.

Let's give him two new methods that will affect his hunger levels:

```
Cat.prototype.eat = function () {
  this.hunger = "full";
}

Cat.prototype.exercise = function () {
  this.hunger = "hungry";
}
```

Try reloading the file in the REPL again and playing around with this.

#### CHALLENGE! Can you modify the hunger property and related methods to use integers instead of strings? Using control flow, can you set limits on its hunger level so it never exceeds 10 or goes below 0?

**Make sure you understand the concept of state before moving on.**

### Object Interactions

Every time we model a system, we should try to conceptualize the design of the system in the simplest terms possible. You may have heard the term "MVP" before -- Minimum Viable Product. For a tech startup, it means prototyping a product with the minimum possible functionality to work. MVP-oriented thinking is useful in a variety of other contexts because it asks us to strip away all of the excess, and really focus on what we are trying to achieve at its core.

In this naïve example, what is the most basic interaction we need to model between the person and the cat? Perhaps the cat and human interact in only one way: when the human feeds the cat. After all, cats are rather independent animals :-)

So, to do so, let's construct our Human, in a new file called `human.js`:

```
function Human () {}
```

Load the Human file into the REPL and practice creating new Human objects again.

Let's give her a method:

```
Human.prototype.feed = function (pet) {
  pet.eat();
}
```

Or... if you've done the challenge from above, tweak this method to increment the hunger level by a few points.

Talk through this method with your group. What is 'pet' in this context, and what is happening to it in the body of the method?

Reload the Human and the Cat, create one of each object, and practice calling 'feed' from the human object with the cat object being passed in as the argument. Check the cat's hunger level after this!

Play around in the console A LOT here! Try calling a method on an object that you have not predefined. What happens? Can you find a way to **dynamically** define a method in the REPL?

**Make sure you understand how an argument works before proceeding!**

#### Challenge: Can you identify any potential problems with writing a method this way?

Finally, let's finish up our object interactions segment with the House object.

```
function House () {
  this.contents = [];
}
```

We create new House objects with a property of contents, set initially to an empty array. Can you take a guess at what's going to happen?

Let's think about what the house can do -- in coding terms, this will guide us towards deciding what methods to give the house and why. A house can contain things, a house can admit people (and cats), and a house can allow people and cats to leave.

```
House.prototype.admit = function (someone) {
  this.contents.push(someone);
}

House.prototype.eject = function (someone) {
  // your turn!
}

```

Work with your pairing partner and coach to fill in the rest of the second method! (Stack Overflow is your friend!)

Also.. notice what JavaScript returns for the `admit` function. What is going on?!?

Once again, load the files into your REPL and practice playing around.

#### Challenge: Can you add an additional property to the Cat and the Human to indicate whether they are indoors or outdoors? How and where would this property get toggled?

### Wrap-Up

To recap, in this tutorial we've covered the following technical points:

* How to create an object
* How to create a new object
* How to write a prototypical method
* How to create and manipulate state within an object
* How objects can interact with each other

We recommend revisiting the Key Questions at the beginning of this tutorial. We always recommend playing around in the Node console as much as possible. Try to break your code -- you will be surprised at what strange (and wonderful?) things JavaScript will do.

If you feel like you've got a decent grasp on all the concepts, feel free to try one of the projects.
