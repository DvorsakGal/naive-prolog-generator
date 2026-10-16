% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 97ea6b3ea678710b94b5e4da3fb15a0a6b1bd5ce50457a6bd30d26a74ba889a7
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
:- pred must_develop/2, gloss('actor must develop a specified item or instrument'), source('celex:32024R1689/oj#art_96').
:- pred must_update/2, gloss('actor must update a specified item or instrument'), source('celex:32024R1689/oj#art_96').
:- pred requested_update/2, gloss('an entity requested an update of guidelines'), source('celex:32024R1689/oj#art_96').
:- pred deemed_necessary/1, gloss('an action or measure is deemed necessary'), source('celex:32024R1689/oj#art_96').
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_96').

% Article 96(1): The Commission shall develop guidelines on the practical implementation of this Regulation
must_develop(C, guidelines(implementation_of_regulation)) :-
    commission(C).

% Article 96(2): At the request of the Member States or the AI Office, or on its own initiative,
% the Commission shall update guidelines previously adopted when deemed necessary.
must_update(C, guidelines(previously_adopted)) :-
    commission(C),
    deemed_necessary(update_guidelines),
    member_state(M),
    requested_update(M, guidelines(previously_adopted)).

must_update(C, guidelines(previously_adopted)) :-
    commission(C),
    deemed_necessary(update_guidelines),
    ai_office(Office),
    requested_update(Office, guidelines(previously_adopted)).

must_update(C, guidelines(previously_adopted)) :-
    commission(C),
    deemed_necessary(update_guidelines).

% Provenance
provenance(must_develop/2, 'celex:32024R1689/oj#art_96').
provenance(must_update/2, 'celex:32024R1689/oj#art_96').

% References
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_10').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_3/unp_1/pnt_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').
