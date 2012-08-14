# cukeAPI

cukeAPI is a tool used to develop and test an API using Test-Driven Development (TDD).

Maybe one day cukeAPI will also generate the API, but that's over the horizon.

## What's the big idea?

- You write Features, Scenarios and Steps that describe how you API should work.
- You write code to implement those features.

Take the current confusion about REST APIs: everyone seems to have one, yet when you look at the 
APIs themselves you find they're not very RESTful.  

An example is an API that doesn't use HTTP verbs properly, such as this CREATE: 

`GET /api/person/create?name=bob`

instead of

`POST /api/person/name=bob`

## Who gives a crap?

This is important because if you, as an API provider, say to me, the API consumer, that your API is
RESTful then (a) I'm more likely to use it, because I grok REST, and (b) my expectations are that
I can just discover and work with your API and won't have to use WADL/WSDL or any other method of
learning your API first.

So let's be frank: if you say "My API is RESTful" and that is a hollow statement, a marketing gimmick, then you'll have 100kg of unhappy Yorkshireman on your doorstep: and nobody wants that, trust me!

Here's some other examples of what cukeAPI will test for, basically these are RESTful rules:

- adherance to using the correct HTTP verbs for Create, Read, Update, Delete (CRUD).
- adherance to using the same URI to access the resource, and not having service calls like "create"
- adherance to having specific human usable guidance on the API front page, advising the consumer about API specifics on authentication etc.
- adherance to Hypertext As The Engine Of Application State (HATEOAS) - ie. I should be able to traverse your API and learn as I go, and NOT use WADL/WSDL or some other API learning tool.
- the list goes on, and will be fully detailed as the project progresses.

** MORE TO WRITE, AS WE GO **
