ArrayStorage = (cookie_name, options = null) ->
  cookie = Cookies.get cookie_name
  cookie_options = options
  items = if cookie then cookie.split(/,/) else new Array
  
  {
    "add": (value) ->
      items.push value
      Cookies.set cookie_name, items.join(','), cookie_options
      return items
    "remove": (value) ->
      index = items.indexOf value
      if index != -1 then items.splice index, 1 else return false
      Cookies.set cookie_name, items.join(','), cookie_options
      return true
    "removeAt": (index) ->
      unless items then return false
      if index > -1 && index < items.length then items.splice index, 1 else return false
      Cookies.set cookie_name, items.join(','), cookie_options
      return true
    "clear": ->
      items = new Array
      Cookies.set cookie_name, items
      return items
    "items": ->
      if items.length == 0 then return null
      items
    "version": ->
      'v0.1.1'
  }