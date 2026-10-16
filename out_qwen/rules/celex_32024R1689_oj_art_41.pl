% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7dbaf202402f7b4d7a9d08d3524413ef9bd4b217c6d73e6cf5de010a7af0c05b
% cached     : False
% title      : Common specifications
:- pred common_specification/1, gloss('technical specification established by implementing act'), source('celex:32024R1689/oj#art_41').
:- pred must_consult_advisory_forum(Actor, Object), gloss('obligation to consult the advisory forum when drafting specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_inform_committee(Actor, Object), gloss('obligation to inform committee that conditions are fulfilled'), source('celex:32024R1689/oj#art_41').
:- pred presumed_conformity_with_requirements(X), gloss('presumption of conformity arising from common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_repeal_implementing_act(Actor, Object), gloss('obligation to repeal acts when harmonised standard published'), source('celex:32024R1689/oj#art_41').
:- pred must_justify_technical_solution(Actor, Object), gloss('obligation to justify non-compliance with common specifications'), source('celex:32024R1689/oj#art_41').
:- pred must_inform_commission_about_specification(Actor, Object), gloss('member state obligation to inform commission about specification deficiencies'), source('celex:32024R1689/oj#art_41').

common_specification(S) :-
    established_by_implementing_act(S).

must_consult_advisory_forum(commission, drafting(common_specification(_S))) :-
    true.

must_inform_committee(commission, conditions_fulfilled(art_41_par_1)) :-
    before_preparing_draft_implementing_act.

presumed_conformity_with_requirements(X) :-
    high_risk_ai_system(X),
    in_conformity_with_common_specification(X).

presumed_conformity_with_requirements(X) :-
    general_purpose_ai_model(X),
    in_conformity_with_common_specification(X).

must_repeal_implementing_act(commission, implementing_act(A)) :-
    reference_to_harmonised_standard_published_in_official_journal(A),
    covers_same_requirements_or_obligations(A).

must_justify_technical_solution(P, requirements_or_obligations(R)) :-
    provider(P),
    high_risk_ai_system(S),
    \+ complies_with_common_specification(P, S),
    adopted_technical_solution(P, R).

must_justify_technical_solution(P, requirements_or_obligations(R)) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ complies_with_common_specification(P, M),
    adopted_technical_solution(P, R).

must_inform_commission_about_specification(member_state, detailed_explanation(E)) :-
    considers_specification_insufficient(member_state, E).

provenance(common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult_advisory_forum/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_with_requirements/1, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_technical_solution/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission_about_specification/2, 'celex:32024R1689/oj#art_41').

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
