Test First Ruby -- RSpec 3 Edition
==========
Manuel Mier

### Set up instructions

1. Fork this repo
2. Clone your version of the repo to your local machine
3. On your local machine, `cd` into the root folder of this repo in your terminal
4. run `bundle install` to install all the gems this project needs.

### Getting started with the exercises

To work through the first exercise, follow this process

1. `cd` into `00_hello` from the root folder of this project
2. Run `rake`, to run the tests. It will fail with the following error:
  ```
  Failures:

    1) the hello function says hello
      Failure/Error: expect(hello).to eq("Hello!")

      NameError:
        undefined local variable or method `hello' for #<RSpec::ExampleGroups::TheHelloFunction:0x007fa1221408f0>
        # ./00_hello/hello_spec.rb:106:in `block (2 levels) in <top (required)>'
  ```
3. If the test fails to run and you get a `rake aborted! No Rakefile found` or any other error message not like the one above ensure that your working directory (`pwd` to see the path) contains no spaces as this is a common mistake made by people new to Rspec.
3. Read the failure output carefully and write the code that will make it pass
4. Run the tests again with `rake`
5. This will output that one test has passed and another test failure, write the code to make the next test pass.
4. Continue this process until all tests pass (when they are green) you have now completed the exercise.
5. Do this for all the exercises in this project
5. To get hints and tips about each exercise, view the `index.html` file that is included in each exercise folder


Basically, this is "error-driven development"... you'll keep running tests, hitting error messages, fixing those messages, running more tests...  It is meant to not only test your Ruby skills but also get you comfortable seeing big scary looking stack traces and error messages.  Most of the development you do at first will be just like this.  In fact, most of *all* development is error-driven.  So get comfortable with it!

### Troubleshooting

* Don't name any of your directories with spaces in them! It will give you horribly frustrating error messages and code hates dealing with spaces.  For instance:

  ```language-bash
  # BAD:
  /Documents/My Homework/ruby

  # GOOD:
  /Documents/my_homework/ruby
  ```


### Credit

This is forked from [https://github.com/alexch/learn_ruby](https://github.com/alexch/learn_ruby), its original creator.
