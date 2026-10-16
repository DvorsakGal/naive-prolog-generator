% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 13b307c60a18c053cc4fbd56dabe3c3e77313ef0452a13039939211d450c311c
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
:- pred must_develop_guidelines/2, gloss('Commission shall develop guidelines on specified subject matter'), source('celex:32024R1689/oj#art_96').
:- pred must_update_guidelines/2, gloss('Commission shall update previously adopted guidelines when necessary'), source('celex:32024R1689/oj#art_96').
:- pred guideline_subject/1, gloss('subject matter for which guidelines are to be developed'), source('celex:32024R1689/oj#art_96').
:- pred particular_attention_to_needs/2, gloss('particular attention to be paid to specified needs when issuing guidelines'), source('celex:32024R1689/oj#art_96').
:- pred take_due_account/2, gloss('guidelines shall take due account of specified matters'), source('celex:32024R1689/oj#art_96').

must_develop_guidelines(commission, implementation_of_regulation) :-
    union_institution(commission).

must_develop_guidelines(commission, application_of_requirements_and_obligations) :-
    union_institution(commission).

must_develop_guidelines(commission, prohibited_practices) :-
    union_institution(commission).

must_develop_guidelines(commission, practical_implementation_substantial_modification) :-
    union_institution(commission).

must_develop_guidelines(commission, practical_implementation_transparency_obligations) :-
    union_institution(commission).

must_develop_guidelines(commission, relationship_with_union_harmonisation_legislation) :-
    union_institution(commission).

must_develop_guidelines(commission, application_of_ai_system_definition) :-
    union_institution(commission).

particular_attention_to_needs(commission, sme_or_start_up(S)) :-
    sme_or_start_up(S),
    must_develop_guidelines(commission, _).

particular_attention_to_needs(commission, local_public_authority) :-
    must_develop_guidelines(commission, _).

particular_attention_to_needs(commission, affected_sector) :-
    must_develop_guidelines(commission, _).

take_due_account(guidelines, state_of_the_art) :-
    must_develop_guidelines(commission, _).

take_due_account(guidelines, harmonised_standard(S)) :-
    harmonised_standard(S),
    must_develop_guidelines(commission, _).

take_due_account(guidelines, common_specification(C)) :-
    common_specification(C),
    must_develop_guidelines(commission, _).

take_due_account(guidelines, technical_specification_union_harmonisation_law(T)) :-
    union_harmonisation_legislation(T),
    must_develop_guidelines(commission, _).

must_update_guidelines(commission, previously_adopted_guidelines) :-
    union_institution(commission),
    (request(member_states, update_guidelines); request(ai_office, update_guidelines); commission_initiative(update_guidelines)).

provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(particular_attention_to_needs/2, 'celex:32024R1689/oj#art_96').
provenance(take_due_account/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').

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
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').
