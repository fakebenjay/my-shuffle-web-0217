

# My Shuffle

![card image](https://s3-us-west-2.amazonaws.com/web-dev-readme-photos/cs/shuffle.jpg)

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

You may call on Ruby's `#shuffle` method to accomplish this task. Just remember that it may not be enough!

## Resources

* [Ruby's Shuffle Method](http://ruby-doc.org/core-2.2.0/Array.html#method-i-shuffle)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/my-shuffle' title='My Shuffle'>My Shuffle</a> on Learn.co and start learning to code for free.</p>
