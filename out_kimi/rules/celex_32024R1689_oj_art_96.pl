% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4c173d98e5e48aea7b42cb8786222226003acf95a0d1e657725c606adb1cf9ec
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
:- pred must_develop_guidelines/2, gloss('Commission shall develop guidelines on practical implementation'), source('celex:32024R1689/oj#art_96').
:- pred must_update_guidelines/2, gloss('Commission shall update previously adopted guidelines'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_subject/2, gloss('subject matter covered by Commission guidelines'), source('celex:32024R1689/oj#art_96').
:- pred particular_attention_needed/2, gloss('group whose needs require particular attention in guidelines'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_account_for/2, gloss('factor that guidelines shall take due account of'), source('celex:32024R1689/oj#art_96').
:- pred update_triggered/1, gloss('condition triggering update of guidelines'), source('celex:32024R1689/oj#art_96').

must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, requirements_and_obligations_arts_8_to_15_and_25).

must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, prohibited_practices_art_5).

must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, substantial_modification).

must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, transparency_obligations_art_50).

must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, relationship_with_harmonisation_legislation_annex_1_and_other_union_law).

must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_subject(implementation_of_regulation, definition_of_ai_system_art_3).

must_develop_guidelines(commission, implementation_of_regulation) :-
    particular_attention_needed(implementation_of_regulation, smes_including_start_ups).

must_develop_guidelines(commission, implementation_of_regulation) :-
    particular_attention_needed(implementation_of_regulation, local_public_authorities).

must_develop_guidelines(commission, implementation_of_regulation) :-
    particular_attention_needed(implementation_of_regulation, sectors_most_likely_affected).

must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_account_for(implementation_of_regulation, generally_acknowledged_state_of_the_art_on_ai).

must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_account_for(implementation_of_regulation, relevant_harmonised_standards_and_common_specifications_arts_40_41).

must_develop_guidelines(commission, implementation_of_regulation) :-
    guidelines_account_for(implementation_of_regulation, harmonised_standards_or_technical_specifications_union_harmonisation_law).

update_triggered(request_of_member_states).

update_triggered(request_of_ai_office).

update_triggered(commission_own_initiative).

must_update_guidelines(commission, previously_adopted_guidelines) :-
    update_triggered(_Trigger),
    deemed_necessary(_).

provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_subject/2, 'celex:32024R1689/oj#art_96').
provenance(particular_attention_needed/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_account_for/2, 'celex:32024R1689/oj#art_96').
provenance(update_triggered/1, 'celex:32024R1689/oj#art_96').

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
