## Chapter 1

### Languages - Lisp (List Processor)

* Primitive Elements
* Means of combinations
* Means of abstraction

A combination consists of operators(func name, e.g ''+'' symbol)  and operands(arguments).

Lisp editors help with indenting operands in a combination.

#### Breakdown of Aspects of a Language

* Primitive Objects
    * primitive procedures
    * primitive data
* Means of Conbination
    * procedure composition
    * construction of compound data
* Means of Abstraction
    * procedure definition
    * simple data abstraction
* Capturing Common Patterns
    * high order procedures
    * data as procedures

### "How to" knowledge

We want to describe a series of specific, mechanical steps to be followed in order to deduce a particular value assaciated with a problem.
using a predefined set of operations.

This _recipe_ for describing "how to" knowledge we call a **procedure**.

We _evaluate_ an expression that applies that procedure to some values. 
The actual sequence of steps within the computer that cause the "how to" knowledge to evolve is called a **process**.

To capture _procedures_ and describe _processes_, we will need a **language**.

Language will have the following:

* Vocabulary - a set of words on which we descrive our description.
* Syntax - Rules for writing compound expressions. Set of rules for legally connecting elements.
* Semantics - Rules for assigning meaning to constructs. Deduce meaning associated with elements.
* Procedures - Rules for capturing process of evaluation(computation). 

Our goal is to manage/control complexity in large systems by means of combination and abstraction.

**Abstraction** will allow us to treat complext things as primitives.

### Key ideas in 6001

* Management of complexity.
    * Procedure and data abstraction. Black boxing
    * Conventional interfaces & programming paradigms
        * manifest typing
        * streams
        * object oriented programming
    * Metalinguistic abstraction - Comes into play when above tools is not sufficient to describe relationship/communication of complex systems, where we create our set of tools of interpretation.
        * layered languages for new problems
        * hardware/register languages
        * Scheme evaluator(s)
        * manipulcation of programs: compilation

### Rules for Scheme

1. Legal expressions have rules for constructing from simpler pieces.
2. Almost every _expression_ has a _value_, which is "returned" when an expression is "evaluated".
3. Evey value has a _type_.

**Semantics** of the language tells us how to deduce the meaning associated with each expression.

**Semantics** of the language tells us how to determine the value associated with a particular computation(evaluation).





