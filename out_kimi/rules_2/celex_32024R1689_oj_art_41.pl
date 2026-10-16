% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 3c5fb7d7756e6c9fba4780d95721ac67dc149c5beb073a4675fddf0c6e27d5ca
% cached     : False
% title      : Common specifications
:- pred may_adopt_common_specifications/1, gloss('Commission may adopt implementing acts establishing common specifications'), source('celex:32024R1689/oj#art_41').
:- pred conditions_fulfilled_for_common_specifications/0, gloss('conditions for adopting common specifications have been fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred request_not_accepted/0, gloss('request to European standardisation organisations not accepted'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standards_not_delivered_in_time/0, gloss('harmonised standards not delivered within deadline'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standards_insufficiently_address_fundamental_rights/0, gloss('harmonised standards insufficiently address fundamental rights concerns'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standards_do_not_comply_with_request/0, gloss('harmonised standards do not comply with the request'), source('celex:32024R1689/oj#art_41').
:- pred no_reference_published_or_expected/0, gloss('no reference to harmonised standards published or expected within reasonable period'), source('celex:32024R1689/oj#art_41').
:- pred must_consult_advisory_forum/0, gloss('Commission shall consult advisory forum when drafting common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_inform_committee_before_draft/0, gloss('Commission shall inform committee before preparing draft implementing act'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity_with_common_specifications/1, gloss('conformity with common specifications gives presumption of conformity'), source('celex:32024R1689/oj#art_41').
:- pred must_repeal_implementing_acts/0, gloss('Commission shall repeal implementing acts when harmonised standard published'), source('celex:32024R1689/oj#art_41').
:- pred must_justify_non_compliance_with_technical_solutions/1, gloss('providers must justify technical solutions meeting equivalent requirements'), source('celex:32024R1689/oj#art_41').
:- pred member_state_may_challenge_common_specification/0, gloss('Member State may inform Commission that common specification does not entirely meet requirements'), source('celex:32024R1689/oj#art_41').
:- pred commission_shall_assess_and_amend_if_appropriate/0, gloss('Commission shall assess and amend implementing act if appropriate'), source('celex:32024R1689/oj#art_41').

may_adopt_common_specifications(Spec) :-
    implementing_act(Spec),
    common_specification(Spec),
    conditions_fulfilled_for_common_specifications.

conditions_fulfilled_for_common_specifications :-
    request_not_accepted,
    no_reference_published_or_expected.

conditions_fulfilled_for_common_specifications :-
    harmonised_standards_not_delivered_in_time,
    no_reference_published_or_expected.

conditions_fulfilled_for_common_specifications :-
    harmonised_standards_insufficiently_address_fundamental_rights,
    no_reference_published_or_expected.

conditions_fulfilled_for_common_specifications :-
    harmonised_standards_do_not_comply_with_request,
    no_reference_published_or_expected.

must_consult_advisory_forum :-
    drafting_common_specifications(_Spec).

must_inform_committee_before_draft :-
    preparing_draft_implementing_act(_Spec).

presumed_conformity_with_common_specifications(Sys) :-
    high_risk_ai_system(Sys),
    conforms_to_common_specifications(Sys).

presumed_conformity_with_common_specifications(Model) :-
    general_purpose_ai_model(Model),
    conforms_to_common_specifications(Model).

must_repeal_implementing_acts :-
    harmonised_standard_proposed_for_publication(Std),
    reference_published_in_official_journal(Std).

must_justify_non_compliance_with_technical_solutions(Sys) :-
    high_risk_ai_system(Sys),
    \+ conforms_to_common_specifications(Sys).

must_justify_non_compliance_with_technical_solutions(Model) :-
    general_purpose_ai_model(Model),
    \+ conforms_to_common_specifications(Model).

member_state_may_challenge_common_specification :-
    common_specification(Spec),
    \+ entirely_meets_requirements(Spec, requirements_chapter_3_section_2).

member_state_may_challenge_common_specification :-
    common_specification(Spec),
    \+ entirely_meets_requirements(Spec, obligations_chapter_5_section_2).

member_state_may_challenge_common_specification :-
    common_specification(Spec),
    \+ entirely_meets_requirements(Spec, obligations_chapter_5_section_3).

commission_shall_assess_and_amend_if_appropriate :-
    member_state_informed_commission(Spec, _Explanation),
    common_specification(Spec),
    appropriate_to_amend(Spec).

provenance(may_adopt_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(conditions_fulfilled_for_common_specifications/0, 'celex:32024R1689/oj#art_41').
provenance(request_not_accepted/0, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_not_delivered_in_time/0, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_insufficiently_address_fundamental_rights/0, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standards_do_not_comply_with_request/0, 'celex:32024R1689/oj#art_41').
provenance(no_reference_published_or_expected/0, 'celex:32024R1689/oj#art_41').
provenance(must_consult_advisory_forum/0, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee_before_draft/0, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_with_common_specifications/1, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_implementing_acts/0, 'celex:32024R1689/oj#art_41').
provenance(must_justify_non_compliance_with_technical_solutions/1, 'celex:32024R1689/oj#art_41').
provenance(member_state_may_challenge_common_specification/0, 'celex:32024R1689/oj#art_41').
provenance(commission_shall_assess_and_amend_if_appropriate/0, 'celex:32024R1689/oj#art_41').

references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
