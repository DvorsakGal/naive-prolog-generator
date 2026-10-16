% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 51273308592888319383fbb146df2632ecd3eabc39ac2d10aafd68b3e812a816
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
:- pred must_develop_guidelines/2, gloss('Commission obligation to develop guidelines on practical implementation'), source('celex:32024R1689/oj#art_96').
:- pred must_update_guidelines/2, gloss('Commission obligation to update previously adopted guidelines when deemed necessary'), source('celex:32024R1689/oj#art_96').
:- pred guideline_topic/2, gloss('specific topic that Commission guidelines must address'), source('celex:32024R1689/oj#art_96').
:- pred must_consider_sme_needs/1, gloss('Commission must pay particular attention to SME needs when issuing guidelines'), source('celex:32024R1689/oj#art_96').
:- pred must_account_for_state_of_art/1, gloss('guidelines must take due account of generally acknowledged state of the art on AI'), source('celex:32024R1689/oj#art_96').
:- pred must_account_for_standards_and_specifications/1, gloss('guidelines must take due account of relevant harmonised standards and common specifications'), source('celex:32024R1689/oj#art_96').

must_develop_guidelines(commission, guidelines(practical_implementation)).

guideline_topic(guidelines(practical_implementation), application_of_requirements(arts_8_to_15_and_25)).
guideline_topic(guidelines(practical_implementation), prohibited_practices(art_5)).
guideline_topic(guidelines(practical_implementation), substantial_modification).
guideline_topic(guidelines(practical_implementation), transparency_obligations(art_50)).
guideline_topic(guidelines(practical_implementation), relationship_with_union_harmonisation_legislation(annex_i)).
guideline_topic(guidelines(practical_implementation), application_of_ai_system_definition(art_3)).

must_consider_sme_needs(guidelines(practical_implementation)).

must_account_for_state_of_art(guidelines(practical_implementation)).

must_account_for_standards_and_specifications(guidelines(practical_implementation)).

must_update_guidelines(commission, guidelines(practical_implementation)) :-
    request_from_member_states.
must_update_guidelines(commission, guidelines(practical_implementation)) :-
    request_from_ai_office.
must_update_guidelines(commission, guidelines(practical_implementation)) :-
    own_initiative(commission).

provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(guideline_topic/2, 'celex:32024R1689/oj#art_96').
provenance(must_consider_sme_needs/1, 'celex:32024R1689/oj#art_96').
provenance(must_account_for_state_of_art/1, 'celex:32024R1689/oj#art_96').
provenance(must_account_for_standards_and_specifications/1, 'celex:32024R1689/oj#art_96').

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
