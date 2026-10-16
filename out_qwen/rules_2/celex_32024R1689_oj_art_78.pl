% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 1fbbaca1cc7beba3b1dc22e48fbe6284e5a53a95dbf200caa420432fca363d14
% cached     : False
% title      : Confidentiality
:- pred involved_in_application_of_regulation/1, gloss('natural or legal person involved in the application of this Regulation'), source('celex:32024R1689/oj#art_78').
:- pred must_respect_confidentiality/2, gloss('obligation to respect confidentiality of information obtained'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_necessary_data/2, gloss('authority must request only data strictly necessary for risk assessment'), source('celex:32024R1689/oj#art_78').
:- pred must_implement_cybersecurity_measures/2, gloss('authority must put in place adequate cybersecurity measures'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data_when_no_longer_needed/2, gloss('authority must delete collected data when no longer needed'), source('celex:32024R1689/oj#art_78').
:- pred confidential_exchange_between_authorities/1, gloss('information exchanged on a confidential basis between authorities'), source('celex:32024R1689/oj#art_78').
:- pred disclosure_would_jeopardise_security/1, gloss('disclosure would jeopardise public and national security interests'), source('celex:32024R1689/oj#art_78').
:- pred used_by_sensitive_authority/1, gloss('high-risk AI system used by law enforcement, border control, immigration or asylum authority'), source('celex:32024R1689/oj#art_78').
:- pred provider_is_sensitive_authority/2, gloss('provider of high-risk AI system is a law enforcement, immigration or asylum authority'), source('celex:32024R1689/oj#art_78').
:- pred must_keep_documentation_on_premises/2, gloss('technical documentation must remain within premises of sensitive authority provider'), source('celex:32024R1689/oj#art_78').
:- pred must_allow_access_to_documentation/3, gloss('sensitive authority must allow market surveillance authority access to documentation'), source('celex:32024R1689/oj#art_78').
:- pred holds_appropriate_security_clearance/2, gloss('staff member holds appropriate level of security clearance'), source('celex:32024R1689/oj#art_78').
:- pred permitted_third_country_exchange/1, gloss('exchange of confidential information with third country regulatory authority'), source('celex:32024R1689/oj#art_78').

involved_in_application_of_regulation(commission).
involved_in_application_of_regulation(A) :- market_surveillance_authority(A).
involved_in_application_of_regulation(B) :- notified_body(B).

must_respect_confidentiality(Entity, Information) :-
    involved_in_application_of_regulation(Entity),
    obtained_in_carrying_out_tasks(Entity, Information).

must_request_only_necessary_data(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    \+ strictly_necessary_for_risk_assessment(Data).

must_implement_cybersecurity_measures(Authority, Information) :-
    involved_in_application_of_regulation(Authority),
    obtained_in_carrying_out_tasks(Authority, Information).

must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    \+ needed_for_original_purpose(Data).

confidential_exchange_between_authorities(Information) :-
    exchanged_between_competent_authorities(Information).

used_by_sensitive_authority(S) :-
    high_risk_ai_system_annex_3_point_1(S),
    deployer(D),
    sensitive_authority(D).

used_by_sensitive_authority(S) :-
    high_risk_ai_system_annex_iii(S),
    deployer(D),
    sensitive_authority(D).

provider_is_sensitive_authority(P, S) :-
    provider(P),
    sensitive_authority(P),
    high_risk_ai_system_annex_3_point_1(S).

provider_is_sensitive_authority(P, S) :-
    provider(P),
    sensitive_authority(P),
    high_risk_ai_system_annex_iii(S).

must_keep_documentation_on_premises(Authority, Documentation) :-
    provider_is_sensitive_authority(Authority, _S),
    technical_documentation(Documentation).

must_allow_access_to_documentation(Provider, SurveillanceAuthority, Documentation) :-
    provider_is_sensitive_authority(Provider, _S),
    market_surveillance_authority(SurveillanceAuthority),
    technical_documentation(Documentation).

permitted_third_country_exchange(Information) :-
    confidential_information(Information),
    third_country_regulatory_authority(_Recipient),
    confidentiality_arrangement_exists(_Recipient).

provenance(involved_in_application_of_regulation/1, 'celex:32024R1689/oj#art_78').
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(confidential_exchange_between_authorities/1, 'celex:32024R1689/oj#art_78').
provenance(disclosure_would_jeopardise_security/1, 'celex:32024R1689/oj#art_78').
provenance(used_by_sensitive_authority/1, 'celex:32024R1689/oj#art_78').
provenance(provider_is_sensitive_authority/2, 'celex:32024R1689/oj#art_78').
provenance(must_keep_documentation_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_allow_access_to_documentation/3, 'celex:32024R1689/oj#art_78').
provenance(holds_appropriate_security_clearance/2, 'celex:32024R1689/oj#art_78').
provenance(permitted_third_country_exchange/1, 'celex:32024R1689/oj#art_78').

references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
