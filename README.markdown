#cl-with-website

This project is a thin wrapper around various libraries that can be
used for screen scraping. The libraries used are drakma (for
HTTP requests), closure-html (for parsing the raw HTML into DOM
nodes), and xpath (for querying nodes). It can be used as follows:

    (use-package :cl-with-website)
    	
    (with-website (dom "http://www.google.com")
      (xpath:evaluate "//a" dom))</code></pre>
     
I plan to slowly add features to make screen scraping even easier than
it already is.
