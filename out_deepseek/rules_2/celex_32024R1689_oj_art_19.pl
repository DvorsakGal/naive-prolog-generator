% unit       : celex:32024R1689/oj#art_19
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 0f2572a54d8a70004ffa8312da33d5b9f2fee58cc54f96ca38f1086fe949fd51
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 86f6e0505edf68e79cfe96cced5d7bff1b297cfae473c7b3b88143193173ca5e
% cached     : False
% title      : Automatically generated logs
:- pred must_keep_logs/2, gloss('provider must keep automatically generated logs'), source('celex:32024R1689/oj#art_19').
:- pred must_maintain_logs_under_financial_services_law/2, gloss('financial institution provider must maintain logs under financial services law'), source('celex:32024R1689/oj#art_19').

must_keep_logs(Provider, logs(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    under_control_of(Provider, System),
    kept_for_period(System, period(at_least(months(6)), appropriate_to(intended_purpose(System)))).

must_maintain_logs_under_financial_services_law(Provider, logs(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    financial_institution(Provider),
    subject_to_internal_governance_requirements(Provider),
    maintained_as_part_of_documentation(Provider, System).

provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain_logs_under_financial_services_law/2, 'celex:32024R1689/oj#art_19').

references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').
