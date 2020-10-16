# Singleton Design Patter examples

>In software engineering, the singleton pattern is a software design pattern that restricts the instantiation of a class to one "single" instance. This is useful when exactly one object is needed to coordinate actions across the system. Source: [wikipedia](https://en.wikipedia.org/wiki/Singleton_pattern)

This directory contains an example of the Singleton Desgin Pattern implemented in different languages.


## The problem

There are two apps that need to log data in the same location.
The order in which the data is logged is relevant, so it must be logged in a coordinated manner.

## The approach

A Logger class is implemented as a singleton.
Each app contains the unique instance of the Logger class.

## Demo

When running the programme, the Logger class will print when it is initilized: this happens only once because there is only one instance, even though ~~an~~the instance is retrieve by the two App classes.
