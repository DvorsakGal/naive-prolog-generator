% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : f175730f059f0a8e5573e93e39c512fd39db1790d441fa8b8836629f71b27b70
% cached     : False
% title      : Common specifications
:- pred common_specification_adopted/1, gloss('Commission has adopted implementing act establishing common specifications'), source('celex:32024R1689/oj#art_41').
:- pred common_specification_covers/2, gloss('common specification covers requirement or obligation'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity_with_common_specification/1, gloss('high-risk AI system or general-purpose AI model in conformity with common specifications is presumed conforming'), source('celex:32024R1689/oj#art_41').
:- pred condition_for_common_specification/1, gloss('conditions fulfilled for Commission to adopt common specifications'), source('celex:32024R1689/oj#art_41').
:- pred standardisation_request_not_accepted/1, gloss('request to European standardisation organisation not accepted'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_not_delivered_in_time/1, gloss('harmonised standards not delivered within deadline'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_insufficient_fundamental_rights/1, gloss('harmonised standards insufficiently address fundamental rights concerns'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_does_not_comply/1, gloss('harmonised standards do not comply with the request'), source('celex:32024R1689/oj#art_41').
:- pred no_harmonised_standard_reference_published/1, gloss('no reference to harmonised standards published in Official Journal and none expected within reasonable period'), source('celex:32024R1689/oj#art_41').
:- pred commission_requested_standardisation/1, gloss('Commission requested European standardisation organisation to draft harmonised standard'), source('celex:32024R1689/oj#art_41').
:- pred commission_consulted_advisory_forum/1, gloss('Commission consulted advisory forum when drafting common specifications'), source('celex:32024R1689/oj#art_41').
:- pred commission_informed_committee/1, gloss('Commission informed committee that conditions for common specifications are fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred provider_justifies_alternative_solution/2, gloss('provider justifies technical solutions at least equivalent to common specifications'), source('celex:32024R1689/oj#art_41').
:- pred member_state_informs_commission/2, gloss('Member State informs Commission that common specification does not meet requirements'), source('celex:32024R1689/oj#art_41').
:- pred commission_assesses_member_state_information/1, gloss('Commission assesses information from Member State about common specification'), source('celex:32024R1689/oj#art_41').
:- pred commission_repeals_common_specification/1, gloss('Commission repeals implementing act when harmonised standard reference published'), source('celex:32024R1689/oj#art_41').

condition_for_common_specification(C) :-
    commission_requested_standardisation(C),
    standardisation_failure_condition(C),
    no_harmonised_standard_reference_published(C).

standardisation_failure_condition(C) :-
    standardisation_request_not_accepted(C).
standardisation_failure_condition(C) :-
    harmonised_standard_not_delivered_in_time(C).
standardisation_failure_condition(C) :-
    harmonised_standard_insufficient_fundamental_rights(C).
standardisation_failure_condition(C) :-
    harmonised_standard_does_not_comply(C).

common_specification_adopted(C) :-
    condition_for_common_specification(C),
    commission_consulted_advisory_forum(C).

presumed_conformity_with_common_specification(S) :-
    high_risk_ai_system(S),
    common_specification_adopted(C),
    common_specification_covers(C, S),
    in_conformity_with(S, C).
presumed_conformity_with_common_specification(M) :-
    general_purpose_ai_model(M),
    common_specification_adopted(C),
    common_specification_covers(C, M),
    in_conformity_with(M, C).

in_conformity_with(S, C) :-
    conforms_to_common_specification(S, C).
in_conformity_with(S, C) :-
    conforms_to_part_of_common_specification(S, C).

must_justify_equivalent_solution(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    common_specification_adopted(C),
    common_specification_covers(C, S),
    \+ conforms_to_common_specification(S, C),
    provider_justifies_alternative_solution(P, equivalent_technical_solution(S, C)).

must_justify_equivalent_solution(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    common_specification_adopted(C),
    common_specification_covers(C, M),
    \+ conforms_to_common_specification(M, C),
    provider_justifies_alternative_solution(P, equivalent_technical_solution(M, C)).

must_inform_commission(MemberState, detailed_explanation(CommonSpecification)) :-
    member_state(MemberState),
    common_specification_adopted(C),
    member_state_considers_inadequate(MemberState, C),
    member_state_informs_commission(MemberState, detailed_explanation(C)).

must_assess_and_amend(Commission, Information) :-
    member_state_informs_commission(_, Information),
    commission_assesses_member_state_information(Information),
    may_amend_implementing_act(Commission, Information).

must_repeal_common_specification_act(Commission, C) :-
    common_specification_adopted(C),
    harmonised_standard_reference_published(C),
    commission_repeals_common_specification(C).

must_inform_committee_before_draft(Commission) :-
    commission_informed_committee(Commission),
    condition_for_common_specification(_).

provenance(common_specification_adopted/1, 'celex:32024R1689/oj#art_41').
provenance(common_specification_covers/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_with_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(condition_for_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(standardisation_request_not_accepted/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_not_delivered_in_time/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_insufficient_fundamental_rights/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_does_not_comply/1, 'celex:32024R1689/oj#art_41').
provenance(no_harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_41').
provenance(commission_requested_standardisation/1, 'celex:32024R1689/oj#art_41').
provenance(commission_consulted_advisory_forum/1, 'celex:32024R1689/oj#art_41').
provenance(commission_informed_committee/1, 'celex:32024R1689/oj#art_41').
provenance(provider_justifies_alternative_solution/2, 'celex:32024R1689/oj#art_41').
provenance(member_state_informs_commission/2, 'celex:32024R1689/oj#art_41').
provenance(commission_assesses_member_state_information/1, 'celex:32024R1689/oj#art_41').
provenance(commission_repeals_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(must_justify_equivalent_solution/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess_and_amend/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_common_specification_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee_before_draft/1, 'celex:32024R1689/oj#art_41').

references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
