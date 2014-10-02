# Namazing

Name things with more awesome.

## Installation

Installing directly via Rubygems:

    gem install namazing

If you're using bundler, add this line to your Gemfile:

    gem 'namazing'


## Usage

There are two main use cases for Namazing:

1. Generating a random awesome word:

        Namazing.random

2. Making an existing word or string awesome:

        Namazing.to_awesome "boring_word"


## Persistance

When using ````Namazing.to_awesome````, the awesome name that
Namazing generates will be persistant. This means that you
can call the function as many times as you wish and you
will always get the same result.

This persistance will apply when using multiple words. Namazing
will split your words and will treat each word separately.

### Example

    Namazing.to_awesome "boring_yawn"
    => "walkyrie_codetta"

    Namazing.to_awesome "yawn_boring"
    => "codetta_walkyrie"

    Namazing.to_awesome "very_boring"
    => "exaggerated_walkyrie"


## Case

Namazing understands case variations, particularly around
camelCase, PascalCase and under_score. The result that
Namazing will return will match the case that you provide.


## Contributions

Please feel free to create pull requests. I'm particularly
interested in requests that improve the wordlist to maintain
a high level of awesome and remove boring words.
