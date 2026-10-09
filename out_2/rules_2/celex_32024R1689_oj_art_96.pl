% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : e61f6fa84aa35fd466663f6d1764c937c1dd9dcee3bb7a890b0e1b034217ef5e
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
% New predicates introduced for this provision
:- pred must_develop/2, gloss('Commission shall develop guidelines'), source('celex:32024R1689/oj#art_96').
:- pred must_consider/2, gloss('Commission shall consider specified matters'), source('celex:32024R1689/oj#art_96').
:- pred must_update/2, gloss('Commission shall update guidelines'), source('celex:32024R1689/oj#art_96').
:- pred member_state_request_applies/1, gloss('Request by a Member State'), source('celex:32024R1689/oj#art_96').
:- pred ai_office_request_applies/1, gloss('Request by the AI Office'), source('celex:32024R1689/oj#art_96').
:- pred own_initiative_applies/0, gloss('Commission acts on its own initiative'), source('celex:32024R1689/oj#art_96').
:- pred necessary_applies/0, gloss('Action deemed necessary'), source('celex:32024R1689/oj#art_96').

% Obligations
must_develop(commission, guidelines(implementation_of(regulation))) :-
    true.

must_consider(commission, needs(sme)).
must_consider(commission, needs(local_public_authority)).
must_consider(commission, needs(sector_likely_affected)).
must_consider(commission, state_of_the_art).
must_consider(commission, harmonised_standard).
must_consider(commission, common_specification).

must_update(commission, guidelines) :-
    ( member_state_request_applies(_)
    ; ai_office_request_applies(_)
    ; own_initiative_applies
    ),
    necessary_applies.

% Supporting conditions
member_state_request_applies(MS) :-
    member_state(MS).

ai_office_request_applies(AO) :-
    ai_office(AO).

own_initiative_applies.

necessary_applies.

% Provenance
provenance(must_develop/2, 'celex:32024R1689/oj#art_96').
provenance(must_consider/2, 'celex:32024R1689/oj#art_96').
provenance(must_update/2, 'celex:32024R1689/oj#art_96').
provenance(member_state_request_applies/1, 'celex:32024R1689/oj#art_96').
provenance(ai_office_request_applies/1, 'celex:32024R1689/oj#art_96').
provenance(own_initiative_applies/0, 'celex:32024R1689/oj#art_96').
provenance(necessary_applies/0, 'celex:32024R1689/oj#art_96').

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
