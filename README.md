robotframework-simple-page-object-example
=========================================

A simple example of page objects implemented as resource file for Robot Framework, converted from a Java test example (http://assertselenium.com/automation-design-practices/page-object-pattern/).

**Prerequisites:**

* some version of Python installed (2.x or 3.x)
* a version of RobotFramework (RF) installed
* a version of RF's Selenium2Library installed (Python or Java version should technically not matter)
* go to www.robotframework.org for installation instructions

**To run the test:** after getting a copy of the files off this Github repo, simply run like `pybot PageObjectExampleTest.extension`, where extension is your desired file format to work with (.robot, .txt, .tsv, or .html).

This may not be the best (simple) example, and there are other examples you should see like:

http://www.beer30.org/2012/05/26/using-the-page-object-pattern-with-robot-framework/

https://blog.codecentric.de/en/2010/07/how-to-structure-a-scalable-and-maintainable-acceptance-test-suite/

but I wanted to offer:

an example with the code/files available to run "as is" after grabbing them from the repo, and more importantly...

an example that highlights good page object design practices - normally done in code but adapted as resource file(s) for robot framework, e.g. 
* locators defined separately as members (variables/properties) of page object, not embedded within the methods that use them
* page objects don't perform assertions/verifications, but may throw exception/failure if in wrong state (no example of throwing failure yet)
* tests do all the assertions & verifications
* we specifically call out what test library (i.e. Selenium2Library) and page object (i.e. resource file) methods (i.e. keywords) we invoke for clarity (though more text/typing) just like we do in code for things like `driver.findElement(By.id("some ID")).click()`, in Java, called by a page object method, etc. to provide a (re)semblance to object-oriented programming often used with page objects in code
* an example showing code/keyword reuse within a page object

It is still recommended for one to go through the blog posts referenced above to get visual diagrams, more details, and examples of perhaps more complex implementations with multiple page objects.

I do hope that this example here will be useful to those not sure how to adapt page objects from code to resource files.

**NOTES:**

* the files can be organized within folders for a hierarchical structure, but I kept them all in one place for simplicity. e.g. separate folders for page objects and tests, and perhaps separate folders for different page objects and different tests.
* page objects are supposedly to return other page objects when navigating away to another page (object), though one doesn't have to follow the page object patterns 100%, which is a good thing. With the Robot Framework resource file and test library input/output design, where only simple data structures are used, it's likely not feasible to adopt returning "page objects/resources" from another one. Best to just have to know what page object resource files and their keywords to invoke when transitioning between page objects.


