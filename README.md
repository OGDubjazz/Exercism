# Exercism Ruby Track

Build Status Join the chat at https://gitter.im/exercism/ruby

Exercism Exercises in Ruby

Setup

You'll need a recent (2.1+) version of Ruby, but that's it. Minitest ships with the language, so you're all set.

Anatomy of an Exercise

The files for an exercise live in exercises/<slug>. The slug for an exercise is a unique nickname composed of a-z (lowercase) and -, e.g. clock or atbash-cipher. Inside its directory, each exercise has:

a test suite, <exercise_name>_test.rb
an example solution, .meta/solutions/<exercise_name>.rb
where <exercise_name> is the underscored version of the exercise's slug, e.g., clock or atbash_cipher.

If the exercise has a test generator, the directory will also contain:

.version
the test generator, .meta/generator/<exercise_name>_case.rb
A few exercises use a custom test template:

.meta/generator/test_template.erb
