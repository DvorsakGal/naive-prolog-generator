% unit       : celex:32024R1689/oj#art_96
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 36054f18508f46ad253aa7a8fc9dab8f57d2918ee81460e5400ea439efb27e6f
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 58224d11ecf9dba9bdb7f87eb64ab3c49fc9be9543c0bc3a0581444131176016
% cached     : False
% title      : Guidelines from the Commission on the implementation of <ref id="celex:32024R1689/oj"/>
:- pred must_develop_guidelines/2, gloss('Commission must develop guidelines on practical implementation of the regulation, covering specified topics'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_topic/1, gloss('topic that Commission guidelines must cover'), source('celex:32024R1689/oj#art_96').
:- pred must_pay_particular_attention_to/2, gloss('Commission must pay particular attention to specified groups when issuing guidelines'), source('celex:32024R1689/oj#art_96').
:- pred guidelines_must_take_due_account_of/1, gloss('guidelines must take due account of specified sources'), source('celex:32024R1689/oj#art_96').
:- pred must_update_guidelines/2, gloss('Commission must update previously adopted guidelines when deemed necessary, at request of Member States or AI Office or on own initiative'), source('celex:32024R1689/oj#art_96').

must_develop_guidelines(commission, guidelines(practical_implementation)).

guidelines_topic(application_of_requirements_and_obligations).
guidelines_topic(prohibited_practices).
guidelines_topic(practical_implementation_of_substantial_modification).
guidelines_topic(practical_implementation_of_transparency_obligations).
guidelines_topic(detailed_information_on_relationship_with_union_harmonisation_legislation).
guidelines_topic(application_of_definition_of_ai_system).

must_develop_guidelines(commission, guidelines(Topic)) :-
    guidelines_topic(Topic).

must_pay_particular_attention_to(commission, needs_of_smes_including_startups).
must_pay_particular_attention_to(commission, needs_of_local_public_authorities).
must_pay_particular_attention_to(commission, needs_of_sectors_most_likely_to_be_affected).

guidelines_must_take_due_account_of(generally_acknowledged_state_of_the_art_on_ai).
guidelines_must_take_due_account_of(relevant_harmonised_standards).
guidelines_must_take_due_account_of(relevant_common_specifications).
guidelines_must_take_due_account_of(harmonised_standards_or_technical_specifications_set_out_pursuant_to_union_harmonisation_law).

must_update_guidelines(commission, guidelines(PreviouslyAdopted)) :-
    member_state(_MemberState),
    request_update(PreviouslyAdopted).
must_update_guidelines(commission, guidelines(PreviouslyAdopted)) :-
    ai_office(ai_office),
    request_update(PreviouslyAdopted).
must_update_guidelines(commission, guidelines(PreviouslyAdopted)) :-
    own_initiative_update(PreviouslyAdopted).
must_update_guidelines(commission, guidelines(PreviouslyAdopted)) :-
    deemed_necessary_update(PreviouslyAdopted).

:- pred request_update/1, gloss('Member State or AI Office requests update of guidelines'), source('celex:32024R1689/oj#art_96').
:- pred own_initiative_update/1, gloss('Commission acts on own initiative to update guidelines'), source('celex:32024R1689/oj#art_96').
:- pred deemed_necessary_update/1, gloss('update deemed necessary'), source('celex:32024R1689/oj#art_96').

provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_topic/1, 'celex:32024R1689/oj#art_96').
provenance(must_pay_particular_attention_to/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_must_take_due_account_of/1, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(request_update/1, 'celex:32024R1689/oj#art_96').
provenance(own_initiative_update/1, 'celex:32024R1689/oj#art_96').
provenance(deemed_necessary_update/1, 'celex:32024R1689/oj#art_96').

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
