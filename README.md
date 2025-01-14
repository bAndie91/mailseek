```
Usage: ./mailseek [options] [files]
Options:
  --no-recursive   Do not dive into directories, default is recursive
  --verbose        Provide verbose output on STDERR
  --debug          Provide debug output on STDERR
  --null           Separate file names by NUL chars, default is newline
  --details        Print some headers, not only the file name
  --case           Case sensitive match, default is case insensitive
  --any            Succeed if any criterion matches,
                   by default all criteria must match
  --filetime       Date-time filtering is based on file's mtime,
                   not on Email headers (faster)

Filter options:
  --newer, --older DATETIME  Consider Date, Delivery-Date, Received headers
  --sender PATTERN           From, Sender, Originator, Return-Path, Received
  --recipient PATTERN        To, Cc, Bcc, Delivered-To, Received
  --subject PATTERN          Subject, Thread-Topic
  --attachment PATTERN       Search in name of attachments (Email parts)
  --mime PATTERN/PATTERN     MIME type (type/subtype) of Email parts
  --header HEADER[:PATTERN]  Search for arbitrary header name 
                             and optionally for its content
  --body FTSEARCH            Body text (plain text and html are supported)

Formats:
  DATETIME    "YYYY-mm-dd_HH:MM:SS" - Meant in your timezone.
              Omitting less significant quantifiers makes them behave wildcard.
  PATTERN     a) simple string - match substring (see --case)
              b) "~REGEX" - match regexp if PATTERN starts with tilde
  HEADER      a) simple string - match exact string 
              b) "~REGEX" - match regexp just like PATTERN
  FTSEARCH    Fulltext search expression, see Search::Fulltext(3pm)

PATTERN and HEADER are optionally prefixed by '!' which inverts results.
HEADER and --mime matching are always case insensitive.
```

# Project issues, bugs, feature requests, ideas

1. clone repo
2. use [git-bug](https://github.com/git-bug/git-bug) to open a new ticket in this repo
3. find one or more person in the commit history to make contact with
4. send the URL of your git clone to them (via email or other channel), and request them to pull (`git-bug` issues and/or branches as well) from you
