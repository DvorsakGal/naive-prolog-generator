% unit       : celex:32024R1689/oj#art_21
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : e72f590854bc4d22eb2df336d1ccda3b73aaa8d58947ed3f4761237d9ea9d964
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cca93e01a1db2810c76006cb96f0916a2a8bd21ea64b6d70e31cce05be25091d
% cached     : False
% title      : Cooperation with competent authorities
:- pred must_provide_information_on_request/2, gloss('provider must provide information and documentation to competent authority upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred must_give_access_to_logs/2, gloss('provider must give competent authority access to automatically generated logs upon reasoned request'), source('celex:32024R1689/oj#art_21').
:- pred reasoned_request/2, gloss('competent authority makes a reasoned request to a provider'), source('celex:32024R1689/oj#art_21').
:- pred information_and_documentation/1, gloss('information and documentation necessary to demonstrate conformity with requirements'), source('celex:32024R1689/oj#art_21').
:- pred conformity_requirements/1, gloss('requirements set out in Chapter III Section 2'), source('celex:32024R1689/oj#art_21').
:- pred easily_understood_language/1, gloss('language easily understood by the authority in an official language of Union institutions as indicated by Member State'), source('celex:32024R1689/oj#art_21').
:- pred automatically_generated_logs/1, gloss('automatically generated logs of the high-risk AI system'), source('celex:32024R1689/oj#art_21').
:- pred logs_under_control/2, gloss('logs are under the control of the provider'), source('celex:32024R1689/oj#art_21').
:- pred confidentiality_obligations/1, gloss('confidentiality obligations set out in Article 78'), source('celex:32024R1689/oj#art_21').
:- pred information_obtained_by_authority/1, gloss('information obtained by competent authority pursuant to Article 21'), source('celex:32024R1689/oj#art_21').

must_provide_information_on_request(P, A) :-
    provider(P),
    high_risk_ai_system(S),
    provider_places_on_market(P, S),
    national_competent_authority(A),
    reasoned_request(A, P),
    information_and_documentation(D),
    demonstrates_conformity(D, S),
    conformity_requirements(R),
    easily_understood_language(L),
    must_provide(P, information(D, L, A)).

must_give_access_to_logs(P, A) :-
    provider(P),
    high_risk_ai_system(S),
    provider_places_on_market(P, S),
    national_competent_authority(A),
    reasoned_request(A, P),
    automatically_generated_logs(Logs, S),
    logs_under_control(P, Logs),
    must_give_access(P, Logs, A).

must_treat_information_confidentially(A, Info) :-
    national_competent_authority(A),
    information_obtained_by_authority(Info),
    confidentiality_obligations(O),
    must_treat(A, Info, O).

high_risk_ai_system(S) :-
    ai_system(S),
    high_risk(S).

provider_places_on_market(P, S) :-
    provider(P),
    placing_on_market(S),
    provider_of(P, S).

provider_of(P, S) :-
    provider(P),
    develops(P, S).

develops(P, S) :-
    provider(P),
    ai_system(S).

demonstrates_conformity(D, S) :-
    information_and_documentation(D),
    ai_system(S).

must_provide(P, information(D, L, A)) :-
    provider(P),
    information_and_documentation(D),
    easily_understood_language(L),
    national_competent_authority(A).

must_give_access(P, Logs, A) :-
    provider(P),
    automatically_generated_logs(Logs, _S),
    national_competent_authority(A).

must_treat(A, Info, O) :-
    national_competent_authority(A),
    information_obtained_by_authority(Info),
    confidentiality_obligations(O).

automatically_generated_logs(Logs, S) :-
    ai_system(S),
    logs(Logs),
    automatically_generated(Logs).

logs_under_control(P, Logs) :-
    provider(P),
    controls(P, Logs).

high_risk(S) :-
    ai_system(S),
    risk(S).

provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_21').
provenance(must_give_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(reasoned_request/2, 'celex:32024R1689/oj#art_21').
provenance(information_and_documentation/1, 'celex:32024R1689/oj#art_21').
provenance(conformity_requirements/1, 'celex:32024R1689/oj#art_21').
provenance(easily_understood_language/1, 'celex:32024R1689/oj#art_21').
provenance(automatically_generated_logs/1, 'celex:32024R1689/oj#art_21').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_21').
provenance(confidentiality_obligations/1, 'celex:32024R1689/oj#art_21').
provenance(information_obtained_by_authority/1, 'celex:32024R1689/oj#art_21').

references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').
