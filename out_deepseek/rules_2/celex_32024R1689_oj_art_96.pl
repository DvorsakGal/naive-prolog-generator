% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 52bcd6844967eb30f672add9449ef09bc6d80a17ca4b2293a74121e5e6884d00
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
:- pred must_develop_guidelines/2, gloss('Commission must develop guidelines on practical implementation'), source('celex:32024R1689/oj#art_96').
:- pred must_update_guidelines/1, gloss('Commission must update previously adopted guidelines'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_cover_requirements_and_obligations/1, gloss('guidelines cover application of requirements and obligations in Articles 8-15 and 25'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_cover_prohibited_practices/1, gloss('guidelines cover prohibited practices in Article 5'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_cover_substantial_modification/1, gloss('guidelines cover practical implementation of substantial modification provisions'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_cover_transparency_obligations/1, gloss('guidelines cover practical implementation of transparency obligations in Article 50'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_cover_relationship_with_union_law/1, gloss('guidelines cover relationship with Union harmonisation legislation and other relevant Union law'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_cover_definition_of_ai_system/1, gloss('guidelines cover application of the definition of an AI system in Article 3(1)'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_pay_attention_to_smes/1, gloss('guidelines pay particular attention to needs of SMEs, start-ups, local public authorities and most affected sectors'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_take_account_of_state_of_art/1, gloss('guidelines take due account of generally acknowledged state of the art on AI, harmonised standards and common specifications'), source('celex:32024R1689/oj#art_96').

must_develop_guidelines(Commission, guidelines(G)) :-
    guidelines_cover_requirements_and_obligations(G),
    guidelines_cover_prohibited_practices(G),
    guidelines_cover_substantial_modification(G),
    guidelines_cover_transparency_obligations(G),
    guidelines_cover_relationship_with_union_law(G),
    guidelines_cover_definition_of_ai_system(G),
    guidelines_pay_attention_to_smes(G),
    guidelines_take_account_of_state_of_art(G).

must_update_guidelines(Commission) :-
    (   request_from_member_states
    ;   request_from_ai_office
    ;   own_initiative
    ),
    deemed_necessary(update).

provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_requirements_and_obligations/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_prohibited_practices/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_substantial_modification/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_transparency_obligations/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_relationship_with_union_law/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_definition_of_ai_system/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_pay_attention_to_smes/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_take_account_of_state_of_art/1, 'celex:32024R1689/oj#art_96').

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
