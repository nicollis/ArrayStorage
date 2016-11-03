# ArrayStorage


A simple way of storing arrays as cookies. Built using [JS-Cookie](https://github.com/js-cookie/js-cookie) it has coverage for all browsers.

## Usage

1. Include JS-Cookie in your project
2. Start using!

## Example

```
// create new cookies array that will expire in 1 week
as = new ArrayStorage('my_cookie', { expires: 7, path: '' });
// add three items to array
as.add('one');
as.add('two');
as.add('three');
// remove second item by object
as.remove('two');
// remove first object by index
as.removeAt(0)
// get array of items stored
as.items();
// clear all items
as.clear();
```
## Documentation
### Create a new instance
##### Syntax
``` as = ArrayStorage(cookie_name [, {options}]) ```
##### Paramaters 
string: `cookie_name` *required*
-- string that will be used to identify the proper cookie as too pull and add values to the intended array

json: `{options}` *optional*
-- json object used to provide explicit experation time and/or path [see JS-Cookie for more info](https://github.com/js-cookie/js-cookie#cookie-attributes)
##### Returns
a new ArrayStorage Object for the cookie name provided
### Add item to array
##### Syntax
``` ArrayStorage_instance.add(new_value) ```
##### Paramaters 
object: `new_value` *required*
-- an object that will be stored as in the cookie
##### Returns
current array of saved items
### Remove item from array
##### Syntax
``` ArrayStorage_instance.remove(value) ```
##### Paramaters 
object: `value` *required*
-- an already stored object to be removed from the array
##### Returns
true if successful -- false if item is not found
### Remove item from array by index
##### Syntax
``` ArrayStorage_instance.removeAt(index) ```
##### Paramaters 
int: `index` *required*
-- number of object index you would like removed
##### Returns
true if successful -- false if item is not found
### Clear all items
##### Syntax
``` ArrayStorage_instance.clear() ```
##### Paramaters 
*none*
##### Returns
new empty list
### Get items
##### Syntax
``` ArrayStorage_instance.items() ```
##### Paramaters 
*none*
##### Returns
returns array of all items, or null if list is empty

## Changelog

* 2016-11-03 -- v0.1.0 -- Initial public release

## Author

Copyright (c) 2016 [Nicholas Ollis](http://ollis.me). 
Released under the MIT License. 
See LICENSE.txt for license info.