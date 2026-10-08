% unit       : celex:32024R1689/oj#art_21
% title      : Cooperation with competent authorities
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : gpt-oss:120b-cloud
% prompt sha : 498866490a660c2e9c03c7c2cc0451c3734e5ebe93a8eb91036335e4fd0e9509
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_21').
:- pred reasoned_request/1, gloss('reasoned request by a competent authority'), source('celex:32024R1689/oj#art_21').
:- pred logs_under_control/2, gloss('logs of AI system under control of provider'), source('celex:32024R1689/oj#art_21').
:- pred obtained_under_art_21/2, gloss('information obtained by authority under article 21'), source('celex:32024R1689/oj#art_21').
:- pred confidentiality_obligation_applies/1, gloss('confidentiality obligations set out in article 78'), source('celex:32024R1689/oj#art_21').

required_provide_information(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    reasoned_request(Authority),
    national_competent_authority(Authority).

required_provide_logs(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    reasoned_request(Authority),
    national_competent_authority(Authority),
    logs_under_control(Provider, System).

required_confidential_handling(Authority, Information) :-
    national_competent_authority(Authority),
    obtained_under_art_21(Authority, Information),
    confidentiality_obligation_applies(Information).

provenance(required_provide_information/2, 'celex:32024R1689/oj#art_21').
provenance(required_provide_logs/2, 'celex:32024R1689/oj#art_21').
provenance(required_confidential_handling/2, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_21').
