## General requirements:

Documentation block should start with a doubled comment symbol if applicable,
in this case first section should start from the next line. End of the block
should contain empty comment line.

Examples:

**Javascript**

```js
/**
 * Awesome function
 */
function doSomething() {
}
```

**Ruby**

```ruby
##
# Awesome method
#
def do_something
end
```

**C++**

```cpp
////
// Awesome class
//
class DoSomething {
}
```

## Syntax:

Most of the [Markdown syntax rules](http://daringfireball.net/projects/markdown/syntax)
are applicable with following additions and recommendations:

* Each section (except description) should start with a keyword. Keyword must
  be capitalized and should end with a colon, i.e. `Public:`, `See also:`.
* Minus signs are preffered for the lists
* Types, Constants, Classes and Namespaces should be wrapped into the curly
  braces, e.g.: `{String}`, `{ActiveRecord::Base}`
* Inline html is not allowed
* Headers and Blockqoutes are not recommended

If section has one line with less than 80 symbols, it is allowed to place this
line directly after the keyword followed by single space. Otherwise, text or
list should start with new line (see examples below).

## Structure

All the sections are optional, but **Description**, `Params:` and `Returns:` are
highly recommended.

Each section must end with an empty comment line.

Sections and keywords must be ordered as listed in this document.

### Description section:

It is highly recommended to have a description part for each
method/class/variable/constant. Description can start with one of the following
keywords (optional):

* `Class:` – for class documentation
* `Module:` – for module documentation
* `Constant:` – for constants
* `Namespace:` – namespace description and/or list of child constants
* `Factory:` – mark as factory method
* `Constructor:` – mark as class constructor
* `Abstract:` – mark as abstract method/class
* `Private:` – for private methods

Also you can use another keyword, which indicates that the method/class
corresponds to commonly used design patterns.

If needed, you can chain the keywords in logical order:

```ruby
##
# Abstract Class: Defines a public API for adapters
#
class AbstractAdapter
end
```

For more complex documentation, you can provide the brief description on the
first line and more detailed description on next paragraphs. Paragraphs should
be separated with an empty line:

```js
/**
 * Class: Event dispatcher
 *
 * Determine event type and dispatch corresponding
 * event handlers in order of addition.
 *
 * Also provides event bubbling and capturing.
 */
var EventDispatcher = (function() {

})();
```

Description can be ended with a `Deprecated!` standalone tag which indicates
that code is deprecated and can be removed in next versions. In this case,
description section should explain reason of deprecation and alternatives for
using instead.

### Params section:

`Params:` should contain the list of parameters with following columns:

* parameter name - required
* parameter type - optional, Should be wrapped into the curly braces. If
  parameter has different types they should be splitted with pipe `|`
* parameter description - optional, Brief param desription. If parameter is
  optional or has a default value, description should end with mention of this
  in a parentheses: `(optional, default: false)`

It is recommended to align columns with spaces.

Example:

```ruby
# Params:
# - name    {String}         User's first name
# - age     {Integer|String} His age (optional)
# - options {Hash}           Various options (optional, default: {})
#
```

If one or more parameters contain a key/value list - keys can be listed as a
params after the corresponding parameter with two spaces indentation or can be
listed after the `Options:` keyword.

```ruby
# Params:
# - title   {String} Title for paragraph
# - options {Hash}   Options for paragraph
#   - align  {String}  Text aligning (allowed: ["right", "justify", "left"])
#   - margin {Integer} Margin in points
#
```

`Options:` keyword should end with reference to corresponding parameters, other
rules are similar to the `Params:` tag:

```ruby
# Params:
# - name        {String} Tag name
# - tag_options {Hash}   Semantic options for tag
# - attributes  {Hash}   HTML attributes
#
# Options (tag_options):
# - single {Boolean} Tag is single?
# - xhtml  {Boolean} Create a xhtml compatible tag (optional, default: false)
#
# Options (attributes):
# - class {String|Array}   Class name or list of names (optional)
# - value {String|Integer} Value for the input (optional)
#
```

`Yields:` keyword describes given block

### Examples section:

Examples section should start with `Examples:` keyword. Each example can have a
description like in Description section, but without any keyword.

Code should have 4 space indentation and be separated with empty comment lines
before and after.

```js
/**
 * Examples:
 *
 * Get value
 *
 *     $("#search").val();
 *
 * Set value
 *
 *     $("#search").val("Test value");
 *
 */
```

### Information section:

`TODO:` and `FIXME:` keywords – text or list of what needs to be implemented or
fixed:

```ruby
# TODO: catch exceptions
#
# FIXME:
# - crash when name contains brace
# - returning float is not allowed
#
```

`Notes:` keyword is used for various notes, workaround descriptions or various
explanations.

`See also:` references to another methods, classes, libraries or documentation.

`Known issues:` provides a list of issues which can not be fixed for now.

### Results section:

`Raises:` – list of exceptions which can be raised by this method/function and
conditions that cause them.

`Returns:`, `Renders:`, `Redirects:` – keywords which describe what
method/function should return or render (for MVC controllers, etc)

```ruby
# Raises:
# - {NoMethodError} if method is not applicable
# - {TimeoutError}  if max request time reached
#
# Returns: {String} Response body
#
```
