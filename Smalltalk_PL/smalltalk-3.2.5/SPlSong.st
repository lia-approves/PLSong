Object subclass: Hello [
  |y|
  with:ys[y _ ys.]
  foo [ ^ y. ]
].

Hello subclass: Thing [
  with:ys [
    super with:ys.
  ]

  foo [
    ^super foo, 'why so many blocks'.
  ]
].

o := Thing new with: 'S is for Smalltalk, '.
o foo printNl.
"o := Hello new with: 9."
"o foo printNl."

"1 to: 1000000 do: [:x | o := o class. o printNl.]"