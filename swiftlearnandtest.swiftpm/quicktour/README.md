# Social Graph Service

Project to demostrate the key features of Swift programming language.

## Components (Packages):
1. Data model (library module): users
2. Http server: responde queries
3. Command line utility: send request to the server

## Key concepts:

### 1. Value types: 
    1.1 Enums, Collections, Structs, Basic types(Integers, Booleans and Floating point numbers)
    1.2. Prefer 'struct' over 'class'
    1.3. Prefer 'let' over 'var'

### 2. Errors and optionals:
    2.1. Error protocol.
    2.2. throws / throw
    2.3. do / catch / try
    2.4. guard / else

### 3. Code organization:
    3.1. Modules: contanin source code and could also depend on other modules.
    3.2. Packages: collection of modules can be distributes as packages
        * Modules in one package can also  have dependencies on modules in another package
    3.3. Swift package manager

### 4. Classes: 
    4.1. To represent shared mutable states
    4.2. Reference type
    4.3. ARC (Automatic reference counting)

### 5. Protocols:
    5.1. Protocol keyword.
    5.2. extension/where.

### 6. Concurrency:
    6.1. Task (we can wait or cancel a task)
    6.2. async/await.
    6.3. Sendable
    6.4. actor

### 7. Extensibility
    7.1. Property wrappers: @Argument, etc
    7.2. Result builders: Regex {...}, etc
    7.3. Macros: 
