% unit       : celex:32024R1689/oj#art_19
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 0f2572a54d8a70004ffa8312da33d5b9f2fee58cc54f96ca38f1086fe949fd51
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 44d9795586c14a864d373d5ec45ef0c96f7d797107b171d667b10fe04fe77f71
% cached     : False
% title      : Automatically generated logs
:- pred must_keep_logs/2, gloss('provider must keep automatically generated logs'), source('celex:32024R1689/oj#art_19').
:- pred must_maintain_logs_as_documentation/2, gloss('financial institution provider must maintain logs as part of financial services documentation'), source('celex:32024R1689/oj#art_19').

must_keep_logs(Provider, logs(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System),
    kept_for_period(Provider, System, period(at_least(months(6)), appropriate_to(intended_purpose(System)))).

must_maintain_logs_as_documentation(Provider, logs(System)) :-
    provider(Provider),
    financial_institution(Provider),
    subject_to_internal_governance_requirements(Provider),
    high_risk_ai_system(System),
    logs_under_control(Provider, System).

provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain_logs_as_documentation/2, 'celex:32024R1689/oj#art_19').

references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').
