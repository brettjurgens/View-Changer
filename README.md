View-Changer
============

Changes from one 'view' to another and updates the url. Requires jQuery + jQuery UI. Written in CoffeeScript.

See it in action at brettjurgens.com

Instructions
------------
In your HTML, give your first "view" the class "current" and assign all views the attribute "number", in order of their appearance.

i.e.
	<div id="blah" class="current" number="1">
		BLAH
	</div>

Then, run compile it, with the -b switch!
	<pre><code>$ coffee -c -b view_change.coffee</code></pre>

That's it...!

Pull requests are welcomed.