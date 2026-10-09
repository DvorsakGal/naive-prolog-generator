% unit       : celex:32024R1689/oj#art_41
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 809cbda633413d5c880cc4183c222bb35da47e5b31a6f55d8724caa08cbece38
% cached     : False
% title      : Common specifications
:- pred adopt_implementing_act/2, gloss('Commission may adopt implementing act establishing common specifications'), source('celex:32024R1689/oj#art_41').
adopt_implementing_act(Commission, _Act) :-
    Commission = commission,
    condition_a(Commission),
    condition_b(Commission).

:- pred condition_a/1, gloss('Condition (a) for adopting common specifications is fulfilled'), source('celex:32024R1689/oj#art_41').
% definition of condition_a/1 to be provided elsewhere

:- pred condition_b/1, gloss('Condition (b) for adopting common specifications is fulfilled'), source('celex:32024R1689/oj#art_41').
% definition of condition_b/1 to be provided elsewhere

:- pred must_consult/2, gloss('Commission shall consult the advisory forum when drafting common specifications'), source('celex:32024R1689/oj#art_41').
must_consult(Commission, advisory_forum) :-
    Commission = commission.

:- pred must_adopt/2, gloss('Commission shall adopt implementing acts in accordance with the examination procedure'), source('celex:32024R1689/oj#art_41').
must_adopt(Commission, implementing_act) :-
    Commission = commission.

:- pred must_inform/2, gloss('Commission shall inform the committee that conditions are fulfilled'), source('celex:32024R1689/oj#art_41').
must_inform(Commission, inform(committee, conditions_fulfilled)) :-
    Commission = commission.

:- pred presumed_conformity/1, gloss('System conforming to common specifications is presumed to conform with requirements'), source('celex:32024R1689/oj#art_41').
presumed_conformity(System) :-
    (high_risk_ai_system(System) ; general_purpose_ai_model(System)),
    conforms_to_common_specifications(System).

:- pred conforms_to_common_specifications/1, gloss('System is in conformity with the common specifications'), source('celex:32024R1689/oj#art_41').

:- pred must_assess/2, gloss('Commission shall assess harmonised standard or information'), source('celex:32024R1689/oj#art_41').
must_assess(Commission, harmonised_standard) :-
    Commission = commission.
must_assess(Commission, information) :-
    Commission = commission.

:- pred must_repeal/2, gloss('Commission shall repeal implementing acts when harmonised standard is published'), source('celex:32024R1689/oj#art_41').
must_repeal(Commission, implementing_act) :-
    Commission = commission.

:- pred must_justify/2, gloss('Provider shall justify technical solutions when not complying with common specifications'), source('celex:32024R1689/oj#art_41').
must_justify(Provider, justification(technical_solutions_meet_requirements)) :-
    provider(Provider).

:- pred must_inform/2, gloss('Member State shall inform Commission of deficiencies in common specifications'), source('celex:32024R1689/oj#art_41').
must_inform(MemberState, inform(commission, detailed_explanation)) :-
    member_state(MemberState).

:- pred must_amend/2, gloss('Commission shall amend implementing act after assessing information'), source('celex:32024R1689/oj#art_41').
must_amend(Commission, implementing_act) :-
    Commission = commission.

% Provenance for each clause head
provenance(adopt_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(condition_a/1, 'celex:32024R1689/oj#art_41').
provenance(condition_b/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_41').
provenance(conforms_to_common_specifications/1, 'celex:32024R1689/oj#art_41').
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
