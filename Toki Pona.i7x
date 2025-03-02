Version 0.0.1 of Toki Pona by Vivian Rose begins here.

"Translates the language of play to toki pona."

[Once https://github.com/ganelson/inform-evolution/blob/main/proposals/0016-language-extensions-reform.md is released, this should be converted to the new format for language extensions. Until then, it shall be an extension.]

Book - Translate Is-Usuallys

[ Here we override whole sections of the Standard Rules just to translate some "is usually" text. As Sebastian Arg's Spanish translation puts it, «el 'is usually' no deja redefinir de nuevo por defecto las constantes, por lo que hay que hackearlo».]

Section - Override Default Story Headline (in place of Section 7 - Unindexed Standard Rules variables -  in Standard Rules by Graham Nelson)

The story title, the story author, the story headline, the story genre, and the story description are text variables.
The release number and the story creation year are number variables.

The release number is usually 1.

[ The default story headline is the only part we're changing. ]
The story headline is usually "musi".

[ It seems reasonable to leave the default story genre untranslated, considering the documentation:
	'The "story genre" … exists purely to help librarians. If it is at all possible to do so, authors are asked to use one of the following standard categories…'
Emily Short defies this convention with Counterfeit Monkey's genre of "Espionage", but such a great work may deserve its own shelf in the library anyway. ]
The story genre is usually "Fiction".

The story title variable translates into Inter as "Story".

Section - Override Default Yourself Description (in place of Section 11 - People in Standard Rules by Graham Nelson)

The specification of person is "Despite the name, not necessarily a human
being, but anything animate enough to envisage having a conversation with, or
bartering with."

A person can be female or male. A person is usually male.
A person can be neuter. A person is usually not neuter.

A person has a number called carrying capacity.
The carrying capacity of a person is usually 100.

A person can be transparent. A person is always transparent.

The yourself is an undescribed person. The yourself is proper-named.

The yourself is privately-named.
Understand "your former self" or "my former self" or "former self" or
	"former" as yourself when the player is not yourself.

The description of yourself is usually "sina pona." [This is the only changed line. "As good-looking as ever." → "sina pona."]

The yourself object translates into Inter as "selfobj".

Book - Understanding

Part - Translated Grammar (in place of Part Six - Grammar in Standard Rules by Graham Nelson)

The understand token a time period translates into Inter as "RELATIVE_TIME_TOKEN".

Chapter - Worldly Actions

Understand "alasa lon insa/-- [thing]" or "alasa insa e/-- [thing]" or "alasa lon [thing]" as searching.

Understand "awen" or "z" as waiting.

Understand "insa e [things] tawa [thing]" as inserting it into.
Understand "insa e/-- [thing]" as entering.

Understand "jo e/-- [things]" as taking.

Understand "ijo mi/sina" or "i" as taking inventory.

Understand "kama jo e [things]" as taking.
Understand "kama jo e [things inside] tan [something]" as removing it from.
Understand "kama lon/insa e/-- [thing]" as entering.

Understand "kipisi e [thing]" as cutting.

Understand "kute" as listening.
Understand "kute e [thing]" as listening.

Understand "lanpan e [things]" as taking.
Understand "lanpan e [things inside] tan [something]" as removing it from.

Understand "lape" or "slape" as sleeping.

Understand "len e [something preferably held]" as wearing.
Understand "len ala e [something preferably held]" as taking off.

Understand "luka e [something]" as touching.

Understand "lukin" or "lukin ma" as looking.
Understand "lukin e/-- [something]" as examining.
Understand "lukin anpa e/-- [thing]" or "lukin e anpa pi/-- [thing]" or "lukin lon anpa pi/-- [thing]" as looking under.
Understand "lukin e jo" as taking inventory.
Understand "lukin e ijo mi" as taking inventory.
Understand "lukin insa e/-- [thing]" as searching.
Understand the command "oko" or "l" or "x" as "lukin".
Understand "pakala e/-- [something]" as attacking.

Understand "moku e [things preferably held]" as eating.

Understand "moli e [something]" as attacking.

Understand "nena" or "pilin kon" or "pilin pi/-- nena sinpin/--" as smelling.
Understand "nena e [thing]" or "pilin kon e [thing]" or "pilin pi/-- nena sinpin/-- e [thing]" as smelling.

Understand "open e [device]" as switching on.
Understand "open e [something]" as opening.
Understand "open e [something] kepeken [something preferably held]" as unlocking it with.

Understand "pana e [things preferably held]" as dropping.
[ Default to the right action (inserting it into vs putting it on) for containers/supporters. ]
Understand "pana e [other things] tawa/lon [container]" as inserting it into.
Understand "pana e [other things] tawa/lon [supporter]" as putting it on.
[ But for a non-container non-supporter, default to putting it on. ]
Understand "pana e [other things] tawa/lon [thing]" as putting it on.
Understand "pana e [thing] tawa [person]" as showing it to. [ A story involving more giving than showing might want to change this to giving. ]
Understand "pana lukin e [thing] tawa [person]" as showing it to.

Understand "pilin uta e [thing]" as tasting.
Understand "pilin e/-- [something]" as touching.

Understand "pini e [device]" as switching off.
Understand "pini e [something]" as closing.
Understand "pini awen e [something] kepeken [something preferably held]" as locking it with. [ Consider thinking of a better translation if your story features locking. ]

Understand "seli e [things preferably held]" as burning.

Understand "tawa [direction]" as going.
Understand "tawa [something enterable]" as entering.
Understand "tawa [door]" as entering.
Understand "tawa insa [something]" as entering.
Understand "tawa weka" as exiting.
Understand the command "t" as "tawa".

Understand "uta olin e [something]" or "olin uta e [something]" as kissing. [ "uta e" left to you; is it kissing or tasting or something else? ]

Understand "utala e [something]" as attacking.

Understand "weka" as exiting.
Understand "weka e [things preferably held]" as dropping.
Understand "weka e [other things] tawa/lon [container]" as inserting it into.
Understand "weka e [other things] tawa/lon [supporter]" as putting it on.
Understand "pana e [other things] tawa/lon [thing]" as putting it on.

Chapter - Directions

Section - Understand a direction as going that direction

[ The parser already kinda does this with builtin directions, but doesn't seem to catch on to their new names for some reason. These also don't seem to work:
	Understand "[direction]" as going.
	Understand "sewi" as going up. ]
Ascending is an action applying to nothing. Understand "sewi" as ascending. Instead of ascending, try going up.
Descending is an action applying to nothing. Understand "anpa" as descending. Instead of descending, try going down.
Inside-going is an action applying to nothing. Understand "insa" as inside-going. Instead of inside-going, try going inside.

Section - Rename Directions

Up, down, inside, and outside are privately-named.
Understand "anpa" as down. The printed name of down is "anpa".
Understand "insa" as inside. The printed name of inside is "insa".
Understand "weka" as outside. The printed name of outside is "weka".
Understand "sewi" as up. The printed name of up is "sewi".

[ Cardinal directions don't have good toki pona translations. ]
North, south, east, west, northeast, southeast, northwest, and southwest are privately-named.

Chapter - Out Of World Actions

[ These ones are harder to translate. Some, I daresay, barely make literal sense in English. Some are IF jargon; others are computer interface terminology. So let's be merciful and understand the English commands for these. ]

Understand "score" or "musi o nanpa" as requesting the score.
Understand "quit" or "musi o weka" or "pake" as quitting the game.
Understand "save" or "wekama" or "pali e lipu tenpo" as saving the game.
Understand "restart" or "open sin" as restarting the game.
Understand "restore" or "load" or "kama e lipu tenpo" or "kama lipu" as restoring the game.
Understand "verify" or "musi o ale pona anu seme" as verifying the story file.
Understand "version" or "nanpa musi" as requesting the story file version.
Understand "script" or "script on" or "transcript" or "transcript on" or "pali e lipu pi toki musi" as switching the story transcript on.
Understand "script off" or "transcript off" as switching the story transcript off.
Understand "superbrief" or "short" as preferring abbreviated room descriptions.
Understand "verbose" or "long" as preferring unabbreviated room descriptions.
Understand "brief" or "normal" as preferring sometimes abbreviated room descriptions.
Understand "nouns" or "pronouns" as requesting the pronoun meanings.
Understand "notify" or "notify on" as switching score notification on.
Understand "notify off" as switching score notification off.

Part - Understanding Built-In Kinds

Understand "ijo" as a thing.
Understand "jan" as a non-animal person. Definition: something is non-animal if it is not an animal.
Understand "lupa" as a door.
Understand "moku" as something edible.
Understand "poki" as a container.
Understand "soweli" as an animal. [ May be inappropriate. Are all animals soweli? Probably not. ]
Understand "supa" as a supporter.

Book - Grammatical Phrases

Chapter - Saying Pronouns

[ "[mi]" is our equivalent to "[we]" or "[us]". ]

Rule for printing the name of yourself: say "[mi]".

To say mi:
	now the prior named object is the player;
	if the story viewpoint is first person singular or the story viewpoint is first person plural:
		say "mi";
	if the story viewpoint is second person singular or the story viewpoint is second person plural:
		say "sina";
	if the story viewpoint is third person singular or the story viewpoint is third person plural: [ I don't recommend this one, but it's here just in case. ]
		say "ona".
To say mi li:
	if the story viewpoint is third person singular or the story viewpoint is third person plural:
		say "ona li";
	otherwise:
		say "[mi]".

[ The "[ona]" phrase might be handy for responses like this:

	Instead of smelling something, say "kon [regarding the noun][ona] li nasa ala.".

Yielding:
	
	>nena e kiwen
	kon ona li nasa ala.
	
	>nena e mi
	kon sina li nasa ala.]

To say ona:
	if the prior named object is the player:
		say "[mi]";
	otherwise:
		say "ona".

Chapter - li

[ The article «li» is omitted for sentences with the subject "mi" or "sina". This phrase lets us say something like "[noun li] poki ala.". If the noun is the player (when referred to with sina/mi), the "li" gets correctly omitted. ]

To say (N - object) li:
	if N is yourself:
		if story viewpoint is first person singular or
		story viewpoint is second person singular or
		story viewpoint is first person plural or
		story viewpoint is second person plural:
			say mi;
			rule succeeds;
	say "[N] li".

Chapter - Saying Numbers

Section - Vague Toki Pona Numbers

To say (N - number) in vague toki pona:
	if N <= 0:
		say "ala";
	else if N is 1:
		say "wan";
	else if N is 2:
		say "tu";
	else:
		say "mute".

Section - Specific Toki Pona Numbers

Table of Toki Pona Specific Number Words
Value	Word
100		"ale"
20		"mute"
5		"luka"
2		"tu"
1		"wan"

To say (N - number) in specific toki pona:
	if N is 0:
		say "ala";
		rule succeeds;
	If N is negative:
		say "anpa "; [ Maybe this should go at the end instead of the beginning, but this is just a failsafe. ]
		now N is 0 - N;
	let started be false;
	while N > 0:
		repeat through Table of Toki Pona Specific Number Words:
			if N >= value entry:
				now N is N - value entry;
				if started is true:
					say " ";
				now started is true;
				say word entry;
				break.

Chapter - Listing Direct Objects

[ Say a list of things as direct objects. Includes commas for three or more things, including the serial comma. For example:

	The initial appearance of the desk is "supa li suli. [lob]supa li jo [indenting 3][e list of for sale things on the desk].".

Might say, depending on the things on the desk:

	supa li suli. supa li jo e kili, e pan, e poki telo.
	supa li suli. supa li jo e kili e pan.
	supa li suli. supa li jo e kili.
	supa li suli. supa li jo e ala.

In logographic mode, no commas are used, and the list is indented, sort of like this:

	supa li suli. 
	supa li jo e kili
	              e pan
	              e poki telo. ]



Use no commas for direct objects translates as (- Constant TOK_OMIT_EN_COMMAS; -).

To say e (L - list of objects):
	say "e ";
	if the number of entries in L is 0:
		say "ala";
		rule succeeds;
	let commas needed be whether or not the number of entries in L > 2 and the no commas for direct objects option is inactive;
	say L joined by "[if commas needed is true][comma][end if] [ilob]e ".

Use no commas for subjects translates as (- Constant TOK_OMIT_E_COMMAS; -).

To say (L - list of objects) li:
	if the number of entries in L is 1:
		say entry 1 in L li;
	otherwise:
		say L as subject;
		say " li".

To say (L - list of objects) as a/-- subject/subjects:
	if the number of entries in L is 0:
		say "ala";
		rule succeeds;
	let commas needed be whether or not the number of entries in L > 2 and the no commas for subjects option is inactive;
	say L joined by "[if commas needed is true][comma][end if] en ".

To say (L - list of objects) joined by (S - some text):
	let N be the number of entries in L;
	repeat with J running from 1 to N:
		say entry J in L;
		if J is not N:
			say S.

Book - English Language Kit Replacements

[ See https://ganelson.github.io/inform/EnglishLanguageKit/S-lng.html ]

Chapter - Vocabulary

Include (- Constant AGAIN1__WD = 'jasima'; -) replacing "AGAIN1__WD".
Include (- Constant AGAIN2__WD = 'sin'; -) replacing "AGAIN2__WD".
Include (- Constant AGAIN3__WD = 'again'; -) replacing "AGAIN3__WD".
Include (- Constant OOPS1__WD = 'oops'; -) replacing "OOPS1__WD".
Include (- Constant OOPS2__WD = 'oops'; -) replacing "OOPS2__WD".
Include (- Constant OOPS3__WD = 'oops'; -) replacing "OOPS3__WD".
Include (- Constant UNDO1__WD = 'monsi'; -) replacing "UNDO1__WD".
Include (- Constant UNDO2__WD = 'ne'; -) replacing "UNDO2__WD".
Include (- Constant UNDO3__WD = 'undo'; -) replacing "UNDO3__WD".
Include (- Constant ALL1__WD = 'ale'; -) replacing "ALL1__WD".
Include (- Constant ALL2__WD = 'ali'; -) replacing "ALL2__WD".
Include (- Constant ALL3__WD = 'ale'; -) replacing "ALL3__WD".
Include (- Constant ALL4__WD = 'ale'; -) replacing "ALL4__WD".
Include (- Constant ALL5__WD = 'ale'; -) replacing "ALL5__WD".
Include (- Constant AND1__WD = 'e//'; -) replacing "AND1__WD".
Include (- Constant AND2__WD = 'en'; -) replacing "AND2__WD".
Include (- Constant AND3__WD = 'e//'; -) replacing "AND3__WD".
Include (- Constant BUT1__WD = 'UNUSED'; -) replacing "BUT1__WD".
Include (- Constant BUT2__WD = 'UNUSED'; -) replacing "BUT2__WD".
Include (- Constant BUT3__WD = 'UNUSED'; -) replacing "BUT3__WD".
Include (- Constant BY__WD = 'tan'; -) replacing "BY__WD".
Include (- Constant ME1__WD = 'mi'; -) replacing "ME1__WD".
Include (- Constant ME2__WD = 'mi'; -) replacing "ME2__WD".
Include (- Constant ME3__WD = 'mi'; -) replacing "ME3__WD".
Include (- Constant OF1__WD = 'of'; -) replacing "OF1__WD".
Include (- Constant OF2__WD = 'of'; -) replacing "OF2__WD".
Include (- Constant OF3__WD = 'of'; -) replacing "OF3__WD".
Include (- Constant OF4__WD = 'of'; -) replacing "OF4__WD".
Include (- Constant OTHER1__WD = 'ante'; -) replacing "OTHER1__WD".
Include (- Constant OTHER2__WD = 'ante'; -) replacing "OTHER2__WD".
Include (- Constant OTHER3__WD = 'ante'; -) replacing "OTHER3__WD".
Include (- Constant THEN1__WD = 'then'; -) replacing "THEN1__WD".
Include (- Constant THEN2__WD = 'then'; -) replacing "THEN2__WD".
Include (- Constant THEN3__WD = 'then'; -) replacing "THEN3__WD".
Include (- Constant NO1__WD = 'ala'; -) replacing "NO1__WD".
Include (- Constant NO2__WD = 'ike'; -) replacing "NO2__WD".
Include (- Constant NO3__WD = 'powe'; -) replacing "NO3__WD".
Include (- Constant YES1__WD = 'lon'; -) replacing "YES1__WD".
Include (- Constant YES2__WD = 'pona'; -) replacing "YES2__WD".
Include (- Constant YES3__WD = 'oke'; -) replacing "YES3__WD".
Include (- Constant AMUSING__WD = 'amusing'; -) replacing "AMUSING__WD".
Include (- Constant FULLSCORE1__WD = 'fullscore'; -) replacing "FULLSCORE1__WD".
Include (- Constant FULLSCORE2__WD = 'full'; -) replacing "FULLSCORE2__WD".
Include (- Constant QUIT1__WD = 'q//'; -) replacing "QUIT1__WD".
Include (- Constant QUIT2__WD = 'quit'; -) replacing "QUIT2__WD".
Include (- Constant RESTART__WD = 'restart'; -) replacing "RESTART__WD".
Include (- Constant RESTORE__WD = 'restore'; -) replacing "RESTORE__WD".

Chapter - Pronoun

[ This lets the story understand "ona". ]
Include (-
Array LanguagePronouns table
    'ona' $$1111111111111111 NULL;
-) replacing "LanguagePronouns".

Chapter - Descriptors

Include (-
Array LanguageDescriptors table
    'mi'      $$111111111111    POSSESS_PK      0
    'ona'     $$111111111111    POSSESS_PK      'ona';
-) replacing "LanguageDescriptors".

Chapter - Numbers

Include (-
Array LanguageNumbers table
    'wan' 1 'tu' 2 'mute' 3;
-) replacing "LanguageNumbers".

Chapter - Commands

[ Kind of a vague chapter name, I know, but I'm matching the ones in the English Language Kit.]

Section - LanguageVerb

[This is so that the command "i asdasd" gives a response like "I only understood you as far as wanting to take inventory." instead of "I only understood you as as far as wanting to i.".]
Include (-
[ LanguageVerb i;
    switch (i) {
      'i//':   print "lukin e ijo sina";
      'l//':   print "lukin";
      'z//':   print "awen";
      default: rfalse;
    }
    rtrue;
];
-) replacing "LanguageVerb".

Section - LanguageVerbMayBeName

[ From English Language Kit:
	LanguageVerbMayBeName is called by NounDomain when dealing with the player's reply to a "Which do you mean, the short stick or the long stick?" prompt from the parser. If the reply is another verb (for example, LOOK) then then previous ambiguous command is discarded unless it is one of these words which could be both a verb and an adjective in a name property.
Well, there's a lot of this overlap in toki pona. Let's just specify these for now; this may need revisiting depending on the actions and nouns implemented by the story. ]
Include (-
[ LanguageVerbMayBeName w;
    if (w == 'ilo' or 'lipu' or 'seli' or 'ku')
        rtrue;
    rfalse;
];
-) replacing "LanguageVerbMayBeName".

Book - Particles and Lists

Chapter - "anu" in "which do you mean" messages

[ This is for separating choices in the "Which do you mean," parser clarification message. So we get something like this:
	>pana e moku
	sina toki e seme? sina toki e poki moku, anu pan, anu kili? ]

anu-needed-for-which-do-you-mean is initially false.
Before asking which do you mean:
	now anu-needed-for-which-do-you-mean is false.
Before printing the name of an object while asking which do you mean (this is the anu-injection rule):
	if anu-needed-for-which-do-you-mean is true:
		say "anu ";
	now anu-needed-for-which-do-you-mean is true.

Chapter - Strictly Format Logographic Inventory

[ The print standard inventory rule works well in alphabetic mode. For example:

	sina jo e:
	  tomo waso
	    sike waso mani (pini; ken open ala)
	  lipu

But logographic mode already has its own notion of indentation, so this would look strange. We want to omit parentheticals too. Let's opt for a more grammatically correct inventory listing in logographic mode. Something like:

	sina jo e tomo waso
		   e lipu
]

The toki pona print inventory rule is listed instead of the print standard inventory rule in the carry out taking inventory rulebook.
Carry out taking inventory (this is the toki pona print inventory rule):
	if the current orthography is alphabetic:
		say "[mi li] jo e:[line break]" (A);
		list the contents of the player, with newlines, indented, including contents, giving inventory information, with extra indentation;
	else:
		dentally say "[mi li] jo " (B);
		list the contents of the player;
		say ".".

Hanging is initially false.
Before listing contents of the player when the current orthography is logographic (this is the reset hanging for logographic inventory rule):
	now hanging is false.
Before printing the name of something while listing contents of the player (this is the e-prefixing and conditionally indenting the logographic inventory rule): [Is it possible to put the orthographic condition into the rule declaration? that would be neater.]
	if the current orthography is logographic:
		if hanging is true:
			say ilob;
		now hanging is true;
		say "e ".


Chapter - Listing contents of containers and rooms

[For example, the last line in this excerpt:

	>lukin e poki moku
	ona li awen e moku sina.

	poki moku jo e kili, e pan, e lipu.
]

[ Indent things listed in a container. This also affects the you-can-also-see rule and the reveal any newly visible interior rule. ]
Definition: an object is a joer if it is a room or it is a container.
Before listing contents of a joer (this is the reset hanging for joers rule):
	now hanging is false.
Before printing the name of something while listing contents of a joer (this is the e-prefixing and conditionally indenting joer containees rule):
	if hanging is true:
		say ilob;
	now hanging is true;
	say "e ".

[ Replace the rule for examining containers, to add a bit of indentation logic. ]
The toki pona examine containers rule is listed instead of the examine containers rule in the carry out examining rulebook.
This is the toki pona examine containers rule:
	if the noun is a container:
		if the noun is open or the noun is transparent:
			if something described which is not scenery is in the noun and something which is not the player is in the noun:
				dentally say "[noun] li jo " (A);
				list the contents of the noun, as a sentence, tersely, not listing concealed items;
				say ".";
				now examine text printed is true;
			otherwise if examine text printed is false:
				if the player is in the noun:
					make no decision;
				say "[noun] li jo e ala." (B);
				now examine text printed is true.

[ sitelen pona doesn't parenthesize well. Let's skip the parentheticals in logographic mode. ]
Rule for printing room description details of something (this is the omit contents during logographic room descriptions rule):
	if the current orthography is logographic:
		omit contents in listing.

Chapter - Listing contents of a supporter

[ The output of the examine supporters rule reads better if we rephrase it. 
"ijo en pipi li lon supa" makes more sense to be than "supa li jo e ijo e pipi" for supporters.
This could work for containers, too… but somehow I'm more okay with containers using "jo" to describe their contents.
Like, if some bread is in my pantry, then my pantry has the bread. But if my bread is on the table, does my table really *have* the bread?
Making these judgments is part of toki pona. Here's my judgment: let's use jo for containers and lon for supporters.]

[ We want the use initial appearance in room descriptions rule to list the items *before* the supporter, but that rule doesn't make its final string an overridable Response, which makes this trickier. ]

en needed is initially false.
Before listing contents of a supporter (this is the reset en needed rule):
	now en needed is false.
Before printing the name of something (called the supportee to be named) while listing contents of a supporter (this is the en-prefix listed supportees rule):
	if en needed is true:
		say "[if current orthography is logographic] [end if]en " (A);
	otherwise:
		now en needed is true.
After listing contents of a supporter (called S) (this is the specify location after supportee lists rule): [TODO is this triggered too often?]
	now en needed is false; [So we don't print an extra «en», since "After listing contents of a supporter" is still "while listing contents of a supporter".]
	say " li lon [S]" (A).

Chapter - Final Question Options

Section - Translate Default Question Options

To decide which topic is the topic (T - a topic): decide on T. [ hack https://intfiction.org/t/bubbling-beaker-awards-award-31-august-09-2024/64009/87?u=vi ]
When play begins (this is the translate the final question options into toki pona rule):
	choose row with a final question wording of "RESTART" in the Table of Final Question Options;
	now the final question wording entry is "[command style]open sin[roman type]";
	now the topic entry is the topic "o/-- open sin";
	choose row with a final question wording of "RESTORE a saved game" in the Table of Final Question Options;
	now the final question wording entry is "[command style]kama e lipu tenpo[roman type]";
	now the topic entry is the topic "o/-- kama e lipu tenpo/--";
	choose row with a final question wording of "QUIT" in the Table of Final Question Options;
	now the final question wording entry is "[command style]weka [roman type]tan musi ni";
	now the topic entry is the topic "o/-- weka tan/-- musi/-- ni/--";
	choose row with a final question wording of "UNDO the last command" in the Table of Final Question Options;
	now the final question wording entry is "[command style]monsi [roman type]e tenpo wan";
	now the topic entry is the topic "o/-- monsi e/-- tenpo/-- wan/--".

Section - Understand Understandably Ununderstanding Undoers

[ Recognize the whole ">monsi e tenpo wan" command at other times, too. Except we can't actually do that, so just tell the player to be terse. ]
After reading a command (this is the trim verbose undo command rule): [TODO replace monsi]
	if the player's command matches "monsi e tenpo wan":
		say "o sitelen e ni taso: [command style]monsi[roman type]";
		reject the player's command.

Section - Improve Question Option Presentation

[By default the question options are separated by commas. Let's use multiple lines instead.

Instead of something like:

	sina ken… >OPEN SIN, >OPEN E LIPU TENPO, >WEKA tan musi ni, anu >MONSI e tenpo wan?

Let's go with something like:

	sina ken…
		>OPEN SIN
		>OPEN E LIPU TENPO
		>WEKA tan musi ni
		>MONSI e tenpo wan

The single-line output could still be good if we rephrased it a bit to have "anu" between each entry, but the multiline output has its appeal.]

The print the final question in toki pona rule is listed instead of the print the final question rule in the before handling the final question rulebook.
This is the print the final question in toki pona rule:
	let named options count be 0;
	repeat through the Table of Final Question Options:
		if the only if victorious entry is false or the story has ended finally:
			if there is a final response rule entry
				or the final response activity entry [activity] is not empty:
				if there is a final question wording entry, increase named options count by 1;
	if the named options count is less than 1, abide by the immediately quit rule;
	say "sina ken…[line break]";
	repeat through the Table of Final Question Options:
		if the only if victorious entry is false or the story has ended finally:
			if there is a final response rule entry
				or the final response activity entry [activity] is not empty:
				if there is a final question wording entry:
					say "    ";
					say final question wording entry;
					decrease named options count by 1;
					say line break.

Book - Input Hacks

Chapter - Allow o before commands

After reading a command (this is the o razor rule):
	if "[the player's command]" matches the regular expression "^o (.+)$":
		change the text of the player's command to text matching subexpression 1.

Chapter - Understand asking others to do things

[The traditional IF syntax for asking another person to do something is "PERSON, COMMAND". For example, "ANDRA, KISS ME" or "ALEX, GET IN THE SYNTHESIZER". In toki pona, these would use the «o» particle: «jan Anwa o uta olin e mi» or «jan Alesa o, kama lon ilo pi kama wan». toki pona has no requirements for commas, but a comma might reasonably be used either before or after the «o».

To understand these commanding commands in toki pona, let's filter the player's command to replace " o " with ", ", while watching out for a potential preexisting comma on either side of the «o».]

The convert command commands from toki pona to traditional syntax rule is listed after the o razor rule in the after reading a command rules.
After reading a command when the player's command includes "o" (this is the convert command commands from toki pona to traditional syntax rule):
	let T be "[the player's command]"; 
	replace the regular expression ",? o,? " in T with ","; 
	change the text of the player's command to T.

Chapter - Understanding ale

[Inform expects "all" to come before a noun, not after. So we must move "ale" from after a noun to before a noun. For example, this rule transforms >JO E MOKU ALE into JO E ALE MOKU.

Ideally, this should probably be done with "ante" as well.]

After reading a command (this is the ale shuffling rule):
	[ We already added "ali" as ALL2__WD so it would be understood as "all", but let's replace it with ale anyway so that this next replacement is easier. ]
	if the player's command includes "ali":
		replace the matched text with "ale";
	if the player's command includes "ale": [← This line is necessary; otherwise we mess up the parser's asking which noun when the player does not supply a noun. ]
		let T be "[the player's command]";
		replace the regular expression "(.+) e (.+) ale" in T with "\1 e ALE \2";
		change the text of the player's command to T.

Chapter - Abbreviations

After reading a command (this is the kepeken abbreviation expansion rule):
	if the player's command includes "kepen/kpkn":
		replace the matched text with "kepeken";

Chapter - Understand Cartouches

[ Suppose the player is playing in sitelen pona mode, with a sitelen pona keyboard, and wants to ">toki e ma tomo [suli insa telo uta]". To understand that command, we need to replace "[suli insa telo uta]" with "situ". ]

To say the initials of (T - some text):
	let N be the number of words in T;
	repeat with nyminal running from 1 to N:
		say character number one in word number nyminal in T.
			
The cartouched input replacement rule is listed before the bracket stripping rule in the after reading a command rules.
After reading a command (this is the cartouched input replacement rule):
	unless the current orthography is logographic:
		make no decision;
	let T be the "[the player's command]";
	unless T matches the text "[bracket]":
		make no decision;
	[ This part does the replacement we want. “toki e nena [soweli ike lon insa ni] tawa jan [ esun mani esun lipu ilo ]” turns into “toki e nena Silin tawa jan Emeli”. ]
	while T matches the regular expression "\[bracket]\s*(<a-zA-Z>+\s*)+\s*\[close bracket]":
		replace the text text matching regular expression in T with "[the initials of text matching regular expression]" in title case;
	change the text of the player's command to T.

After reading a command (this is the bracket stripping rule):
	let T be "[the player's command]";
	unless T matches the text "[bracket]":
		make no decision;
	replace the regular expression "<[bracket][close bracket]>" in T with "";
	change the text of the player's command to T.

Chapter - Demand exactly one word when asking if the player consents

[We have overridden the YES and NO tokens to be "lon" and "ala", but "if player consents" only checks the first word. Thus, "yes no" is normally interpreted as yes, and so "lon ala" is interpreted as yes. This is incorrect, so here we reject "lon ala" and demand a one-word answer.]

Include (-
[ YesOrNo i j;
    for (::) {
        if (location == nothing || parent(player) == nothing) KeyboardPrimitive(buffer2, parse2);
        else KeyboardPrimitive(buffer2, parse2, DrawStatusLine);
        #Iftrue CHARSIZE == 1;
        j = parse2->1;
        #Ifnot;
        j = parse2-->0;
        #Endif;
        if (j == 1) { ! ← Changed this from (j) to (j==1). Instead of checking if at least one word was entered, we ensure that *exactly* one word was entered. This way, a player who types "lon ala" will be asked to say just "lon" or "ala". This still isn't ideal (it would be better to just interpret "lon ala" as no), but it's better than interpreting "lon ala" as yes.
            i = parse2-->1;
            if (i == YES1__WD or YES2__WD or YES3__WD) rtrue;
            if (i == NO1__WD or NO2__WD or NO3__WD) rfalse;
        }
        YES_OR_NO_QUESTION_INTERNAL_RM('A'); print "> ";
    }
];-) replacing "YesOrNo".

Book - Highlight Suggested Commands

[ Lacking a storied history of toki pona text adventures, the player may struggle to intuit available commands. When suggesting a command to the player, highlighting it in the input style and prefixing it with the command prompt can help get the point across. This functionality isn't really specific to toki pona, but some of this extension's default response substitutions make use of it.
If you don't like this style, replace the following rule with one that says nothing. ]

Section - Style Suggested Commands Like Input (for use with Glulx Text Effects by Emily Short)

To say command style (this is the style example commands like input rule): say "[roman type][command prompt][input style]".

Section - Style Suggested Commands Like Input (for use without Glulx Text Effects by Emily Short)

To say command style (this is the prefix example commands with the prompt rule): say "[command prompt]".

Book - Sitelen Pona

Chapter - Logographic Fundamentals

An orthography is a kind of value. The orthographies are alphabetic and logographic. The specification of orthography is "Represents a toki pona writing system that the story can use. Alphabetic for sitelen Lasina, expected to be displayed in an ordinary font. Logographic for sitelen pona, expected to be displayed in a compatible font.".
The current orthography is a orthography that varies.

Long glyphs enabled is a truth state that varies. Long glyphs enabled is usually true.
Glyph composition enabled is a truth state that varies. Glyph composition enabled is usually true.

Chapter - Logographic Typesetting

[ [if az] and [if lg] may be useful shorthand in text substitutions if the other substitutions defined here fall short. ]
To decide if az: if the current orthography is alphabetic, yes; no.
To decide if lg: if the current orthography is logographic, yes; no. 

[ sitelen pona looks nicer with more line breaks, so we add this shortcut for optional line breaks that only show up in logographic mode. ]
To say lob: say logographic-only break. To say logographic-only break:
	if the current orthography is logographic:
		say line break.

[ These phrases emulate lipu su's indentation. ]
The current ideographic indentation level is a number that varies.
To say indenting (N - a number):
	now the current ideographic indentation level is N.
To say additionally indenting (N - a number):
	Now the current ideographic indentation level is the current ideographic indentation level plus N.
To say indent:
	if the current orthography is logographic:
		repeat with counter running from 1 to the current ideographic indentation level:
			say "[ideographic space]".
To say ilob: say indented logographic-only break. To say indented logographic-only break:
	if the current orthography is logographic:
		say line break;
		say indent.
To dentally say (T - some text):
	say T;
	if the current orthography is logographic:
		now the current ideographic indentation level is the ideographic length of T.

[ «seme» looks like a question mark already, so it can get confusing if you try to use question marks too. This phrase makes it easy to omit the question mark for «anu seme» questions, like https://oddlingo.github.io/einstein.pdf ]
To say ?: say optional question mark. To say optional question mark:
	if the current orthography is alphabetic:
		say "?[no line break]".

[ nasin nanpa uses parentheses for ligatures, so let's add a shortcut for printing parentheses in alphabetic mode, and nothing otherwise. This is only useful if the parentheticality of the enclosed phrase is inessential. ]
To say optional left parenthesis: 
	if the current orthography is alphabetic:
		say "(".
To say optional right parenthesis -- running on: 
	if the current orthography is alphabetic:
		say ")".

[ This can be handy when writing long sentences that look cool in indented sitelen pona but are hard to parse in the latin alphabet. cilob of course stands for "comma or indented logographic-only break".]
To say cilob:
	say "[comma] [ilob]".

Chapter - Cartouche Shorthand (for Glulx only)

To say name -- beginning say_name_glyphs: (-
	if ((+ the current orthography +) == (+ alphabetic +)) {
		@setiosys 1 TOK_initials; ! Start filtering every character of output through TOK_initials
	} else {
		TEXT_TY_Say((+ "[cartouche]" +));
	}
-).

Include (-
	Global TOK_prev_char = 0;
	[TOK_initials char;
		if (char == 12288) { ! ideographic space
			glk_put_char_uni(' ');
			TOK_prev_char = 0;
			return;
		}
		if (TOK_prev_char == 0) {
			char = glk_char_to_upper(char);
		}
		if ((TOK_prev_char == ' ' or 0)) {
			glk_put_char_uni(char);
		}
		TOK_prev_char = char;
	]
-).

To say end name -- ending say_name_glyphs: (-
	if ((+ the current orthography +) == (+ alphabetic +)) {
		@setiosys 2 0; ! Stop filtering output through TOK_initials
		TOK_prev_char = 0;
	} else {
		TEXT_TY_Say((+ "[end cartouche]" +));
	}
-).


Chapter - Configuration Specific to the nasin nanpa Font

Section - Ideographic Length

[ For su-style indentation. Might need adjusted according to the font; a different font could, for example, render colons at half-width rather than full-width. ]

To decide what number is the ideographic length of (T - some text):
	[ Try to determine how long some text is in nasin nanpa.
	  Each word displays as one glyph, but…
	    • Combined glyphs have a length of 1 glyph.
	    • A colon displays as its own glyph with a length of 1 glyph.
	    • Each end of a cartouche is half a glyph long, so a full cartouche counts for one additional glyph.
	Let's not worry about in any sentence-ending punctuation like full stops, since we probably won't need to indent text following them anyway. ]
	decide on the number of times T matches the regular expression "(<a-z[unicode 8205]>+|\[bracket]|:)".

Section - Special Symbols

[ Phrases for typographic features. If we wanted to use a different font, we'd probably have to swap out the characters in this section. Maybe not all of these features would even be supported by the new font, and their corresponding substitutions would be rewritten to say nothing.

Although many sitelen pona fonts support UCSUR, Inform 7 v10.1.2 cannot use those characters, so we rely on ASCII-safe ligatures. ]

Currently printing a long glyph is a truth state that varies. [ ← This variable is unnecessary complication, but it helps find accidental unterminated long glyphs..]

To say long glyph:
	if the current orthography is logographic and long glyphs enabled is true:
		[follow the scold unended long glyphs rule;]
		now currently printing a long glyph is true;
		say "(".
To say ELG: say end long glyph. To say end long glyph:
	if the current orthography is logographic and long glyphs enabled is true and currently printing a long glyph is true:
		now currently printing a long glyph is false;
		say ")".
To say SOC: say cartouche. To say cartouche:
	if the current orthography is logographic:
		say "[bracket]".
To say EOC: say end cartouche. To say end cartouche:
	if the current orthography is logographic:
		say "[close bracket]".

[ A lot of words can be used to refer to the combination of two sitelen pona graphemes into one without explicitly specifying the two strategies for doing so, stacking and scaling: combine, compose, compound, join. Here I choose "combine".

"combining space" isn't much of a real typography term; I use this name because this phrase prints a regular space in alphabetic mode, but prints a combining character in logographic mode. Because works written in sitelen pona may make frequent use of glyph combinations, we use the obnoxiously short phrase [~] for ease of reading and writing source text.

For example, "toki[~]pona" would display as "toki pona" in alphabetic mode, but in logographic mode the "pona" grapheme would render inside the "toki" grapheme, like the toki pona logo.]
To say ~: say combining space. To say combining space:
	if the current orthography is logographic and glyph composition enabled is true:
		say "[unicode 8205]"; [zero-width joiner]
	otherwise:
		say " ".
To say ideographic space:
	if the current orthography is logographic:
		say "　". [ ← That is an ideographic space. ]

To decide if (T - some text) is multiple words:
	if the number of words in T > 1 or T exactly matches the text "[unicode 8205]":
		yes;
	no.

[ Shortcuts for common long glyphs. ]
To say kama:      say      "kama[long glyph]".
To say kepeken: say "kepeken[long glyph]".
To say lon:        say          "lon[long glyph]".
To say pi:         say            "pi[long glyph]".
To say sama:   say      "sama". [nasin nanpa doesn't have a long glyph for sama.]
To say tan:     say          "tan". [nasin nanpa doesn't have a long glyph for tan.]
To say tawa:  say       "tawa[long glyph]".

[ «te» and «to» are arguably toki pona "particles", but they're basically 「corner brackets」. lipu su uses them.
  These two phrases resolve to a quotation mark in alphabetic mode, or te/to in logographic mode. In the latter case, we add | to prevent them from ligaturizing with adjacent words. (A space could also accomplish this.)
  Since we're explicitly declaring our opening and closing quotation marks anyway, we might as well use opening and closing “curly quotes” instead of "straight quotes". The difference is hard to see in most fonts, but it's still a fun little upside of typing out so many bracketed phrases for toki pona prose.]
To say te:
	if the current orthography is logographic:
		say "te|";
	otherwise:
		say "[left double quote]". [ “ ]
To say to -- running on:
	if the current orthography is logographic:
		say "|to";
	otherwise:
		say "[right double quote]". [ ” ]
To say meta te: say "[if az][left single quote][else][left double quote]".
To say meta to -- running on: say "[if az][right single quote][else][right double quote]".

[ Commas render as descending tally marks in nasin nanpa, but I like using commas in the alphabetic system. They're never necessary, so let's use this phrase to optionally include them depending on the orthography. ]
To say comma:
	if the current orthography is alphabetic:
		say ",".

[ `>` looks like li, so use a fleuron instead. ]
To decide what text is the appropriate command prompt (this is the prompt fleuronization rule):
	if the current orthography is alphabetic:
		decide on ">";
	otherwise:
		decide on "❧".

[ Parentheses are used for ligatures in nasin nanpa. Maybe we should have an alternative in case we really want to parenthesize in sitelen pona? Ideally we should just avoid parentheticals in nasin nanpa, but this can be a fallback. ]
To say paren:
	if the current orthography is alphabetic:
		say "(";
	otherwise:
		say "｛".
To say close paren:
	if the current orthography is alphabetic:
		say ")";
	otherwise:
		say "｝".

To say secular sewi:
	if the current orthography is alphabetic:
		say "sewi";
	otherwise:
		say "sewi1".
To say non-secular sewi:
	say "sewi".

[ A protagonist who harbors empathy for animals may prefer to write «kala» with eyes. An angler may prefer to omit the eyes. ]
To say kala with eyes:
	if the current orthography is alphabetic:
		say "kala";
	otherwise:
		say "kala1".
To say kala without eyes:
	say "kala".

Section - Symmetrize Obituary

[Obituaries are usually printed *** like this ***, but nasin nanpa's ligatures consume the space before the second set of asterisks, so the sitelen pona ends up looking more *** like this***. Let's add a zero-width space after the obituary to make this prettier.]

Include (-[ PRINT_OBITUARY_HEADLINE_R;
    print "^^    ";
    VM_Style(ALERT_VMSTY);
    print "***";
    if (deadflag == 1) PRINT_OBITUARY_HEADLINE_RM('A');
    if (deadflag == 2) PRINT_OBITUARY_HEADLINE_RM('B');
    if (deadflag == 3) PRINT_OBITUARY_HEADLINE_RM('C');
    if (deadflag ~= 0 or 1 or 2 or 3)  {
        print " ";
        TEXT_TY_Say(deadflag);
        if ((+ the current orthography +) == (+ logographic +)) {
		print "​"; ! zero-width space
	}
        print " ";
    }
    print "***";
    VM_Style(NORMAL_VMSTY);
    print "^^^";
    rfalse;
];-) replacing "PRINT_OBITUARY_HEADLINE_R".
	
Chapter - Warn about unended long glyphs

Every turn (this is the scold unended long glyphs rule):
	if currently printing a long glyph is true:
		say "[fixed letter spacing]   Warning: A long glyph was printed this turn, but without an [bracket]end long glyph[close bracket] marker. You may have forgotten one.    [roman type]".

Chapter - List Writer Bit Flips - Unindexed

[We want to never "list the contents of" anything "as a sentence" when in logographic mode, because doing so includes commas, which nasin nanpa renders poorly. We could override every rule that says "list the contents of …", but there are several. Instead of duplicating several long rules from the Standard Rules just to change a few lines, let's override the "list the contents of" phrase.

Similarly, we never want to preface with is/are. (It's not enough to blank out list writer internal rule response (V) since the list writer prints a space after it.)]

To decide what number is the logographic orthography bit:
	if the current orthography is alphabetic:
		decide on 0;
	decide on 1.

To list the contents of (O - an object),
	with newlines,
	indented,
	giving inventory information,
	as a sentence,
	including contents,
	including all contents,
	tersely,
	giving brief inventory information,
	using the definite article,
	listing marked items only,
	prefacing with is/are,
	not listing concealed items,
	suppressing all articles,
	with extra indentation,
	and/or capitalized
	(documented at ph_listcontents):
	(- WriteListFrom(child({O}), {phrase options} & ~(ENGLISH_BIT * (+ the logographic orthography bit +) + ISARE_BIT)); -).

Chapter - Localize Banner

[ The pending version of Inform adds localization to the word “by” in the banner text, but v10.1.2 does not. To avoid compiling an unreleased version of Inform, we hack the banner to use «tan» instead of “by”. While we're at it, we fix the author name to render correctly in sitelen pona, and translate technical terms like “Serial Number”.]

[ nasin nanpa does not play well with title case names, attempting to render them as sitelen pona glyphs. For example, "jan Wiwijen" gets rendered like "👤 Wiwi+". To avoid this, an author who has a sitelen pona spelling in mind for their name should provide a value for the "logographic story author" text, like this:
	
	"anpa ma" by "jan Wiwijen"
	
	The logographic story author is "jan [cartouche]wan ijo wan ijo jaki en nanpa[end cartouche]".

This functionality is also available for the story title, which should be used if it contains a name:
	
	"jan Osu pi wawa nasa" by jan Sonja
	
	The logographic story title is "jan [cartouche]o suli uta[end cartouche] pi wawa nasa".]

The logographic story author is some text that varies.
The logographic story title is some text that varies.

Last when play begins when the logographic story author is "" (this is the uninitialized logographic author fallback rule):
	[ The author should provide a value for the logographic story author text, but failing that, this rule attempts to generate a sensible one from the normal story author text.
	For example, our author might be something like "jan Wiwijen". For this to display legibly in nasin nanpa, we turn it into "jan WIWIJEN". So, we all-capitalize any title-case words in the author name.
	More specifically, we all-capitalize any word containing any character besides a lowercase toki pona letter. So "Helene von Breuning" would still get all-capitalized to "HELENE VON BREUNING". (This still lacks a headnoun, but at least it's legible in the logographic font.) ]
	now the logographic story author is the story author;
	replace the regular expression "\b\w*<^ptksmnljwaeiou\s>\w*\b" in the logographic story author with "\u0".

Last when play begins when the logographic story title is "" (this is the uninitialized logographic story title fallback rule):
	now the logographic story title is the story title.

[ >VERSION and >TRANSCRIPT both output English-y text after the banner. Let's render that in the monospace font rather than nasin nanpa. ]
After printing the banner text when the current action is requesting the story file version or the current action is switching the story transcript on (this is the print the version text in monospace instead of nasin nanpa rule):
	if the current orthography is logographic:
		say fixed letter spacing.

Section - Banner Localization Internals - Unindexed

The banner's author text is some text that varies.
The banner's title text is some text that varies.
Before printing the banner text (this is the banner orthography rule):
	if the current orthography is alphabetic:
		now the banner's author text is the story author;
		now the banner's title text is the story title;
	otherwise:
		now the banner's author text is the logographic story author;
		now the banner's title text is the logographic story title.

The banner's Inform version style marker is some text that varies.
Before printing the banner text (this is the print the Inform version in monospace instead of nasin nanpa rule):
	if the current orthography is logographic:
		now the banner's Inform version style marker is "[fixed letter spacing] ";
	otherwise:
		now the banner's Inform version style marker is "".

Include (-[ Banner;
   BeginActivity(PRINTING_BANNER_TEXT_ACT);
   if (ForActivity(PRINTING_BANNER_TEXT_ACT) == false) {
	   	VM_Style(HEADER_VMSTY);
		TEXT_TY_Say((+ banner's title text +));
		VM_Style(NORMAL_VMSTY);
		new_line;
		TEXT_TY_Say(Headline);
		if (KIT_CONFIGURATION_BITMAP & STORY_AUTHOR_TCBIT) {
			print " tan "; TEXT_TY_Say((+ banner's author text +));
		}
		new_line;
		VM_Describe_Release();
		print " / kepeken ilo ";
		TEXT_TY_Say((+ banner's Inform version style marker +));
		print "Inform 7 v", (PrintI6Text) I7_VERSION_NUMBER;
		VM_Style(NORMAL_VMSTY);
		#Ifdef DEBUG;
		print " / D";
		#Endif; ! DEBUG
		font on;
		new_line;
    }
    EndActivity(PRINTING_BANNER_TEXT_ACT);
];-) replacing "Banner". 

Section - Translate Banner's Release Description (for Glulx only)

Include (-[ VM_Describe_Release i;
	print "nanpa ‌"; ! ← a ZWNJ is here for ligature reasons; we don't want "nanpa 1" to get turned into some yet-unimplemented nasin nanpa ligature for an alternative nanpa glyph.
	@aloads ROM_GAMERELEASE 0 i;
	print i;
	print " / nanpa tenpo li ‌"; ! ← ZWNJ here as well.
	for (i=0 : i<6 : i++) print (char) ROM_GAMESERIAL->i;
];-) replacing "VM_Describe_Release".

Section - Translate Banner's Release Description (for Z-machine only)

Include (-[ VM_Describe_Release i;
	print "nanpa ", (HDR_GAMERELEASE-->0) & $03ff, " / nanpa tenpo li ";
	for (i=0 : i<6 : i++) print (char) HDR_GAMESERIAL->i;
];-) replacing "VM_Describe_Release".


Book - No Articles

[ Make sure we don't have "the"s or "an"s or "a"s hanging around. ]
When play begins (this is the universal proper-naming rule):
	now every object is proper-named.

Book - mute toki - Overriding Default Responses

The adjust light rule response (A) is "suno[~]ala li [lon] ni[ELG]. sina ken ala lukin!". ["[It] [are] [if story tense is present tense]now [end if]pitch dark in[if story tense is present tense]here[else]there[end if]!"]
The generate action rule response (A) is "[paren]mi kute e ijo[~]mute taso[close paren]". ["(considering the first sixteen objects only)[command clarification break]".]
The generate action rule response (B) is "seme a??". ["Nothing to do!".] [?]
The basic accessibility rule response (A) is "mi sona[~]ala e ijo[~]ni.". ["You must name something more substantial.".]
The basic visibility rule response (A) is "pimeja la [mi] ken ala lukin.". ["[It] [are] pitch dark, and [we] [can't see] a thing."]
The requested actions require persuasion rule response (A) is "[noun li] kute ala." ["[The noun] [have] better things to do.".]
The carry out requested actions rule response (A) is "[noun li] ken ala.". ["[The noun] [are] unable to do that.".]
The access through barriers rule response (A) is "[mi] ken ala luka e [noun]." ["[regarding the noun][Those] [aren't] available.".]
The can't reach inside closed containers rule response (A) is "taso [noun li] pini.". ["[The noun] [aren't] open."]
The can't reach inside rooms rule response (A) is "[mi li] ken ala luka e [noun].". ["[We] [can't] reach into [the noun]."]
The can't reach outside closed containers rule response (A) is "taso [noun li] pini.". ["[The noun] [aren't] open."]
The list writer internal rule response (A) is " [paren][regarding the noun][ona] li ". [" ("]
The list writer internal rule response (B) is "[close paren]". [")"]
The list writer internal rule response (C) is " ". [ tried making this e, but ended up doing something else]
The list writer internal rule response (D) is "suno". ["providing light"]
The list writer internal rule response (E) is "pini". ["closed"]
The list writer internal rule response (F) is "jo e ala". ["empty"]
The list writer internal rule response (G) is "pini li jo e ala". ["closed and empty"]
The list writer internal rule response (H) is "pini li suno". ["closed and providing light"]
The list writer internal rule response (I) is "jo e ala, li suno". ["empty and providing light"]
The list writer internal rule response (J) is "pini, li jo e ala, li suno". ["closed, empty[if serial comma option is active],[end if] and providing light"]
The list writer internal rule response (K) is "suno, li len". ["providing light and being worn".]
The list writer internal rule response (L) is "len". ["being worn"]
The list writer internal rule response (M) is "open". ["open"]
The list writer internal rule response (N) is "open, jo e ala". ["open but empty"]
The list writer internal rule response (O) is "pini". ["closed"]
The list writer internal rule response (P) is "pini; sina ken ala open e [ona]". ["closed and locked"] ["closed and locked"]
The list writer internal rule response (Q) is "jo". ["containing".]
The list writer internal rule response (R) is "jo". ["on [if the noun is a person]whom[otherwise]which[end if] ".]
The list writer internal rule response (S) is "lon". [", on top of [if the noun is a person]whom[otherwise]which[end if] ".]
The list writer internal rule response (T) is "jo". ["in [if the noun is a person]whom[otherwise]which[end if] ".]
The list writer internal rule response (U) is "insa". [", inside [if the noun is a person]whom[otherwise]which[end if] ".]
The list writer internal rule response (V) is "". ["[regarding list writer internals][are]"]. ["[regarding list writer internals][are]"]
The list writer internal rule response (W) is "ijo[~]ala". ["[regarding list writer internals][are] nothing".]
The list writer internal rule response (X) is "ijo[~]ala". ["Nothing"]
The list writer internal rule response (Y) is "ijo[~]ala". ["nothing"]
The action processing internal rule response (A) is "[noun] ken ala sona ni.". ["[bracket]That command asks to do something outside of play, so it can only make sense from you to me. [The noun] cannot be asked to do this.[close bracket]".]
The action processing internal rule response (B) is "sina wile nimi e ijo." ["You must name an object.".]
The action processing internal rule response (C) is "sina ken ala nimi ala e ijo." ["You may not name an object.".]
The action processing internal rule response (D) is "sina wile nimi e ijo." ["You must supply a noun.".]
The action processing internal rule response (E) is "sina ken ala nimi e ijo." ["You may not supply a noun.".]
The action processing internal rule response (F) is "sina wile nimi e ijo nanpa tu." ["You must name a second object.".]
The action processing internal rule response (G) is "sina ken ala nimi e ijo tu.". ["You may not name a second object.".]
The action processing internal rule response (H) is "sina wile nimi e ijo nanpa tu.". ["You must supply a second noun.".]
The action processing internal rule response (I) is "nimi pali ni la sina ken ala nimi e ijo[~]tu.". ["You may not supply a second noun.".]
The action processing internal rule response (J) is "ijo suli la[comma] [mi] ken ala mute.". ["(Since something dramatic has happened, your list of commands has been cut short.)".] [Is this ever used?]
The action processing internal rule response (K) is "mi sona ala e nimi ni.". ["I didn't understand that instruction."]
The parser error internal rule response (A) is "mi sona ala e nimi ni.". ["I didn't understand that sentence."]
The parser error internal rule response (B) is "seme[?] [lob]mi sona e ni taso: sina wile ". ["I only understood you as far as wanting to "]
The parser error internal rule response (C) is  "seme[?] [lob]mi sona taso la [mi] wile (tawa) ". ["I only understood you as far as wanting to (go) ".]
The parser error internal rule response (D) is "mi sona[~]ala e nanpa ni.". ["I didn't understand that number."]
The parser error internal rule response (E) is "seme[?] [lob][mi li] ken ala lukin e ijo[~]ni.". ["[We] [can't] see any such thing."]
The parser error internal rule response (F) is "seme[?] [lob]sina toki lili.". [ "You seem to have said too little!".]
The parser error internal rule response (G) is "[mi li] jo ala ni.". ["[We] [aren't] holding that!"]
The parser error internal rule response (H) is "[mi li] ken ala [kepeken] ijo[~]mute[ELG] [kepeken] nimi ni[ELG].". ["You can't use multiple objects with that verb."]
The parser error internal rule response (I) is "seme[?] [lob]nimi ni li mute…". ["You can only use multiple objects once on a line.".]
The parser error internal rule response (J) is "seme[?] [lob]mi sona[~]ala [te][pronoun i6 dictionary word][to]." ["I'm not sure what ['][pronoun i6 dictionary word]['] refers to.".]
The parser error internal rule response (K) is "[if az][te][pronoun i6 dictionary word][to] ([noun]) li lon ala ni.[else]mi pilin e ni: [te][pronoun i6 dictionary word][to] li [noun]. [end if][unless az or the noun is nothing]taso ona li lon ala ni." ["[We] [can't] see ['][pronoun i6 dictionary word]['] ([the noun]) at the moment.".]
The parser error internal rule response (L) is "seme[?] [lob]o toki[~]pona.". ["You excepted something not included anyway!"] [Without BUT1__WD, this is irrelevant.]
The parser error internal rule response (M) is "ona li jan[~]ala.". ["You can only do that to something animate.".]
The parser error internal rule response (N) is "mi sona ala e nimi pali ni.". ["That's not a verb I [if American dialect option is      active]recognize[otherwise]recognise[end if]."]
The parser error internal rule response (O) is "That's not something you need to refer to in the course of this game.". ["That's not something you need to refer to in the course of this game."]
The parser error internal rule response (P) is "mi sona ala li pini ona.". ["I didn't understand the way that finished.".]
The parser error internal rule response (Q) is "[number understood in specific toki pona] taso lon ni.". ["[if number understood is 0]None[otherwise]Only [number understood in words][end if] of those [regarding the number understood][are] available.".]
The parser error internal rule response (R) is "seme[?] [lob]mi sona ala e ona.". ["That noun did not make sense in this context.".]
The parser error internal rule response (S) is "seme[?] [lob]mi sona ala.". ["To repeat a command like 'frog, jump', just say 'again', not 'frog, again'.".] [ Unlikely to run into this ]
The parser error internal rule response (T) is "o weka e sitelen lili lon open nimi.". ["You can't begin with a comma."]
The parser error internal rule response (U) is "mi sona ala e nimi sina.". ["[mi] wile toki [tawa] jan[~]seme[ELG]? jan[~]ala li [lon] ni[ELG].".] [ "You seem to want to talk to someone, but I can't see whom.".] [I don't know why, but I seem to get this error in unrelated circumstances sometimes, so I'm making it more generic.]
The parser error internal rule response (V) is "[mi] ken ala toki tawa [noun].". ["You can't talk to [the noun].".]
The parser error internal rule response (W) is "sina wile toki [tawa] jan[ELG] la[comma] o toki sama ni: [te][command style]toki e olin tawa jan[roman type][to]." ["To talk to someone, try 'someone, hello' or some such.".]
The parser error internal rule response (X) is "seme[?]". ["I beg your pardon?".]
The parser nothing error internal rule response (A) is "pali ni li ala!". ["Nothing to do!"]
The parser nothing error internal rule response (B) is "ale ni li ala.". ["[There] [adapt the verb are from the third person plural] none at all available!".] [This one is hard to understand. ]
The parser nothing error internal rule response (C) is "taso [noun li] jo e ni.". ["[regarding the noun][Those] [seem] to belong to [the noun].".]
The parser nothing error internal rule response (D) is "[noun li] poki ala.". ["[regarding the noun][Those] [can't] contain things."]
The parser nothing error internal rule response (E) is "taso tenpo ni la[comma] [noun li] pini.". ["[The noun] [aren't] open.".]
The parser nothing error internal rule response (F) is "[noun li] jo e ala.". ["[The noun] [are] empty.".]
The darkness name internal rule response (A) is "pimeja". ["Darkness".]

The parser command internal rule response (A) is "a mi ken ala pona e ni.". ["Sorry, that can't be corrected."]
The parser command internal rule response (B) is "ale li pona.". ["Think nothing of it."]
The parser command internal rule response (C) is "'Oops' can only correct a single word.". ["'Oops' can only correct a single word."]
The parser command internal rule response (D) is "sina ken ala sin e ni.". ["You can hardly repeat that."]
The parser clarification internal rule response (A) is "sina toki e jan[~]seme[?] [lob]sina toki e ". ["Who do you mean, "]
The parser clarification internal rule response (B) is "sina toki e ijo[~]seme[?] [lob]sina toki e ". ["Which do you mean, "]
The parser clarification internal rule response (C) is "ijo wan taso ken. sina wile e ijo wan seme[?]". ["Sorry, you can only have one item here. Which exactly?"]
The parser clarification internal rule response (D) is "sina wile [parser command so far] jan[~]seme[?]". ["Whom do you want [if the noun is not the player][the noun] [end if]to[parser command so far]?".]
The parser clarification internal rule response (E) is "sina wile [parser command so far] seme[?]". ["What do you want [if the noun is not the player][the noun] [end if]to [parser command so far]?".]
The parser clarification internal rule response (F) is "ona". ["those things"]
The parser clarification internal rule response (G) is "ona". ["that"]
The parser clarification internal rule response (H) is " ". [" or "]

The yes or no question internal rule response (A) is "o toki e [te]lon[to] anu [te]ala[to]. ". ["Please answer yes or no."]
The print protagonist internal rule response (A) is "[mi]". ["[We]"]
The print protagonist internal rule response (B) is "[mi]". ["[ourselves]"]
The print protagonist internal rule response (C) is "[mi]". ["[our] former self"]
The standard implicit taking rule response (A) is "[paren]nanpa wan la [mi li] jo e [noun][close paren][command clarification break]". ["(first taking [the noun])[command clarification break]"]
The standard implicit taking rule response (B) is "[paren]nanpa wan la [second noun li] jo e [noun][close paren][command clarification break]". ["([the second noun] first taking [the noun])[command clarification break]"]

[ zero-width spaces in these for sitelen pona ]
The print obituary headline rule response (A) is " [mi li] moli ". [" You have died "]
The print obituary headline rule response (B) is " [mi li] pona ". [" You have won "]
The print obituary headline rule response (C) is " pini ". [" The End "]

The immediately undo rule response (A) is "sina ken ala monsi e tenpo [lon] musi ni[ELG].". ["The use of 'undo' is forbidden in this story."]
The immediately undo rule response (B) is "sina ken ala monsi e tenpo ala!". ["You can't 'undo' what hasn't been done!"]
The immediately undo rule response (C) is "ilo[~]nanpa sina li ken ala monsi e tenpo.". ["Your interpreter does not provide 'undo'. Sorry!"]
The immediately undo rule response (D) is "pakala. mi monsi ala e tenpo.". ["'Undo' failed. Sorry!"]
The immediately undo rule response (E) is "tenpo wan li monsi.". ["[bracket]Previous turn undone.[close bracket]"]
The immediately undo rule response (F) is "sina ken ala monsi e tenpo mute.". ["'Undo' capacity exhausted. Sorry!"]
The quit the game rule response (A) is "sina wile weka tan musi ni? lon ala lon? ". ["Are you sure you want to quit? "]
The save the game rule response (A) is "pakala. mi pali ala e lipu tenpo." ["Save failed.".]
The save the game rule response (B) is "pona." ["Ok.".]
The restore the game rule response (A) is "pakala. mi kama ala e lipu tenpo." ["Restore failed.".]
The restore the game rule response (B) is "pona." ["Ok.".]
The restart the game rule response (A) is "lon ala lon? sina wile open sin e musi? ". ["Are you sure you want to restart? "]
The restart the game rule response (B) is "mi nasa." ["Failed.".]
The verify the story file rule response (A) is "ale li pona. lipu[~]nanpa [pi] musi[~]ni[ELG] li pakala ala.". ["The game file has verified as intact.".]
The verify the story file rule response (B) is "ale li pona[~]ala. lipu[~]nanpa [pi] musi[~]ni[ELG] li pakala." ["The game file did not verify as intact, and may be corrupt.".]
The switch the story transcript on rule response (A) is "ala. tenpo ni la lipu [pi] toki musi[ELG] li open.". ["Transcripting is already on."]
The switch the story transcript on rule response (B) is "toki ale mi en toki ale sina li kama awen [lon] lipu[ELG]. musi ni li:". ["Start of a transcript of:"]
The switch the story transcript on rule response (C) is "pakala. lipu [pi] toki musi[ELG] li kama ala open.". ["Attempt to begin transcript failed."]
The switch the story transcript off rule response (A) is "ala. lipu [pi] toki musi[ELG] li open ala lon tenpo ni.". ["Transcripting is already off."]
The switch the story transcript off rule response (B) is "[line break]lipu [pi] toki musi[ELG] li pini.". ["[line break]End of transcript."]
The switch the story transcript off rule response (C) is "pakala. mi ken ala pini e lipu [pi] musi toki[ELG].". ["Attempt to end transcript failed."]
The announce the score rule response (A) is "[if the story has ended]lon musi ni la sina jo e [otherwise]tenpo ni la sina jo e [end if][score]. jan ken jo e [maximum score]. tenpo [turn count] li pini.". ["[if the story has ended]In that game you scored[otherwise]You have so far scored[end if][score] out of a possible [maximum score], in [turn count] turn[s]"]
The announce the score rule response (B) is ". tan ni la sina ". [", earning you the rank of "]
The announce the score rule response (C) is "nanpa li ala lon ni musi." ["[There] [are] no score in this story.".]
The announce the score rule response (D) is "[bracket]Your score has just gone up by [number understood in words] point[s].[close bracket]". ["[bracket]Your score has just gone up by [number understood in words]point[s].[close bracket]"]
The announce the score rule response (E) is "[bracket]Your score has just gone down by [number understood in words] point[s].[close bracket]". ["[bracket]Your score has just gone down by [number understood in words]point[s].[close bracket]"]
The standard report preferring abbreviated room descriptions rule response (A) is " is now in its 'superbrief' mode, which always gives short descriptions of locations (even if you haven't been there before).". [" is now in its 'superbrief' mode, which always gives short descriptions of locations (even if you haven't been there before)."]
The standard report preferring unabbreviated room descriptions rule response (A) is " is now in its 'verbose' mode, which always gives long descriptions of locations (even if you've been there before).". [" is now in its 'verbose' mode, which always gives long descriptions of locations (even if you've been there before)."]
The standard report preferring sometimes abbreviated room descriptions rule response (A) is " is now in its 'brief' printing mode, which gives long descriptions of places never before visited and short descriptions otherwise.". [" is now in its 'brief' printing mode, which gives long descriptions of places never before visited and short descriptions otherwise."]
The standard report switching score notification on rule response (A) is "Score notification on.". ["Score notification on."]
The standard report switching score notification off rule response (A) is "Score notification off.". ["Score notification off."]
The announce the pronoun meanings rule response (A) is "tenpo ni la ". ["At the moment, "]
The announce the pronoun meanings rule response (B) is "li sama ". ["means "]
The announce the pronoun meanings rule response (C) is "li sama ala". ["is unset"]
The announce the pronoun meanings rule response (D) is "nasa a. musi ni li sona ala e nimi [te]ona[to].". ["no pronouns are known to the game.".]
The announce items from multiple object lists rule response (A) is "[current item from the multiple object list]: [run paragraph on]". ["[current item from the multiple object list]: [run paragraph on]"]
The block vaguely going rule response (A) is "sina wile toki e nasin." ["You'll have to say which compass direction to go in.".]
The print the final prompt rule response (A) is "[command prompt] [run paragraph on]". ["> [run paragraph on]"]
The print the final question rule response (A) is "sina ken… ". ["Would you like to "]
The print the final question rule response (B) is " anu ". [" or "]
The standard respond to final question rule response (A) is "o kute. o kepeken nimi lawa wan tan ni." ["Please give one of the answers above.".]
The you-can-also-see rule response (A) is "[mi][indenting 1] ". ["[We] "]
The you-can-also-see rule response (B) is "[domain] la [mi][indenting 3] ". ["On [the domain] [we] "]
The you-can-also-see rule response (C) is "insa [domain] la [mi][indenting 4] ". ["In [the domain] [we] "]
The you-can-also-see rule response (D) is "ken lukin [additionally indenting 2]". ["[regarding the player][can] also see "]
The you-can-also-see rule response (E) is "ken lukin [additionally indenting 2]". ["[regarding the player][can] see "]
The you-can-also-see rule response (F) is "". [" here"]
The use initial appearance in room descriptions rule response (A) is "". ["On [the item] "] [adjusted elsewhere TODO document these better]
The describe what's on scenery supporters in room descriptions rule response (A) is "". ["lon [item] la".] ["On [the item] "]
The describe what's on mentioned supporters in room descriptions rule response (A) is "". ["lon [item] la".] ["On [the item] "]
The print empty inventory rule response (A) is "[mi li] jo e ala.". ["[We] [are] carrying nothing."]
The print standard inventory rule response (A) is "[mi li] jo e:[line break]". ["[We] [are] carrying:[line break]"]
The report other people taking inventory rule response (A) is "[actor li] lukin e ijo ona.". ["[The actor] [look] through [their] possessions."]
The can't take yourself rule response (A) is "mi sona[~]ala. [mi li] jo e [mi] [lon] tenpo ale[ELG].". ["[We] [are] always self-possessed."]

[ This one is kinda tricky; you'll probably want to override it (or replace the rule) depending on how picking up animals works in your story. Or maybe your protagonist is strong enough to lift a person. ]
The can't take other people rule response (A) is "[if the noun is an animal][mi] wile ala jo e soweli.[otherwise][noun li] jan! [mi] ken ala jo e jan.". ["I don't suppose [the noun] [would care] for that."] 

The can't take component parts rule response (A) is "taso [noun] en [whole] li wan.". ["[regarding the noun][Those] [seem] to be a part of [the whole]."]
The can't take people's possessions rule response (A) is "taso [owner li] jo e [noun]." ["[regarding the noun][Those] [seem] to belong to [the owner].".]
The can't take items out of play rule response (A) is "ona li ala.". ["[regarding the noun][Those] [aren't] available."]
The can't take what you're inside rule response (A) is "nanpa wan la [mi li] wile weka tan [noun].". ["[We] [would have] to get[if noun is a supporter]off[otherwise]out of[end if] [the noun] first."]
The can't take what's already taken rule response (A) is "sina jo e ona [lon] tenpo ni[ELG].". ["[We] already [have] [regarding the noun][those]."]
The can't take scenery rule response (A) is "ona li tawa ala." ["[regarding the noun][They're] hardly portable.".] [This could be made cuter, depending on what scenery ends up being. Complain about not being able to hold "mun", perhaps.]
The can only take things rule response (A) is "[mi] ken ala jo e [noun]." ["[We] [cannot] carry [the noun].".]
The can't take what's fixed in place rule response (A) is "ona li tawa ala." ["[regarding the noun][They're] fixed in place.".]
The use player's holdall to avoid exceeding carrying capacity rule response (A) is "[paren][mi li] pana e [transferred item] lon insa [current working sack][close paren][command clarification break]". ["(putting [the transferred item] into [the current working sack]to make room)[command clarification break]"]
The can't exceed carrying capacity rule response (A) is "[mi li] ken ala! tenpo ni la[comma] [mi li] [if the carrying capacity of the player > 0]jo e ijo [carrying capacity of the player in vague toki pona][else]ken ala jo e ijo[end if].". ["[We]['re] carrying too many things already."]
The standard report taking rule response (A) is "[mi li] kama jo.". ["Taken."]
The standard report taking rule response (B) is "[actor li] kama jo e [noun].". ["[The actor] [pick] up [the noun]."]
The can't remove what's not inside rule response (A) is "taso ona li [lon] ala ni[ELG] [lon]tenpo ni[ELG].". ["But [regarding the noun][they] [aren't] there now."]
The can't remove from people rule response (A) is "taso [owner] li jo e [noun].". ["[regarding the noun][Those] [seem] to belong to [the owner]."]
The can't drop yourself rule response (A) is "seme[?] sina ken ala weka e sina.". ["[We] [lack] the dexterity."]
The can't drop body parts rule response (A) is "sina ken ala weka e sina." ["[We] [can't drop] part of [ourselves].".]
The can't drop what's already dropped rule response (A) is "taso [mi li] jo ala e [noun].". ["[The noun] [are] already here."]
The can't drop what's not held rule response (A) is "[mi li] jo ala e [noun].". ["[We] [haven't] got [regarding the noun][those]."]
The can't drop clothes being worn rule response (A) is "[paren]nanpa wan la [mi li] len ala e [noun][close paren][command clarification break]". ["(first taking [the noun] off)[command clarification break]"]
The can't drop if this exceeds carrying capacity rule response (A) is "[receptacle li] ken ala jo sin.". ["[There] [are] no more room on [the receptacle]."]
The can't drop if this exceeds carrying capacity rule response (B) is "[receptacle li] ken ala jo sin.". ["[There] [are] no more room in [the receptacle]."]
The standard report dropping rule response (A) is "[mi li] pana e [noun] tawa ma.". ["Dropped."]
The standard report dropping rule response (B) is "[The actor] pana [noun] tawa ma.". ["[The actor] [put] down [the noun]."]
The can't put something on itself rule response (A) is "[We] [can't put] something on top of itself.". ["[We] [can't put] something on top of itself."]
The can't put onto what's not a supporter rule response (A) is "ijo li ken ala lon [second noun].". ["Putting things on [the second noun] [would achieve] nothing."]
The can't put clothes being worn rule response (A) is "[paren]nanpa wan la sina len ala e ona[close paren][command clarification break]". ["(first taking [regarding the noun][them] off)[command clarification break]"]
The can't put if this exceeds carrying capacity rule response (A) is "ijo mute ken ala lon [second noun].". ["[There] [are] no more room on [the second noun]."]
The concise report putting rule response (A) is "pana.". ["Done."]
The standard report putting rule response (A) is "[actor] li pana e [noun] [lon] [second noun][ELG].". ["[The actor] [put] [the noun] on [the second noun]."]
The can't insert what's already inserted rule response (A) is "ala. [noun li] lon [second noun] [lon] tenpo ni[ELG].". ["[The noun] [are] already there."]
The can't insert something into itself rule response (A) is "[mi li] ken ala insa ona tawa ona.". ["[We] [can't put] something inside itself."]
The can't insert into closed containers rule response (A) is "[second noun li] pini.". ["[The second noun] [are] closed."]
The can't insert into what's not a container rule response (A) is "[second noun li] poki ala.". ["[regarding the second noun][Those] [can't contain] things."]
The can't insert clothes being worn rule response (A) is "[paren]nanpa wan la [mi li] len ala e [noun][close paren][command clarification break]". ["(first taking [regarding the noun][them] off)[command clarification break]"]
The can't insert if this exceeds carrying capacity rule response (A) is "[second noun] ken ala jo e ijo mute.". ["[There] [are] no more room in [the second noun]."]
The concise report inserting rule response (A) is "pona.". ["Done."]
The standard report inserting rule response (A) is "[mi] insa e [noun] tawa [second noun]." ["[The actor] [put] [the noun] into [the second noun].".]
The can't eat unless edible rule response (A) is "[mi] ken ala moku li [noun].". ["[regarding the noun][They're] plainly inedible."]
The can't eat clothing without removing it first rule response (A) is "[paren]nanpa wan la [mi] weka e ona tan sijelo [mi][close paren][command clarification break]". ["(first taking [the noun] off)[command clarification break]"]
The can't eat other people's food rule response (A) is "[owner li] jo e ona. [mi li] wile ala ike e [owner].". ["[The owner] [might not appreciate] that."]
The standard report eating rule response (A) is "[mi li] moku e [noun]. ona li moku pona.". ["[We] [eat] [the noun]. Not bad."]
The standard report eating rule response (B) is "[actor li] moku e [noun].". ["[The actor] [eat] [the noun]."]
The stand up before going rule response (A) is "[paren]nanpa wan la [mi] weka tan [chaise][close paren][command clarification break]". ["(first getting off [the chaise])[command clarification break]"]
The can't travel in what's not a vehicle rule response (A) is "nanpa wan la [mi li] wile tawa tan [nonvehicle].". ["[We] [would have] to get off [the nonvehicle] first."]
The can't travel in what's not a vehicle rule response (B) is "nanpa wan la [mi li] wile tawa tan [nonvehicle].". ["[We] [would have] to get out of [the nonvehicle] first."]
The can't go through undescribed doors rule response (A) is "[mi] tawa ken ala e ni nasin.". ["[We] [can't go] that way."]
The can't go through closed doors rule response (A) is "[paren]nanpa wan la [the door gone through][close paren][command clarification break]". ["(first opening [the door gone through])[command clarification break]"]
The can't go that way rule response (A) is "[mi] ken ala [tawa] nasin ni[ELG].". ["[We] [can't go] that way."]
The can't go that way rule response (B) is "sina ken ala tan ni: nasin pi [the door gone through] li ala.". ["[We] [can't], since [the door gone through] [lead] nowhere."]
The describe room gone into rule response (A) is "[actor li] tawa sewi.". ["[The actor] [go] up"]
The describe room gone into rule response (B) is "[actor li] tawa anpa.". ["[The actor] [go] down"]
The describe room gone into rule response (C) is "[actor li] tawa [noun]". ["[The actor] [go] [noun]"]
The describe room gone into rule response (D) is "[actor li] kama tan sewi.". ["[The actor] [arrive] from above"]
The describe room gone into rule response (E) is "[actor li] kama tan anpa.". ["[The actor] [arrive] from below"]
The describe room gone into rule response (F) is "[actor li] kama tan [the back way]". ["[The actor] [arrive] from [the back way]"]
The describe room gone into rule response (G) is "[actor li] kama.". ["[The actor] [arrive]"]
The describe room gone into rule response (H) is "[actor li] kama lon [the room gone to] tan sewi". ["[The actor] [arrive] at [the room gone to] from above"]
The describe room gone into rule response (I) is "[actor li] kama lon [the room gone to] tan anpa". ["[The actor] [arrive] at [the room gone to] from below"]
The describe room gone into rule response (J) is "[actor li] kama lon [the room gone to] tan [the back way]". ["[The actor] [arrive] at [the room gone to] from [the back way]"]
The describe room gone into rule response (K) is "[actor li] tawa lon [noun]". ["[The actor] [go] through [the noun]"]
The describe room gone into rule response (L) is "[actor li] kama tan [noun]". ["[The actor] [arrive] from [the noun]"]
The describe room gone into rule response (M) is "lon [the vehicle gone by]". ["on [the vehicle gone by]"]
The describe room gone into rule response (N) is "lon [the vehicle gone by]". ["in [the vehicle gone by]"]

The describe room gone into rule response (O) is ", pushing [the thing gone with] in front, and [us] along too". [", pushing [the thing gone with] in front, and [us] along too"]
The describe room gone into rule response (P) is ", pushing [the thing gone with] in front". [", pushing [the thing gone with] in front"]
The describe room gone into rule response (Q) is ", pushing [the thing gone with] away". [", pushing [the thing gone with] away"]
The describe room gone into rule response (R) is ", pushing [the thing gone with] in". [", pushing [the thing gone with] in"]
The describe room gone into rule response (S) is ", taking [us] along". [", taking [us] along"]

The can't enter what's already entered rule response (A) is "taso [mi] awen lon [noun].". ["But [we]['re] already on [the noun]."]
The can't enter what's already entered rule response (B) is "taso [mi] awen insa [noun].". ["But [we]['re] already in [the noun]."]
The can't enter what's not enterable rule response (A) is "ken ala lon [noun].". ["[regarding the noun][They're] not something [we] [can] stand on."]
The can't enter what's not enterable rule response (B) is "ken ala lon [noun].". ["[regarding the noun][They're] not something [we] [can] sit down on."]
The can't enter what's not enterable rule response (C) is "ken ala lape lon [noun].". ["[regarding the noun][They're] not something [we] [can] lie down on."]
The can't enter what's not enterable rule response (D) is "[mi] ken ala insa e [noun].". ["[regarding the noun][They're] not something [we] [can] enter."]
The can't enter closed containers rule response (A) is "[mi] ken ala insa e [noun] pi open ala". ["[We] [can't get] into the closed [noun]."]
The can't enter if this exceeds carrying capacity rule response (A) is "taso ijo mute ken ala lon [noun].". ["[There] [are] no more room on [the noun]."]
The can't enter if this exceeds carrying capacity rule response (B) is "taso ijo mute ken ala lon insa [noun].". ["[There] [are] no more room in [the noun]."]
The can't enter something carried rule response (A) is "ken ala." ["[We] [can] only get into something free-standing.".]

[ TODO I haven't tested these. These are just my first guesses. ]
The implicitly pass through other barriers rule response (A) is "[paren]nanpa wan la [mi li] tawa tan [current home][close paren][command clarification break]". ["(getting off [the current home])[command clarification break]"]
The implicitly pass through other barriers rule response (B) is "[paren]nanpa wan la [mi li] tawa tan [current home][close paren][command clarification break]". ["(getting out of [the current home])[command clarification break]"]
The implicitly pass through other barriers rule response (C) is "[paren]nanpa wan la [mi li] tawa lon [target][close paren][command clarification break]". ["(getting onto [the target])[command clarification break]"]
The implicitly pass through other barriers rule response (D) is "[paren]nanpa wan la [mi li] tawa lon insa [target][close paren][command clarification break]". ["(getting into [the target])[command clarification break]"]
The implicitly pass through other barriers rule response (E) is "[paren]nanpa wan la [mi li] kama lon insa [target][close paren][command clarification break]". ["(entering [the target])[command clarification break]"]

The standard report entering rule response (A) is "[mi li] kama lon [noun].". ["[We] [get] onto [the noun]."]
The standard report entering rule response (B) is "[mi li] kama lon insa [if the printed name of the noun is multiple words]pi [end if][noun].". ["[We] [get] into [the noun]."]
The standard report entering rule response (C) is "[actor li] tawa insa [noun].". ["[The actor] [get] into [the noun]."]
The standard report entering rule response (D) is "[actor li] tawa lon [noun].". ["[The actor] [get] onto [the noun]."]
The can't exit when not inside anything rule response (A) is "taso [mi li] insa ala [lon] tenpo ni[ELG].". ["But [we] [aren't] in anything at the [if story tense is presenttense]moment[otherwise]time[end if]."]
The can't exit closed containers rule response (A) is "[cage li] open ala. [mi li] ken ala tawa tan ona.". ["You can't get out of the closed [cage]."]
The standard report exiting rule response (A) is "[mi li] weka tan [the container exited from].". ["[We] [get] off [the container exited from]."]
The standard report exiting rule response (B) is "[mi li] weka tan [the container exited from].". ["[We] [get] out of [the container exited from]."]
The standard report exiting rule response (C) is "[actor li] tawa tan [the container exited from].". ["[The actor] [get] out of [the container exited from]."]
The can't get off things rule response (A) is "taso [mi li] lon[~]ala [noun] [lon] tenpo ni[ELG].". ["But [we] [aren't] on [the noun] at the [if story tense is present tense]moment[otherwise]time[end if]."]
The standard report getting off rule response (A) is "[actor li] weka tan [noun].". ["[The actor] [get] off [the noun]."]
The room description heading rule response (A) is "pimeja". ["Darkness"]
The room description heading rule response (B) is " [paren][lon] [the intermediate level][ELG][close paren]". [" (on [the intermediate level])"]
The room description heading rule response (C) is " [paren][lon]insa [the intermediate level][ELG][close paren]". [" (in [the intermediate level])"]
The room description body text rule response (A) is "tomo ni li pimeja! [mi] ken ala lukin.". ["[It] [are] pitch dark, and [we] [can't see] a thing."]
The other people looking rule response (A) is "[actor li] lukin.". ["[The actor] [look] around."]
The examine directions rule response (A) is "[mi li] lukin e ijo[~]nasa ala [lon] nasin ni[ELG].". ["[We] [see] nothing unexpected in that direction."]
The examine containers rule response (A) is "[noun li] jo[indenting the ideographic length of the printed name of the noun plus one]". ["In [the noun] "]
The examine containers rule response (B) is "[noun li] jo e ala.". ["[The noun] [are] empty."]
The examine supporters rule response (A) is "". ["[noun li] jo".] ["On [the noun] "] [ TODO document better ]
The examine devices rule response (A) is "tenpo ni la [noun] li [if the noun is switched on]open[else]pini[end if].". ["[The noun] [are] [if story tense is present tense]currently [end if]switched [if the noun is switched on]on[otherwise]off[end if]."]
The examine undescribed things rule response (A) is "[noun li] [noun] taso." ["[We] [see] nothing special about [the noun].".]
The report other people examining rule response (A) is "[actor li] lukin e [noun].". ["[The actor] [look] closely at [the noun]."]
The standard looking under rule response (A) is "[mi li] lukin e ijo[~]ala lon anpa [if the printed name of the noun is multiple words]pi [end if][noun].". ["[We] [find] nothing of interest."]
The report other people looking under rule response (A) is "[actor li] lukin anpa e [noun].". ["[The actor] [look] under [the noun]."]
The can't search unless container or supporter rule response (A) is "[mi li] lukin e ijo[~]ala [lon] ona[ELG].". ["[We] [find] nothing of interest."]
The can't search closed opaque containers rule response (A) is "[noun li] open ala la [mi] ken ala lukin insa e [noun].". ["[We] [can't see] inside, since [the noun] [are] closed."]
The standard search containers rule response (A) is "[noun li] jo". ["In [the noun] "]
The standard search containers rule response (B) is "[noun li] jo e ala.". ["[The noun] [are] empty."]
The standard search supporters rule response (A) is "". [TODO document better; changed elsewhere] ["lon [noun] ".] ["On [the noun] "]
The standard search supporters rule response (B) is "ala li awen lon [noun].". ["[There] [are] nothing on [the noun]."]
The report other people searching rule response (A) is "[actor li] alasa lon [noun].". ["[The actor] [search] [the noun]."]
The block consulting rule response (A) is "[noun li] pana ala e sona tawa [mi].". ["[We] [discover] nothing of interest in [the noun]."]
The block consulting rule response (B) is "[actor li] lukin e [noun].". ["[The actor] [look] at [the noun]."]

[ Consider translating the "lock" verb better if your game features locking. ]
The can't lock without a lock rule response (A) is "ona li ken ala pini awen.". ["[regarding the noun][Those] [don't] seem to be something [we] [can] lock."]
The can't lock what's already locked rule response (A) is "taso ona li pini awen [lon] tenpo ni[ELG].". ["[regarding the noun][They're] locked at the [if story tense is present tense]moment[otherwise]time[end if]."]
The can't lock what's open rule response (A) is "taso [noun li] pini ala.". ["First [we] [would have] to close [the noun]."]
The can't lock without the correct key rule response (A) is "[second noun li] ken ala open e [noun].". ["[regarding the second noun][Those] [don't] seem to fit the lock."]
The standard report locking rule response (A) is "[mi li] pini awen e [noun].". ["[We] [lock] [the noun]."]
The standard report locking rule response (B) is "[actor li] pini awen e [noun].". ["[The actor] [lock] [the noun]."]

The can't unlock without a lock rule response (A) is "[mi li] ken ala open e ona kepeken.". ["[regarding the noun][Those] [don't] seem to be something [we] [can] unlock."]
The can't unlock what's already unlocked rule response (A) is "taso ona li pini awen ala [lon] tenpo ni[ELG].". ["[regarding the noun][They're] unlocked at the [if story tense is present tense]moment[otherwise]time[end if]."]
The can't unlock without the correct key rule response (A) is "[second noun] li ken ala open e [noun].". ["[regarding the second noun][Those] [don't] seem to fit the lock."]
The standard report unlocking rule response (A) is "[We] [unlock] [the noun].". ["[We] [unlock] [the noun]."]
The standard report unlocking rule response (B) is "[The actor] [unlock] [the noun].". ["[The actor] [unlock] [the noun]."]

The can't switch on unless switchable rule response (A) is "[regarding the noun][They] [aren't] something [we] [can] switch.". ["[regarding the noun][They] [aren't] something [we] [can] switch."]
The can't switch on what's already on rule response (A) is "taso [noun li] open [lon] tenpo ni[ELG].". ["[regarding the noun][They're] already on."]
The standard report switching on rule response (A) is "[actor li] open e [noun].". ["[The actor] [switch] [the noun] on."]
The can't switch off unless switchable rule response (A) is "[regarding the noun][They] [aren't] something [we] [can] switch.". ["[regarding the noun][They] [aren't] something [we] [can] switch."]
The can't switch off what's already off rule response (A) is "taso [noun li] pini [lon] tenpo ni[ELG].". ["[regarding the noun][They're] already off."]
The standard report switching off rule response (A) is "[actor li] pini e [noun].". ["[The actor] [switch] [the noun] off."]
The can't open unless openable rule response (A) is "ona li ken ala open.". ["[regarding the noun][They] [aren't] something [we] [can] open."]
The can't open what's locked rule response (A) is "[regarding the noun][They] [seem] to be locked.". ["[regarding the noun][They] [seem] to be locked."]
The can't open what's already open rule response (A) is "[mi li] ken ala open e ona[comma] tan ni: ona li open.". ["[regarding the noun][They're] already open."]
The reveal any newly visible interior rule response (A) is "[mi li] open e [noun]. [lob][mi] ken lukin[indenting 3] ".
The standard report opening rule response (A) is "[mi li] open e [noun].". ["[We] [open] [the noun]."]
The standard report opening rule response (B) is "[actor li] open e [noun].". ["[The actor] [open] [the noun]."]
The standard report opening rule response (C) is "[noun li] open.". ["[The noun] [open]."]
The can't close unless openable rule response (A) is "[mi] ken ala pini e ona.". ["[regarding the noun][They] [aren't] something [we] [can] close."]
The can't close what's already closed rule response (A) is "seme[?] [lob]ona li open ala.". ["[regarding the noun][They're] already closed."]
The standard report closing rule response (A) is "[mi li] pini e [noun].". ["[We] [close] [the noun]."]
The standard report closing rule response (B) is "[actor li] pini e [noun].". ["[The actor] [close] [the noun]."]
The standard report closing rule response (C) is "[noun li] pini.". ["[The noun] [close]."]
The can't wear what's not clothing rule response (A) is "sina ken ala len e ona!". ["[We] [can't wear] [regarding the noun][those]!"]
The can't wear what's not held rule response (A) is "sina jo ala e ona.". ["[We] [aren't] holding [regarding the noun][those]!"]
The can't wear what's already worn rule response (A) is "taso tenpo ni la ona li len e sina.". ["[We]['re] already wearing [regarding the noun][those]!"]
The standard report wearing rule response (A) is "sina kama len e [noun].". ["[We] [put] on [the noun]."]
The standard report wearing rule response (B) is "[actor li] kama len e [noun].". ["[The actor] [put] on [the noun]."]
The can't take off what's not worn rule response (A) is "taso sina len ala e [noun] [lon] tenpo ni[ELG].". ["[We] [aren't] wearing [the noun]."]
The can't exceed carrying capacity when taking off rule response (A) is "[mi li] ken ala len ala e [noun] tan ni: [mi li] jo e ijo mute.". ["[We]['re] carrying too many things already."]
The standard report taking off rule response (A) is "[mi li] len ala e [noun].". ["[We] [take] off [the noun]."]
The standard report taking off rule response (B) is "[actor li] len [noun].". ["[The actor] [take] off [the noun]."]
The can't give what you haven't got rule response (A) is "[mi] jo ala e [noun].". ["[We] [aren't] holding [the noun].".]
The can't give to yourself rule response (A) is "[mi] ken ala pana e [noun] tawa [mi].". ["[We] [can't give] [the noun] to [ourselves].".]
The can't give to a non-person rule response (A) is "[The second noun] [aren't] able to receive things.". ["[The second noun] [aren't] able to receive things."]
The can't give clothes being worn rule response (A) is "[paren]nanpa wan la [mi li] len ala e [the noun][close paren][command clarification break]". ["(first taking [the noun] off)[command clarification break]"]
The block giving rule response (A) is "[second noun] kute ala.". ["[The second noun] [don't] seem interested."]
The can't exceed carrying capacity when giving rule response (A) is "taso [second noun li] ken ala jo e ijo mute.". ["[The second noun] [are] carrying too many things already."]
The standard report giving rule response (A) is "[mi li] pana e [noun] tawa [second noun].". ["[We] [give] [the noun] to [the second noun]."]
The standard report giving rule response (B) is "[actor li] pana e [noun] tawa [mi].". ["[The actor] [give] [the noun] to [us]."]
The standard report giving rule response (C) is "[actor li] pana e [noun] tawa [second noun].". ["[The actor] [give] [the noun] to [the second noun]."]
The can't show what you haven't got rule response (A) is "sina jo ala e [noun].". ["[We] [aren't] holding [the noun]."]
The block showing rule response (A) is "[second noun li] kute ala.". ["[The second noun] [are] unimpressed."]
The block waking rule response (A) is "[mi li] lape ala.". ["That [seem] unnecessary."]
The implicitly remove thrown clothing rule response (A) is "[paren]nanpa wan la [mi li] len ala e [the noun][close paren][command clarification break]". ["(first taking [the noun] off)[command clarification break]"]
The futile to throw things at inanimate objects rule response (A) is "ken ala.". ["Futile.".]
The block throwing at rule response (A) is "ni la [mi li] wawa ala a.". ["[We] [lack] the nerve when it [if story tense is the past tense]came[otherwise]comes[end if] to the crucial moment."]
The block attacking rule response (A) is "utala li pona ala.". ["Violence [aren't] the answer to this one."]
The kissing yourself rule response (A) is "sina wile ala uta olin e sina. nasa a.". ["[We] [don't] get much from that."]
The block kissing rule response (A) is "[noun li] wile ala e uta olin.". ["[The noun] [might not] like that."]
The block answering rule response (A) is "sina kute e toki ala.". ["[There] [are] no reply."]
The telling yourself rule response (A) is "[mi li] toki [tawa] mi[ELG] [lon]tenpo lili[ELG].". ["[We] [talk] to [ourselves] a while."]
The block telling rule response (A) is "toki ala li tan ni.". ["This [provoke] no reaction."]
The block asking rule response (A) is "toki ala li tan ni.". ["[There] [are] no reply."]
The standard report waiting rule response (A) is "tenpo li tawa.". ["Time [pass]."]
The standard report waiting rule response (B) is "[actor li] pali ala.". ["[The actor] [wait]."]
The report touching yourself rule response (A) is "pilin luka la sina nasa ala.". ["[We] [achieve] nothing by this."]
The report touching yourself rule response (B) is "[actor li] luka e [actor].". ["[The actor] [touch] [themselves]."]
The report touching other people rule response (A) is "[The noun] [might not like] that.". ["[The noun] [might not like] that."]
The report touching other people rule response (B) is "[actor li] luka e [mi].". ["[The actor] [touch] [us]."]
The report touching other people rule response (C) is "[actor li] luka e [noun].". ["[The actor] [touch] [the noun]."]
The report touching things rule response (A) is "pilin la ona li nasa ala.". ["[We] [feel] nothing unexpected."]
The report touching things rule response (B) is "[actor li] pilin e [noun].". ["[The actor] [touch] [the noun]."]

The can't wave what's not held rule response (A) is "taso [mi li] jo ala e ona.". ["But [we] [aren't] holding [regarding the noun][those]."]
The report waving things rule response (A) is "[We] [wave] [the noun].". ["[We] [wave] [the noun]."]
The report waving things rule response (B) is "[The actor] [wave] [the noun].". ["[The actor] [wave] [the noun]."]

The can't pull what's fixed in place rule response (A) is "ona li tawa ala.". ["[regarding the noun][They] [are] fixed in place."]
The can't pull scenery rule response (A) is "[mi li] ken ala.". ["[We] [are] unable to."]
The can't pull people rule response (A) is "[The noun] [might not like] that.". ["[The noun] [might not like] that."]
The report pulling rule response (A) is "Nothing obvious [happen].". ["Nothing obvious [happen]."]
The report pulling rule response (B) is "[The actor] [pull] [the noun].". ["[The actor] [pull] [the noun]."]
The can't push what's fixed in place rule response (A) is "ona li tawa ala.". ["[regarding the noun][They] [are] fixed in place."]
The can't push scenery rule response (A) is "[mi li] ken ala.". ["[We] [are] unable to."]
The can't push people rule response (A) is "[The noun] [might not like] that.". ["[The noun] [might not like] that."]
The report pushing rule response (A) is "Nothing obvious [happen].". ["Nothing obvious [happen]."]
The report pushing rule response (B) is "[The actor] [push] [the noun].". ["[The actor] [push] [the noun]."]
The can't turn what's fixed in place rule response (A) is "ona li tawa ala.". ["[regarding the noun][They] [are] fixed in place."]
The can't turn scenery rule response (A) is "[mi li] ken ala.". ["[We] [are] unable to."]
The can't turn people rule response (A) is "[The noun] [might not like] that.". ["[The noun] [might not like] that."]
The report turning rule response (A) is "Nothing obvious [happen].". ["Nothing obvious [happen]."]
The report turning rule response (B) is "[The actor] [turn] [the noun].". ["[The actor] [turn] [the noun]."]
The can't push unpushable things rule response (A) is "[The noun] [cannot] be pushed from place to place.". ["[The noun] [cannot] be pushed from place to place."]
The can't push to non-directions rule response (A) is "[regarding the noun][They] [aren't] a direction.". ["[regarding the noun][They] [aren't] a direction."]
The can't push vertically rule response (A) is "[The noun] [cannot] be pushed up or down.". ["[The noun] [cannot] be pushed up or down."]
The can't push from within rule response (A) is "[The noun] [cannot] be pushed from here.". ["[The noun] [cannot] be pushed from here."]
The block pushing in directions rule response (A) is "[The noun] [cannot] be pushed from place to place.". ["[The noun] [cannot] be pushed from place to place."]
The innuendo about squeezing people rule response (A) is "[The noun] [might not like] that.". ["[The noun] [might not like] that."]
The report squeezing rule response (A) is "[We] [achieve] nothing by this.". ["[We] [achieve] nothing by this."]
The report squeezing rule response (B) is "[The actor] [squeeze] [the noun].". ["[The actor] [squeeze] [the noun]."]
The block saying yes rule response (A) is "seme[?]". ["That was a rhetorical question."]
The block saying no rule response (A) is "seme[?]". ["That was a rhetorical question."]
The block burning rule response (A) is "sina wile ala seli e [noun]. pali ike ni li pona ala.". ["This dangerous act [would achieve] little."]
The block waking up rule response (A) is "[mi li] lape ala.". ["The dreadful truth [are], this [are not] a dream."]
The block thinking rule response (A) is "[mi li] sona wawa.". ["What a good idea."]
The report smelling rule response (A) is "kon [regarding the noun][ona] li nasa ala.". ["[We] [smell] nothing unexpected."]
The report smelling rule response (B) is "[actor li] pilin[~]nena.". ["[The actor] [sniff]."]
The report listening rule response (A) is "[mi li] kute. ala li kalama nasa.". ["[We] [hear] nothing unexpected."]
The report listening rule response (B) is "[actor li] kute.". ["[The actor] [listen]."]
The report tasting rule response (A) is "pilin uta la ona li nasa ala.". ["[We] [taste] nothing unexpected."]
The report tasting rule response (B) is "[actor li] pilin uta e [noun].". ["[The actor] [taste] [the noun]."]
The block cutting rule response (A) is "Cutting [regarding the noun][them] up [would achieve] little.". ["Cutting [regarding the noun][them] up [would achieve] little."]
The report jumping rule response (A) is "[mi li] tawa sewi lili li tawa anpa sin.". ["[We] [jump] on the spot."]
The report jumping rule response (B) is "[actor li] tawa sewi lili li tawa anpa sin.". ["[The actor] [jump] on the spot."]
The block tying rule response (A) is "pali ni li nasa.". ["[We] [would achieve] nothing by this."]
The block drinking rule response (A) is "[mi li] jo ala e telo.". ["[There's] nothing suitable to drink here."]
The block saying sorry rule response (A) is "ale li pona.". ["Oh, don't [if American dialect option is active]apologize[otherwise]apologise[end if]."]
The block swinging rule response (A) is "[There's] nothing sensible to swing here.". ["[There's] nothing sensible to swing here."]
The can't rub another person rule response (A) is "[The noun] [might not like] that.". ["[The noun] [might not like] that."]
The report rubbing rule response (A) is "[mi li] luka e [noun].". ["[We] [rub] [the noun]."]
The report rubbing rule response (B) is "[actor li] luka e [noun].". ["[The actor] [rub] [the noun]."]
The block setting it to rule response (A) is "No, [we] [can't set] [regarding the noun][those] to anything.". ["No, [we] [can't set] [regarding the noun][those] to anything."]
The report waving hands rule response (A) is "[mi li] luka toki.". ["[We] [wave]."]
The report waving hands rule response (B) is "[actor li] luka toki.". ["[The actor] [wave]."]
The block buying rule response (A) is "ala li esun.". ["Nothing [are] on sale."]
The block climbing rule response (A) is "ken ala.". ["Little [are] to be achieved by that."]
The block sleeping rule response (A) is "[mi li] wile ala lape.". ["[We] [aren't] feeling especially drowsy."]

Book - Quotation Marks

To say left double quote: say Unicode 8220.	To say right double quote: say Unicode 8221.
To say left single quote: say Unicode 8216.	To say right single quote: say Unicode 8217.


Toki Pona ends here.



---- DOCUMENTATION ---- 






Chapter: Basic Prose


Section: Text with numbers

This extension implements the two number systems described in [html<i>html]lipu pu[html</i>html], available with the "[(number) in vague toki pona]" and "[(number) in specific toki pona]" phrases. For example:

[html
<ul>
<li>"[1 in vague toki pona]" becomes "wan"</li>
<li>"[2 in vague toki pona]" becomes "tu"</li>
<li>"[3 in vague toki pona]" becomes "mute"</li>
<li>"[4 in vague toki pona]" becomes "mute"</li>
<li>"[47 in vague toki pona]" becomes "mute"</li>
<li>"[413 in vague toki pona]" becomes "mute"</li>
<li>"[1 in specific toki pona]" becomes "wan"</li>
<li>"[2 in specific toki pona]" becomes "tu"</li>
<li>"[3 in specific toki pona]" becomes "tu wan"</li>
<li>"[4 in specific toki pona]" becomes "tu tu"</li>
<li>"[47 in specific toki pona]" becomes "mute mute luka tu"</li>
<li>"[413 in specific toki pona]" becomes "ale ale ale ale luka luka tu wan"</li>
</ul>
html]

[omit]
	"[1 in vague toki pona]" becomes "wan"
	"[2 in vague toki pona]" becomes "tu"
	"[3 in vague toki pona]" becomes "mute"
	"[4 in vague toki pona]" becomes "mute"
	"[47 in vague toki pona]" becomes "mute"
	"[413 in vague toki pona]" becomes "mute"
	
	"[1 in specific toki pona]" becomes "wan"
	"[2 in specific toki pona]" becomes "tu"
	"[3 in specific toki pona]" becomes "tu wan"
	"[4 in specific toki pona]" becomes "tu tu"
	"[47 in specific toki pona]" becomes "mute mute luka tu"
	"[413 in specific toki pona]" becomes "ale ale ale ale luka luka tu wan"
[/omit]


Section: Text with lists

[omit]To say multiple nouns as subject, we can use the phrase "[(list of objects) li]". This joins the objects with «en» if necessary, and adds «li» at the end. If we really don't want that «li», we can use "[(list of objects) as a subject]" instead.[/omit]

[omit]The "[e {list of objects}]" phrase says a list of things as direct objects; that is to say, prepended by "e ". Commas are included for three or more things. For example:[/omit]

[html
<p>In lieu of English list-writing phrases like "[(list of objects) with definite articles]", we have:
<div class="definition">
<p class="prototype"><b>say "[</b>(list of objects)<b> as subject]"</b></p>
<p>Say a list of objects, joined by «en».</p>
</div>
<div class="definition">
<p class="prototype"><b>say "[</b>(list of objects)<b> li]"</b></p>
<p>Say a list of objects, joined by «en», with «li» at the end. (The «li» is omitted if the only object in the list is the player and the story viewpoint is first or second person, since «li» is not needed after a subject of just «mi» or «sina».)</p>
</div>
<div class="definition">
<p class="prototype"><b>say "[e </b>(list of objects)<b>]"</b></p>
<p>Say a list of things as direct objects; that is to say, with each one prepended by «e». In alphabetic mode, commas are included for three or more things. In logographic mode, all entries after the second are printed on new lines and indented according to the <i>current ideographic indentation level</i>.</p>
</div>
<p>For example:</p>
html]

	The initial appearance of the desk is "supa li suli. [lob]supa li jo [indenting 3][e list of for sale things on the desk].".

might say, depending on what is on the desk:

	supa li suli. supa li jo e kili, e pan, e poki telo.
	supa li suli. supa li jo e kili e pan.
	supa li suli. supa li jo e kili.
	supa li suli. supa li jo e ala.

Comma usage in toki pona is a matter of style. If they are not your style, you can use the following options to omit them from the alphabetic orthography.

	Use no commas for subjects.
	Use no commas for direct objects.

[omit]In logographic mode, commas are never used, regardless of the above options. Instead, the list is printed on multiple lines, and indented, in the style of lipu su.[/omit]
[html
<p>In logographic mode, commas are never used, regardless of the above options. Instead, the list is printed on multiple lines, and indented, like this:</p>
<div class="logographic">
<p>supa li suli. 
<p>supa li jo e kili
<p>　　　e pan
<p>　　　e poki‍telo.
</div>
html]


Chapter: Adaptive Text and Responses

Section: Talking about things

The phrase "[(noun) li]" says the noun and then " li", unless the noun is "mi" or "sina", in which case it just says the noun. (More specifically, it drops the «li» if the noun is the player and the viewpoint is first or second person.) It's sort of like [html<a href='https://ganelson.github.io/inform-website/book/WI_14_2.html'>html]saying "[The noun] [are]" in English[html</a>html].

"[ona]" is an equivalent to [html<a href='https://ganelson.github.io/inform-website/book/WI_14_5.html'>html]Inform's "[them]" phrase[html</a>html], but simpler. It always prints "ona", unless the regarded noun is the player, in which case it's equivalent to "[mi]", since it's a little strange to refer to myself or yourself as "ona". This phrase is handy for general responses like this:

	Instead of smelling something, say "kon [regarding the noun][ona] li nasa ala.".

Yielding:

	>nena e kiwen
	kon ona li nasa ala.
	
	>nena e mi
	kon sina li nasa ala.

Section: Adapting text about the player

The "[mi]" phrase is equivalent to [html<a href='https://ganelson.github.io/inform-website/book/WI_14_4.html'>Inform's "[we]" phrase</a>html][omit]Inform's "[we]" phrase (described in §14.4. Adapting text about the player)[/omit]. It prints either "mi", "sina", or "ona", depending on the story viewpoint. Unless you plan to switch the story viewpoint, you probably won't need this phrase.


Chapter: Other toki pona Considerations

Section: Translated Responses

This extension provides translations for default rule responses. You can view these in the extension source, or with the RESPONSES ALL command.[html See <a href="https://ganelson.github.io/inform-website/book/WI_14_10.html">§14.10. Responses</a> for how to override responses.html]

The responses make heavy use of the "[mi li]" phrase, which is shorthand for "[the player li]", so it evaluates to "mi" or "sina" or "ona li", depending on the story viewpoint.


Section: Consider Implementing These Actions

The following verbs are not implemented by this extension, but are common enough that you should consider implementing them: [omit]kalama; mu; olin; toki; unpa; uta. ("uta olin e [thing]" is understood as kissing, and "uta pilin e [thing]" is understood as tasting, but just "uta e [thing]" could mean kissing or tasting or biting or something else, so it is left to the story author.)[/omit]

[html
<ul>
<li>kalama
<li>mu
<li>olin
<li>toki
<li>unpa
<li>uta. "uta olin e [thing]" is understood as kissing, and "uta pilin e [thing]" is understood as tasting, but just "uta e [thing]" could mean kissing or tasting or biting or something else, so its implementation is left to the story author.
</ul>
html]


Chapter: Sitelen Pona

Section: The Story's Orthography

This extension implements fancy typographic features for sitelen pona ­— or rather, it defines a number of phrases that leverage the features of sitelen pona fonts, [omit]nasin nanpa[/omit][html<a href="https://github.com/ETBCOR/nasin-nanpa">nasin nanpa</a>html] in particular. This extension defines a variable called `the current orthography`, which can be `alphabetic` or `logographic`, and in the latter case, the game assumes that its interpreter is using a compatible sitelen pona font.

This extension's Toggling Orthographical Features chapter defines commands that the player can use to customize the orthography; to switch between sitelen pona and sitelen Lasina, to toggle long glyphs, or to toggle compound glyphs. If you do not wish to include these options (or perhaps you wish not to support sitelen pona at all, in which case you can ignore the rest of this chapter) you can unlist them like so:

	*: Chapter - Where We're Going We Don't Need Logography (replacing Toggling Orthographical Features in Toki Pona by Vivian Rose)


Section: Wait, how do we control which font is used?

An Inform 7 story has no way of signaling a font preference to the interpreter. This extension assumes that some external mechanism ensures that the nasin nanpa font is used when `the current orthography is logographic`, and a more traditional font is used otherwise. This can be achieved on a web interpreter like Bisquixe or Vorple using custom CSS. On other interpreters, the player will probably have to manually set the font to nasin nanpa, and even then, the interpreter may not be able to display it properly.



Section: Cartouches

Use "[cartouche]" and "[end cartouche]" to write cartouches. One example that works in either orthography:

	The printed name of Counterfeit Monkey is "lipu [if the current orthography is alphabetic]Kantape Manki[otherwise][cartouche]kama ante nimi toki anu pilin e[ideographic space]mani ale nimi kama ilo[end cartouche]".

Or, to be concise:

	The printed name of Counterfeit Monkey is "lipu [name]kama ante nimi toki anu pilin e[ideographic space]mani ale nimi kama ilo[end name]".

[html
<div class="definition" id="def-name">
<p class="prototype"><b>say "[name]"</b> <i class="glulx-only">(Glulx only)</i></p>
<p>This text substitution denotes that the text following should be interpreted as a sequence of name glyphs. So, in logographic mode, it prints the beginning of a cartouche, identical to the "[cartouche]" phrase.
<p>In alphabetic mode, it actually changes how the text following is displayed; instead of the whole text, only the first letter of each word is produced. The text is also printed in title case. So, "lipu [name]kama ante nimi toki anu pilin e[ideographic space]mani ale nimi kama ilo[end name]" would become "lipu Kantape Manki".
</div>
<div class="definition" id="def-end-name">
<p class="prototype"><b>say "[end name]"</b> <i class="glulx-only">(Glulx only)</i></p>
<p>This text substitution denotes the end of a sequence of name glyphs. So, in logographic mode, it prints the end of a cartouche, identical to the "[end cartouche]" phrase. In alphabetic mode, it just tells Inform when to stop acronymizing.
</div>
html]

The "[name]…[end name]" phrases do not support the more concise, experimental name-writing systems that use [html<a href="https://sona.pona.la/wiki/User:Jan_Sonja/nasin_sitelen_kalama_pi_linja_lili">tally marks</a> or <a href="https://sona.pona.la/wiki/nasin_sitelen_kalama">dots</a>html][omit]tally marks or dots[/omit]. If you want to use those, write out something like "jan [if the current orthography is alphabetic]Sonja[else][cartouche]sona,,, jan,,[end cartouche]". [omit](Also, "[name]…[end name]" is Glulx-only.)[/omit]


Section: Compound Glyphs

The "[~]" phrase, terse to spare the proser's hands, says a space if the current orthography is alphabetic, or a compound glyph joiner character otherwise. For example, "toki[~]pona" becomes "toki pona" in alphabetic mode, and [html becomes <span class="logographic">toki‍pona</span>html][omit]should resemble the toki pona logo[/omit] in logographic mode.

There is also a "compound glyphs enabled" truth variable that, when false, makes this phrase evaluate to a simple space regardless of orthography.


Section: Long Glyphs

"[long glyph]" ("[LG]" for short) and "[end long glyph]" ("[ELG]" for short) mark long glyphs. Some elongatable glyphs have shorthand phrases defined; for example, "mi pali [kepeken] ilo nanpa[ELG]." is equivalent to "mi pali kepeken[LG] ilo nanpa[ELG]".

Beware of forgetting an "[end long glyph]", like so:

	Instead of praying, say "sina toki [tawa] sewi. taso sewi li kute ala.". [«tawa» erroneously extends all the way through the second sentence.]

To make these errors more obvious, the "scold unended long glyphs rule" will print a warning message when a long glyph is said without its end marker. TODO not true?

There is also a "long glyphs enabled" truth variable that, when false, causes long glyph markers to be ignored even in logographic mode.


Section: Indentation 

TODO replace examples with those from lipu su?

[html<i>html]lipu su[html</i>html] organizes long sentences with a nifty indentation technique, placing each repetition of «li» or «e» on its own line under the first. This extension defines the following phrases for emulating that style. The most basic of these is "[ideographic space]", which inserts an ideographic space, but we seldom need this on its own. Instead, we can use these phrases[omit], none of which do anything in alphabetic mode[/omit]:

[omit]
· "[indenting {number}]" says nothing; it only sets the current ideographic indentation level to the specified number.
· "[indent]" prints a number of ideographic spaces equal to the current ideographic indentation level, if the current orthography is logographic.
· "[lob]", short for "[logographic-only break]", prints a line break, when the current orthography is logographic.
· "[ilob]", short for "[indented logographic-only break]", prints a line break *and an [indent]* when the current orthography is logographic.
[/omit]
[html
<div class="definition">
<p class="prototype"><b>say "[indenting </b>(number)<b>]"</b></p>
<p>This text substitution produces no text. It's used only for a side-effect: it sets the <i>current ideographic indentation level</i> to the number specified.</p>
</div>
<div class="definition">
<p class="prototype"><b>say "[indent]"</b></p>
<p>Prints a number of ideographic spaces equal to the <i>current ideographic indentation level</i>, if the current orthography is logographic; otherwise, does nothing</p>
</div>
<div class="definition">
<p class="prototype"><b>say "[lob]"</b></p>
<p>Short for "[logographic-only break]". Prints a line break if the current orthography is logographic; otherwise, does nothing. This phrase is useful because sitelen pona looks nice with more line breaks.</p>
</div>
<div class="definition">
<p class="prototype"><b>say "[ilob]"</b></p>
<p>Short for "[indented logographic-only break]". Same as "[lob][indent]": prints a line break and an indent if the current orthography is logographic; otherwise does nothing.</p>
</div>

html]

With these, we can say something like "sina wile [indenting 2]e kili [ilob]e pan [ilob]e telo." This puts each «e {noun}» on its own line, forming an elegant column of «e»s. [html
<div class="logographic">
<p>sina wile e kili
<p>　　e pan
<p>　　e telo.
</div>
html]In alphabetic mode, it simply says "sina wile e kili e pan e telo.".

[omit]But wait, the alphabetic case might be more readable with commas. Instead of "[ilob]", we can use "[cilob]", standing for "comma or indented logographic-only break]". [/omit][html
<p>But wait, that latter case might look better with commas. Instead of "[ilob]", we can use:</p>
<div class="definition">
<p class="prototype"><b>say "[cilob]"</b></p>
<p>Prints a comma if the orthography is alphabetic. Otherwise, prints a line break and an indent dependent on the <i>current ideographic indentation level</i>.</p>
</div>
html]"sina wile [indenting 2]e kili [cilob]e pan [cilob]e telo." is identical to the previous example for the logographic orthography, but in alphabetic mode it says "sina wile e kili, e pan, e telo.". This phrase is most useful for long, complex sentences that need broken up for readability regardless of the writing system.

Section: Advanced Indentation

[html <img src='su_sample_sample.png' alt='Sample page from lipu su' class='su'> html]

For more complex cases, we might want a way to say some text while also setting the current ideographic indentation level to the length of that text. For example, consider the page of [html<i>html]lipu su[html</i>html] where Dorothy meets the munchkins.[omit] At time of writing, that page is hosted as a promotional example here: ( https://tokipona.org/su_sample.png ).[/omit] The only indented sentence on the page reads «ma ni la jan Towasi li kama toki tawa jan lili mute M[ansukin] li toki tawa meli wawa pi ma lete». The second «li» is printed on a second line under the first «li». To include this sentence in our prose, indented the same, we [html<i>html]could[html</i>html] use the phrases introduced in the previous section, like so:

	To meet the Ozians:
		say "ma ni la jan [name]tomo olin wile alasa suwi ijo[end name][indenting 11] li kama toki tawa jan lili mute [if the current orthography is alphabetic]Mansukin[else][cartouche]mu[end cartouche][end if][ilob] li toki tawa meli wawa pi ma lete".

This requires manually counting the number of spaces to indent; laborious, but simple enough. But suppose that, in our hypothetical interactive adaptation of [html<i>html]lipu su[html</i>html], Dorothy's name might change depending on the player's actions, or may be yet-unrevealed. This would complicate the above example, since we would have to replace "11" with a calculated value based on the length of Dorothy's current moniker. Instead, we can use the "dentally say" phrase[omit], which says some text while also setting the current ideographic indentation level to the ideographic length of that text[/omit].

[html
<div class="definition" id="dentally-say">
<p class="prototype"><b>dentally say</b> (text)</p>
<p>Say the given text, and set the <i>current ideographic indentation level</i> to the ideographic length of the text.</p>
</div>
html]

For example:

	The Kansan is a person. The Kansan can be anonymous. The Kansan can be transgender. The printed name of the Kansan is "[if anonymous]jan lili[otherwise if transgender]jan [name]tomo olin wile ijo jan alasa nasin[end name][otherwise]jan [name]tomo olin wile alasa suwi ijo[end name]".
	To say short for Munchkin: [Just in case we want to use this abbreviation often, as lipu su does.]
		say "[if the current orthography is alphabetic]Mansukin[else][cartouche]mu[end cartouche]".
	To meet the Ozians:
		dentally say "ma ni la [Kansan] ";
		say "li kama toki tawa jan lili mute [short for Munchkin] [ilob]li toki tawa meli wawa pi ma lete".

[html

Might give us, depending on the status of the Kansan:

<div class="logographic">
<p>ma ni la jan lili li kama toki tawa jan lili mute [mu] 
<p>　　　　　li toki tawa meli wawa pi ma lete
<p>
<p>ma ni la jan [tomo olin wile alasa suwi ijo] li kama toki tawa jan lili mute [mu] 
<p>　　　　　　　　　　　li toki tawa meli wawa pi ma lete
<p>
<p>ma ni la jan [tomo olin wile ijo jan alasa nasin] li kama toki tawa jan lili mute [mu] 
<p>　　　　　　　　　　　　li toki tawa meli wawa pi ma lete
</div>

For a non-su example, suppose we want to print several lines of dialogue from a shopkeeper, but the shopkeeper's printed name varies depending on whether she has introduced herself. We might try something like this:

	The printed name of the shopkeeper is "[if introduced]jan [name]lili ijo[end name][else]jan esun".
	Instead of showing the orchid mantis to the shopkeeper:
		say "sina pana e [orchid mantis] [tawa] [shopkeeper][ELG].";
		dentally say "[shopkeeper] li toki: [te]";
		say "pipi ni li suwi mute a! [lob]taso mi esun ala e pipi.[to]".
html]






Section: Quotation Marks, or 「te & to」

[html<i>html]lipu su[html</i>html]'s corner brackets are arguably [html<a href="https://sona.pona.la/wiki/te_and_to">particles</a>html][omit]particles[/omit], called te and to. They can be invoked thus:

	say "sina toki: [te]mi wile moku.[to]".

[omit]In logographic mode, these should show up as corner brackets.[/omit]

[html
<p>In logographic mode, these should show up as corner brackets: <span class="logographic">sina toki: te|mi wile moku.|to</span></p>
html]

[omit]In alphabetic mode, these just render as double quotes, but not quite normal double quotes. They become left and right double quotes, specifically. The difference is barely visible in most fonts, but if we're going through the trouble of marking all our quotes as left and right, we may as well take advantage of it.[/omit]
[html
<p>In alphabetic mode, these just render as double quotes, but not [html<i>html]quite[html</i>html] normal double quotes. Can you see the difference between "" and “”? The latter pair is a <i>Left Double Quotation Mark</i> and <i>Right Double Quotation Mark</i>. The difference is barely visible in most fonts, but if we're going through the trouble of marking all our quotes as left and right, we may as well take advantage of it.</p>
html]

If you need a quote within a quote, try "[meta te]" and "[meta to]".


Section: The Banner

You should provide your sitelen pona name as the "logographic story author" text, like so:

	The story author is "jan Wiwijen". The logographic story author is "jan [cartouche]wan ijo wan ijo jaki en nanpa[end cartouche]".

The banner uses this in logographic mode. If your story title contains a cartouche (or needs to use some other logographic feature like a combined glyph) then provide a "logographic story title" as well:

	"jan Osu pi wawa nasa" by jan Sonja

	The logographic story author is "jan [cartouche]sona olin nasa jasima alasa[end cartouche]".
	The logographic story title is "jan [cartouche]o suli uta[end cartouche] pi wawa nasa".


Section: Supported fonts

The sitelen pona font doesn't have to be nasin nanpa; it can be some other sitelen pona font with similar ligatures. If it uses different ligatures, you will have to override this extension's "Configuration Specific to the nasin nanpa Font" chapter, like so:

	*: Chapter - Some Other Font Support (in place of Configuration Specific to the nasin nanpa Font in Toki Pona by Vivian Rose):
		[Lots of logic here]

If you do go through the trouble of implementing support for your favorite sitelen pona font, consider sharing your code; it could be incorporated in another release of this extension.








Example: * The Nominarium - Showcasing various ways to name things.

For our story to work in both alphabetic and logographic orthographies, we should choose TODO

	The story author is "jan Wiwijen". The logographic story author is "jan [cartouche]wan ijo wan ijo jaki en nanpa[end cartouche]".
	








