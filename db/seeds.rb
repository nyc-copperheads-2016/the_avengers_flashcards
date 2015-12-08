decks = Deck.create([{name: 'Retro Game Trivia', description: "Test your retro game knowledge and see how well you remember the Golden Age of gaming!"},{name: 'Sports Trivia', description: "Do you consider yourself a tried and true sports fan? See how you stack up with a little sports trivia"}])


#Retro Game Trivia
Card.create([{deck_id: 1, question:'What highly addictive puzzle game designed by a Russian programmer features Russian buildings, dancers and music?', answer:'Tetris'},
             {deck_id: 1, question:'Before becoming a plumber in the 1983 game Mario Bros., Mario had a different profession. What was it? ', answer:'Pizza Maker'},
             {deck_id: 1, question:'Who is Bagman? ', answer:'Retired safe cracker'},
             {deck_id: 2, question:'How many Championships did Bill Russell win in his career?', answer:'11'},
             {deck_id: 2, question:'Who won the last world cup?', answer:'Germany'},
             {deck_id: 2, question:'Who is the NFL all-time leading rusher?', answer:'Emmitt Smith'}])

# Use AR getters/setters exclusively.  Avoid _id attributes wherever possible.
# Card.create(
#   deck: decks[0],
#   question:'What highly addictive puzzle game designed by a Russian programmer features Russian buildings, dancers and music?',
#   answer:'Tetris'
# )

# card.deck=
# card.deck
