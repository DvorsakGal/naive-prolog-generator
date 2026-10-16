% unit       : celex:32024R1689/oj#art_80
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f71bcb01712539d6e6fde5a6363143d919da81b16f582b276f7f21928daa9ce8
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : c441ffed7c2ef2f218a409e667bcc868e92db72588cbef6f9837fab9ec0efa98
% cached     : False
% title      : Procedure for dealing with AI systems classified by the provider as non-high-risk in application of <ref id="celex:32024R1689/oj#anx_3"/>
:- pred evaluation_required/2, gloss('market surveillance authority must evaluate AI system classification'), source('celex:32024R1689/oj#art_80').
:- pred evaluation_finds_high_risk/2, gloss('evaluation determines AI system is high-risk'), source('celex:32024R1689/oj#art_80').
:- pred must_take_corrective_action/3, gloss('provider must take corrective action within prescribed period'), source('celex:32024R1689/oj#art_80').
:- pred misclassified_to_circumvent/2, gloss('provider misclassified AI system to avoid requirements'), source('celex:32024R1689/oj#art_80').
:- pred may_perform_checks/2, gloss('market surveillance authority may perform checks'), source('celex:32024R1689/oj#art_80').

evaluation_required(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    not_high_risk_under_art_6_par_3(S),
    high_risk_ai_system(S).

provenance(evaluation_required/2, 'celex:32024R1689/oj#art_80').

evaluation_finds_high_risk(Authority, S) :-
    evaluation_required(Authority, S),
    high_risk_ai_system(S).

provenance(evaluation_finds_high_risk/2, 'celex:32024R1689/oj#art_80').

must_take_corrective_action(Provider, S, period_prescribed_by(Authority)) :-
    evaluation_finds_high_risk(Authority, S),
    provider(Provider),
    placed_or_put_into_service_by(Provider, S).

provenance(must_take_corrective_action/3, 'celex:32024R1689/oj#art_80').

must_inform_commission_and_member_states(Authority, evaluation_results(S, required_actions(Provider, S))) :-
    evaluation_finds_high_risk(Authority, S),
    provider(Provider),
    \+ national_law_provides_otherwise(Authority).

provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_80').

must_ensure_compliance(Provider, S) :-
    must_take_corrective_action(Provider, S, _),
    requirements_in_chapter_3_section_2(S).

provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80').

may_impose_fine(commission, Provider) :-
    must_ensure_compliance(Provider, S),
    \+ must_ensure_compliance(Provider, S).

provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_80').

must_take_corrective_action_all_systems(Provider, S) :-
    must_take_corrective_action(Provider, S, _),
    made_available_on_market(Provider, S).

provenance(must_take_corrective_action_all_systems/2, 'celex:32024R1689/oj#art_80').

measures_taken(Authority, Provider) :-
    must_take_corrective_action(Provider, S, period_prescribed_by(Authority)),
    \+ must_take_corrective_action(Provider, S, period_prescribed_by(Authority)).

provenance(measures_taken/2, 'celex:32024R1689/oj#art_80').

misclassified_to_circumvent(Provider, S) :-
    evaluation_required(Authority, S),
    provider(Provider),
    not_high_risk_under_art_6_par_3(S),
    requirements_in_chapter_3_section_2(S),
    intentionally_misclassified(Provider, S).

provenance(misclassified_to_circumvent/2, 'celex:32024R1689/oj#art_80').

may_impose_fine(commission, Provider) :-
    misclassified_to_circumvent(Provider, S).

provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_80').

may_perform_checks(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    not_high_risk_under_art_6_par_3(S).

provenance(may_perform_checks/2, 'celex:32024R1689/oj#art_80').

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
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_1').
references('celex:32024R1689/oj#art_80', 'celex:32019R1020/oj#art_11').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_71').
