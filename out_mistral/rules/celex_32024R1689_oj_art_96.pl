% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7fd40157e53a6d3aafaef7cc18a5a736b8ec2821e6324f92f790f9f9f8b2bc98
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
:- pred must_develop_guidelines/2, gloss('who is obliged, what guidelines about'), source('celex:32024R1689/oj#art_96').
:- pred must_update_guidelines/2, gloss('who is obliged, what guidelines to update'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_cover/2, gloss('guidelines, topic they cover'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_attention_to/2, gloss('guidelines, party whose needs are considered'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_account_for/2, gloss('guidelines, thing taken into account'), source('celex:32024R1689/oj#art_96').
:- pred smes/1, gloss('small and medium-sized enterprises'), source('celex:32024R1689/oj#art_96').
:- pred start_ups/1, gloss('start-up enterprises'), source('celex:32024R1689/oj#art_96').
:- pred local_public_authorities/1, gloss('local public authorities'), source('celex:32024R1689/oj#art_96').
:- pred member_states/1, gloss('Member States of the Union'), source('celex:32024R1689/oj#art_96').

must_develop_guidelines(commission, practical_implementation(regulation)).
must_develop_guidelines(commission, application_requirements_obligations).

guidelines_cover(practical_implementation(regulation), application_requirements_obligations).
guidelines_cover(practical_implementation(regulation), prohibited_practices).
guidelines_cover(practical_implementation(regulation), substantial_modification).
guidelines_cover(practical_implementation(regulation), transparency_obligations).
guidelines_cover(practical_implementation(regulation), relationship_with_union_harmonisation_legislation).
guidelines_cover(practical_implementation(regulation), definition_of_ai_system).

guidelines_attention_to(practical_implementation(regulation), smes).
guidelines_attention_to(practical_implementation(regulation), start_ups).
guidelines_attention_to(practical_implementation(regulation), local_public_authorities).
guidelines_attention_to(practical_implementation(regulation), most_affected_sectors).

guidelines_account_for(practical_implementation(regulation), generally_acknowledged_state_of_art_on_ai).
guidelines_account_for(practical_implementation(regulation), harmonised_standards).
guidelines_account_for(practical_implementation(regulation), common_specifications).
guidelines_account_for(practical_implementation(regulation), technical_specifications_pursuant_to_union_harmonisation_law).

must_update_guidelines(commission, previously_adopted_guidelines) :-
    member_states(MemberStates),
    request_update(MemberStates, commission).
must_update_guidelines(commission, previously_adopted_guidelines) :-
    ai_office(AIOffice),
    request_update(AIOffice, commission).
must_update_guidelines(commission, previously_adopted_guidelines) :-
    own_initiative(commission).

provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_attention_to/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_account_for/2, 'celex:32024R1689/oj#art_96').
provenance(smes/1, 'celex:32024R1689/oj#art_96').
provenance(start_ups/1, 'celex:32024R1689/oj#art_96').
provenance(local_public_authorities/1, 'celex:32024R1689/oj#art_96').
provenance(member_states/1, 'celex:32024R1689/oj#art_96').

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
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_3/unp_1/pnt_1').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_96', 'celex:32024R1689/oj#art_96/par_1/unp_1').
