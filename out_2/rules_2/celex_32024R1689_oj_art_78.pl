% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : e5fe79d90d3d66f8dca89837960ee2bd423b84233a4dcc00d68344dca6fe0bc0
% cached     : False
% title      : Confidentiality
:- pred must_respect_confidentiality/2, gloss('obligation to keep information confidential'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_necessary_data/2, gloss('obligation to request only data strictly necessary'), source('celex:32024R1689/oj#art_78').
:- pred must_implement_cybersecurity_measures/1, gloss('obligation to put in place adequate cybersecurity measures'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data/2, gloss('obligation to delete data when no longer needed'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_disclosure_without_consultation/2, gloss('prohibition on disclosing information without prior consultation'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_sensitive_operational_data_exchange/1, gloss('prohibition on including sensitive operational data in information exchange'), source('celex:32024R1689/oj#art_78').

must_respect_confidentiality(commission, confidentiality) :-
    true.

must_respect_confidentiality(Authority, confidentiality) :-
    market_surveillance_authority(Authority).

must_respect_confidentiality(Body, confidentiality) :-
    notified_body(Body).

must_request_only_necessary_data(Authority, data) :-
    national_competent_authority(Authority).

must_implement_cybersecurity_measures(Authority) :-
    national_competent_authority(Authority).

must_delete_data(Authority, data) :-
    national_competent_authority(Authority).

prohibited_disclosure_without_consultation(Actor, confidential_info) :-
    national_competent_authority(NCA),
    deployer(D),
    high_risk_ai_system(_S),
    law_enforcement_authority(_LFA),
    Actor \= NCA,
    Actor \= D.

prohibited_sensitive_operational_data_exchange(confidential_info) :-
    sensitive_operational_data(_).

provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_sensitive_operational_data_exchange/1, 'celex:32024R1689/oj#art_78').

references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
