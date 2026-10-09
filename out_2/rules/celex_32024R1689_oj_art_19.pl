% unit       : celex:32024R1689/oj#art_19
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 0f2572a54d8a70004ffa8312da33d5b9f2fee58cc54f96ca38f1086fe949fd51
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : aa117e4987f16d7674c10c679f89522ccf59e7ca5357c3b6a2e74977b5040141
% cached     : False
% title      : Automatically generated logs
:- pred financial_institution/1, gloss('provider that is a financial institution'), source('celex:32024R1689/oj#art_19').

must_keep(Provider, logs(automatic, System)) :-
    provider(Provider),
    high_risk_ai_system(System).

required_minimum_period(logs(automatic, System)) :-
    months(6).

must_maintain(Provider, logs(automatic, System)) :-
    provider(Provider),
    financial_institution(Provider),
    high_risk_ai_system(System).

provenance(must_keep/2, 'celex:32024R1689/oj#art_19').
provenance(required_minimum_period/1, 'celex:32024R1689/oj#art_19').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_19').

references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').
