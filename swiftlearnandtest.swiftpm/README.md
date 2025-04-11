#  Swift learn and test

The Swift learn and test project.

## Class(object is passed by reference)
1. struct (alternative to a class, it is passed by value)
2. init for class constructor.
3. self (instead of this(Kotlin))
4. protocol/mutating (instead of interface(Kotlin), mutating just impact on structs)
5. Swift DOES NOT have a super class of all classes (Like: NSObject(Objective-C), Any(Kotlin), Object(Java))
6. Void (instead of Unit(Kotlin), void(java))
7. let/var (instead of val/var(Kotlin))
8. newValue for default parameter name in set method(instead of field(Kotlin))
9. do/catch (instead of try/catch(Kotlin))
10 extension (instead of extention function (Kotlin))
11. ?? (instead of elvis-operator '?:' (Kotlin))
12. nil (instead of null(Kotlin))
13. public, private, internal, package (instead of: public, private, internal, protected (Kotlin))
14. Collections: Array/Dictionary/Set/String (instead of: Array/List/Map/Set (Kotlin))

### New:
1. willSet/didSet (to run code before/after set the newValue to a attribute)
2. case (use it in enum class)
3. try? (use it for optional result, if error, result is nil)
4. async/async let/await/Task (use it for concurrency)
5. mutating (use it in protocol methods definition)
6. Error (protocol to implement errors)
7. defer (use it into a func to execute code before function finish)
8. \_ (use it for unnamed parameter/variable)
9. "{Character}" (use it for characters instead of '{Char}' in Kotlin)
10. guard (use it like if/else in Kotlin)

## Closure(Instead of lambda)
1. in (instead of arrow operator '->'(Kotlin))
2. $0, $1... (Instead of it(Kotlin))

## Functions
1. func to declare a function(instead of fun(Kotlin))
2. -> to define the returned value(insted of :(Kotlin))
3. : to define default paremeter value(instead of =(Kotlin))

## Data structure
1. Dictionary (instead of Map(Kotlin))

## Others
1. \\(...) to string interpolation (instead of ${...}(Kotlin))
2. Character (instead of Char(Kotlin))
3. Bool (instead o Boolean(Kotlin))
4. weak (use it to define weak reference in classes)
