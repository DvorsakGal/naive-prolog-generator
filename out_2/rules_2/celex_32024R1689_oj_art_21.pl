% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : ccc608875e9602176e0f10dd5a5f89b78166dbfcf248952ae95a11941109def0
% cached     : False
% title      : Cooperation with competent authorities
:- pred competent_authority/1, gloss('competent authority'), source('celex:32024R1689/oj#art_21').
:- pred reasoned_request_by/1, gloss('reasoned request by a competent authority'), source('celex:32024R1689/oj#art_21').
:- pred under_control/2, gloss('entity has control over the specified item'), source('celex:32024R1689/oj#art_21').
:- pred confidentiality_obligation_applies/1, gloss('confidentiality obligations set out in article 78 apply'), source('celex:32024R1689/oj#art_21').

must_provide(Provider, information_and_documentation(HighRiskAISystem, conformity_requirements, language(official_language(MemberState)))) :-
    provider(Provider),
    high_risk_ai_system(HighRiskAISystem),
    competent_authority(Authority),
    reasoned_request_by(Authority),
    member_state(MemberState).

must_provide_access(Provider, logs(HighRiskAISystem)) :-
    provider(Provider),
    high_risk_ai_system(HighRiskAISystem),
    competent_authority(Authority),
    reasoned_request_by(Authority),
    under_control(Provider, logs(HighRiskAISystem)).

must_treat_confidentially(Authority, Information) :-
    obtained_information(Authority, Information),
    confidentiality_obligation_applies(Information).

provenance(must_provide/2, 'celex:32024R1689/oj#art_21').
provenance(must_provide_access/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
