---
tags: logic, cs, monkey patching, todo, custom methods
languages: ruby
resources: 1
---

# My Shuffle

![zipper image](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cs/zipper.jpg)

## Objective

You will be building out Ruby's `#shuffle` method, but with one minor tweak:

*  Shuffle can sometimes act on an array, let's say `[1,2,3]` and return an array like `[1,3,2]`. In this lab, you'll want to rearrange every element. Notice how `1` stayed in the first position? Your method shouldn't allow this.

Instead of calling it `#shuffle`, you'll call your method `#my_shuffle`. 

Also, you'll be making a new array, not actually changing the array that `#my_shuffle` will work on. For example:

```ruby
animals = ["aardvark", "hedgehog", "wallaby"]

animals.my_shuffle
#=> ["hedgehog", "wallaby", "aardvark"]

animals
#=> ["aardvark", "hedgehog", "wallaby"]
```

## Notes

Do not call on Ruby's `#shuffle` method to accomplish this task.

## Resources

* [Ruby's Shuffle Method](http://ruby-doc.org/core-2.2.0/Array.html#method-i-shuffle)
