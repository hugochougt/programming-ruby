
*initialize* method sets up an environment for object, leaving it in a useable state.

# 3.1 Objects and Attributes

Three types of accessor methods:

 *  attr_reader
 *  attr_writer
 *  attr_accessor

也可以定义一个变量名后接等号（=）的方法，来对变量赋值。（methods with equals signs at the end of their names）

# 3.2 Classes Working with Other Classes

To load external files, use `require` and/or `require_relative`.

# 3.3 Access Control

设计类接口的时候，需要慎重考虑向外界暴露 how much of your class。给予外界太多的 access 权限，有可能会增加系统的耦合性。A good rule of thumb is never to expore methods that could leave an object in an invalid state.

Three levels of protection:

 *  *Public methods* can be called by anyone - no access control is enforced. Methods are public by default (except for *initialize*, which is always private).
 *  *Protected methods* can be invoked only by objects of the defining class and its subclasses. Access is kept within the family.
 *  *Private method* cannot be called with an explicit receiver - the receiver is always the current object, also known as *self*. This means that private methods can be called only in the context of the current object; yo can't invoke another object's private methods.

Access control of Ruby is determined dynamically, as the program runs, not statically. You will get an access violation only when the code attempts to execute the restricted method.
