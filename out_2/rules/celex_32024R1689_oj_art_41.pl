% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 775bf3c8935dde3ec4d328cc9485f5d1f0ec25ad2e8b6eec5de285cac63a0b9e
% cached     : False
% title      : Common specifications
:- pred permitted_adopt_implementing_act/1, gloss('Commission may adopt implementing acts establishing common specifications'), source('celex:32024R1689/oj#art_41').
:- pred condition_fulfilled/1, gloss('All conditions for adopting common specifications are fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred condition_a/1, gloss('Condition (a) for adopting common specifications is satisfied'), source('celex:32024R1689/oj#art_41').
:- pred condition_b/1, gloss('Condition (b) for adopting common specifications is satisfied'), source('celex:32024R1689/oj#art_41').
:- pred request_made/1, gloss('Commission has requested European standardisation organisations to draft a harmonised standard'), source('celex:32024R1689/oj#art_41').
:- pred request_not_accepted/1, gloss('The request has not been accepted by any European standardisation organisation'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard_not_delivered/1, gloss('The harmonised standards addressing the request are not delivered within the deadline'), source('celex:32024R1689/oj#art_41').
:- pred standards_insufficient/1, gloss('The relevant harmonised standards insufficiently address fundamental rights concerns'), source('celex:32024R1689/oj#art_41').
:- pred standards_not_comply/1, gloss('The harmonised standards do not comply with the request'), source('celex:32024R1689/oj#art_41').
:- pred no_harmonised_reference_published/1, gloss('No reference to harmonised standards covering the requirements has been published in the Official Journal'), source('celex:32024R1689/oj#art_41').
:- pred must_consult/2, gloss('Commission shall consult the advisory forum when drafting common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_adopt/2, gloss('Commission shall adopt implementing acts in accordance with the examination procedure'), source('celex:32024R1689/oj#art_41').
:- pred must_inform/2, gloss('Commission shall inform the committee that conditions are fulfilled before preparing a draft implementing act'), source('celex:32024R1689/oj#art_41').
:- pred objective_presumption/1, gloss('High‑risk AI systems or general‑purpose AI models in conformity with common specifications are presumed to conform with the requirements'), source('celex:32024R1689/oj#art_41').
:- pred in_conformity_with_common_specifications/1, gloss('AI system is in conformity with the common specifications'), source('celex:32024R1689/oj#art_41').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_41').
:- pred general_purpose_ai_model/1, gloss('General‑purpose AI model'), source('celex:32024R1689/oj#art_41').
:- pred must_assess/2, gloss('Commission shall assess a harmonised standard or information'), source('celex:32024R1689/oj#art_41').
:- pred must_repeal/2, gloss('Commission shall repeal implementing acts when a harmonised standard is published'), source('celex:32024R1689/oj#art_41').
:- pred must_justify/2, gloss('Providers shall justify technical solutions when they do not comply with common specifications'), source('celex:32024R1689/oj#art_41').
:- pred not_compliant_with_common_specifications/1, gloss('Provider does not comply with the common specifications'), source('celex:32024R1689/oj#art_41').
:- pred compliant_with_common_specifications/1, gloss('Provider complies with the common specifications'), source('celex:32024R1689/oj#art_41').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_41').
:- pred must_amend/2, gloss('Commission shall amend the implementing act when appropriate'), source('celex:32024R1689/oj#art_41').
:- pred appropriate/0, gloss('Condition that amendment is appropriate'), source('celex:32024R1689/oj#art_41').

permitted_adopt_implementing_act(commission) :-
    condition_fulfilled(commission).

condition_fulfilled(C) :-
    condition_a(C),
    condition_b(C).

condition_a(C) :-
    request_made(C),
    (   request_not_accepted(C)
    ;   harmonised_standard_not_delivered(C)
    ;   standards_insufficient(C)
    ;   standards_not_comply(C)
    ).

condition_b(C) :-
    no_harmonised_reference_published(C).

must_consult(commission, advisory_forum).

must_adopt(commission, implementing_act(adopted_in_accordance_with(examination_procedure))).

must_inform(commission, inform(committee, conditions_fulfilled)).

objective_presumption(S) :-
    (   high_risk_ai_system(S)
    ;   general_purpose_ai_model(S)
    ),
    in_conformity_with_common_specifications(S).

must_assess(commission, harmonised_standard).

must_repeal(commission, implementing_act).

must_justify(P, justification(technical_solution_meets_requirements)) :-
    provider(P),
    not_compliant_with_common_specifications(P).

must_inform(MS, inform(commission, detailed_explanation)) :-
    member_state(MS).

must_assess(commission, information).

must_amend(commission, implementing_act) :-
    appropriate.

% Provenance for each clause head
provenance(permitted_adopt_implementing_act/1, 'celex:32024R1689/oj#art_41').
provenance(condition_fulfilled/1, 'celex:32024R1689/oj#art_41').
provenance(condition_a/1, 'celex:32024R1689/oj#art_41').
provenance(condition_b/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform/2, 'celex:32024R1689/oj#art_41').
provenance(objective_presumption/1, 'celex:32024R1689/oj#art_41').
provenance(must_assess/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify/2, 'celex:32024R1689/oj#art_41').
provenance(must_amend/2, 'celex:32024R1689/oj#art_41').

% References
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
