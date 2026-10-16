% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 10522fa273456918576858655730e5b4ace109e57b4b37d70b9c85b95684cb93
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred classified_as_non_high_risk_by_provider/1, gloss('AI system classified by the provider as non-high-risk pursuant to Article 6(3)'), source('celex:32024R1689/oj#art_80').
:- pred must_evaluate_classification/2, gloss('market surveillance authority must evaluate AI system classification'), source('celex:32024R1689/oj#art_80').
:- pred must_require_compliance_and_corrective_action/2, gloss('market surveillance authority must require provider to take compliance and corrective action'), source('celex:32024R1689/oj#art_80').
:- pred must_inform_commission_and_member_states/2, gloss('market surveillance authority must inform Commission and Member States of evaluation results'), source('celex:32024R1689/oj#art_80').
:- pred must_ensure_compliance/2, gloss('provider must ensure AI system complies with requirements'), source('celex:32024R1689/oj#art_80').
:- pred must_take_corrective_action_for_all_systems/2, gloss('provider must take corrective action for all AI systems made available on Union market'), source('celex:32024R1689/oj#art_80').
:- pred misclassified_to_circumvent_requirements/1, gloss('AI system misclassified by provider as non-high-risk to circumvent Chapter III Section 2 requirements'), source('celex:32024R1689/oj#art_80').
:- pred use_not_restricted_to_national_territory/1, gloss('use of AI system is not restricted to national territory of market surveillance authority'), source('celex:32024R1689/oj#art_80').

provenance(classified_as_non_high_risk_by_provider/1, 'celex:32024R1689/oj#art_80').
provenance(must_evaluate_classification/2, 'celex:32024R1689/oj#art_80').
provenance(must_require_compliance_and_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_80').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(must_take_corrective_action_for_all_systems/2, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent_requirements/1, 'celex:32024R1689/oj#art_80').
provenance(use_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_80').

references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_2').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_6').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_7').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_79/par_9').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').

must_evaluate_classification(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    sufficient_reason_to_consider_non_compliant(A, S).

must_require_compliance_and_corrective_action(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    high_risk_ai_system(S),
    must_evaluate_classification(A, S).

must_inform_commission_and_member_states(A, S) :-
    market_surveillance_authority(A),
    ai_system(S),
    must_require_compliance_and_corrective_action(A, S),
    use_not_restricted_to_national_territory(S).

must_ensure_compliance(P, S) :-
    provider(P),
    ai_system(S),
    must_require_compliance_and_corrective_action(_A, S).

must_take_corrective_action_for_all_systems(P, S) :-
    provider(P),
    ai_system(S),
    making_available_on_market(S),
    must_require_compliance_and_corrective_action(_A, S).

misclassified_to_circumvent_requirements(S) :-
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).
