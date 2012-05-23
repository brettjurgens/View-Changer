View-Changer
============

Changes from one 'view' to another and updates the url. Requires jQuery + jQuery UI. Written in CoffeeScript.

Needs:
* jQuery
* jQuery UI
  * Core
  * Effects Core
  * "Fade"
  * "Slide"

Up next, jQuery UI independence.

See it in action at <http://brettjurgens.com>

Compile Instructions
--------------------
Make sure to compile with the -b switch!
	<pre><code>$ coffee -c -b view_change.coffee</code></pre>

That's it...!

HTML Instructions
-----------------
In your HTML, give your first "view" the class "current" and assign all views the attribute "number", in order of their appearance.

i.e.
<pre><code>&lt;div id="foo" class="current" number="1"&gt;
	foo
&lt;/div&gt;</code></pre>

To switch elements, pass the id of the desired element to switch to, so if you wanted to switch to #bar:

<pre><code>&lt;span onClick="changeView('bar')"&gt;change to bar&lt;/span&gt;</code></pre>

Pull requests are welcomed!