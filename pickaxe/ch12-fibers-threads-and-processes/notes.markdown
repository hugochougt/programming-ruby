## Fibers

Fibers(通常称为纤程) let you suspend execution of one part of your program and run some other part.

Although the name suggests some kind of lightweight thread, Ruby's fibers are really just a very simple coroutine mechanism.

Fibers are often used to generate values from infinite sequences on demand.
