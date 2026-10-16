% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : d47b28b285ca3adbe4c297daeef3034d0c7a899cb2ec5f04fbb308df662c771a
% cached     : False
% title      : Common specifications
:- pred common_specification_adopted/1, gloss('commission has adopted implementing act establishing common specification'), source('celex:32024R1689/oj#art_41').
:- pred standardisation_request_not_accepted/1, gloss('request for harmonised standard not accepted by european standardisation organisations'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_not_delivered_in_time/1, gloss('harmonised standards addressing request not delivered within deadline'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_insufficient_on_fundamental_rights/1, gloss('relevant harmonised standards insufficiently address fundamental rights concerns'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_non_compliant_with_request/1, gloss('harmonised standards do not comply with the request'), source('celex:32024R1689/oj#art_41').
:- pred no_harmonised_standard_reference_published/1, gloss('no reference to harmonised standards covering requirements published in official journal'), source('celex:32024R1689/oj#art_41').
:- pred must_consult_advisory_forum/2, gloss('commission must consult advisory forum when drafting common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_inform_committee_of_conditions/2, gloss('commission must inform committee that conditions for common specifications are fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity_via_common_specification/2, gloss('system or model presumed in conformity due to compliance with common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_repeal_common_specification_on_standard_publication/2, gloss('commission must repeal implementing acts when harmonised standard reference is published'), source('celex:32024R1689/oj#art_41').
:- pred must_justify_non_compliance_with_common_specification/2, gloss('provider must justify technical solutions meeting requirements when not complying with common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_inform_commission_of_specification_deficiency/2, gloss('member state must inform commission if common specification does not meet requirements'), source('celex:32024R1689/oj#art_41').
:- pred must_assess_and_amend_specification/2, gloss('commission must assess member state information and amend implementing act if appropriate'), source('celex:32024R1689/oj#art_41').

common_specification_adopted(Spec) :-
    standardisation_request_not_accepted(Spec).
common_specification_adopted(Spec) :-
    harmonised_standard_not_delivered_in_time(Spec).
common_specification_adopted(Spec) :-
    harmonised_standard_insufficient_on_fundamental_rights(Spec).
common_specification_adopted(Spec) :-
    harmonised_standard_non_compliant_with_request(Spec).
common_specification_adopted(Spec) :-
    no_harmonised_standard_reference_published(Spec).

must_consult_advisory_forum(commission, Spec) :-
    common_specification_adopted(Spec).

must_inform_committee_of_conditions(commission, Spec) :-
    common_specification_adopted(Spec).

presumed_conformity_via_common_specification(Entity, Spec) :-
    high_risk_ai_system(Entity),
    common_specification_adopted(Spec).
presumed_conformity_via_common_specification(Entity, Spec) :-
    general_purpose_ai_model(Entity),
    common_specification_adopted(Spec).

must_repeal_common_specification_on_standard_publication(commission, Spec) :-
    common_specification_adopted(Spec).

must_justify_non_compliance_with_common_specification(Provider, Entity) :-
    provider(Provider),
    high_risk_ai_system(Entity).
must_justify_non_compliance_with_common_specification(Provider, Entity) :-
    provider(Provider),
    general_purpose_ai_model(Entity).

must_inform_commission_of_specification_deficiency(MemberState, Spec) :-
    common_specification_adopted(Spec).

must_assess_and_amend_specification(commission, Spec) :-
    common_specification_adopted(Spec).

provenance(common_specification_adopted/1, 'celex:32024R1689/oj#art_41').
provenance(standardisation_request_not_accepted/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_not_delivered_in_time/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_insufficient_on_fundamental_rights/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_non_compliant_with_request/1, 'celex:32024R1689/oj#art_41').
provenance(no_harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult_advisory_forum/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee_of_conditions/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_via_common_specification/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_common_specification_on_standard_publication/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_non_compliance_with_common_specification/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission_of_specification_deficiency/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess_and_amend_specification/2, 'celex:32024R1689/oj#art_41').

references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
