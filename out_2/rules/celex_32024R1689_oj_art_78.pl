% unit       : celex:32024R1689/oj#art_78
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d53dc90c86e976a98dbda3b4a6970d89f5169ecacfd0706533118836fc2646be
% cached     : False
% title      : Confidentiality
:- pred must_respect_confidentiality/2, gloss('obligation to respect confidentiality of information and data obtained in tasks'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_necessary_data/2, gloss('obligation to request only data strictly necessary for risk assessment and exercise of powers'), source('celex:32024R1689/oj#art_78').
:- pred must_put_in_place_cybersecurity_measures/1, gloss('obligation to put in place adequate and effective cybersecurity measures'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data_when_no_longer_needed/2, gloss('obligation to delete data as soon as it is no longer needed for the purpose for which it was obtained'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_disclosure/1, gloss('prohibition of disclosure of confidential information without prior consultation'), source('celex:32024R1689/oj#art_78').
:- pred permitted_disclosure/1, gloss('exception allowing disclosure after prior consultation of originating authority and deployer'), source('celex:32024R1689/oj#art_78').
:- pred permitted_exchange_confidential_information/1, gloss('permission for the Commission and Member States to exchange confidential information with third‑country authorities under confidentiality arrangements'), source('celex:32024R1689/oj#art_78').

:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_78').
:- pred other_involved_person/1, gloss('any other natural or legal person involved in the application of the Regulation'), source('celex:32024R1689/oj#art_78').
:- pred authority_involved_in_application/1, gloss('authority involved in the application of the Regulation'), source('celex:32024R1689/oj#art_78').
:- pred confidential_exchange/1, gloss('confidential information exchanged between national competent authorities or with the Commission'), source('celex:32024R1689/oj#art_78').
:- pred high_risk_ai_system_used_by_law_enforcement/1, gloss('high‑risk AI systems used by law‑enforcement, border‑control, immigration or asylum authorities'), source('celex:32024R1689/oj#art_78').
:- pred prior_consultation/2, gloss('prior consultation of the originating national competent authority and the deployer'), source('celex:32024R1689/oj#art_78').
:- pred confidentiality_arrangement/1, gloss('bilateral or multilateral confidentiality arrangement with a third‑country authority'), source('celex:32024R1689/oj#art_78').

must_respect_confidentiality(Actor, confidentiality(obtained_in_tasks)) :-
    commission(Actor).

must_respect_confidentiality(Actor, confidentiality(obtained_in_tasks)) :-
    market_surveillance_authority(Actor).

must_respect_confidentiality(Actor, confidentiality(obtained_in_tasks)) :-
    notified_body(Actor).

must_respect_confidentiality(Actor, confidentiality(obtained_in_tasks)) :-
    other_involved_person(Actor).

must_request_only_necessary_data(Authority, data) :-
    authority_involved_in_application(Authority).

must_put_in_place_cybersecurity_measures(Authority) :-
    authority_involved_in_application(Authority).

must_delete_data_when_no_longer_needed(Authority, data) :-
    authority_involved_in_application(Authority).

prohibited_disclosure(Info) :-
    confidential_exchange(Info),
    high_risk_ai_system_used_by_law_enforcement(Info),
    \+ permitted_disclosure(Info).

permitted_disclosure(Info) :-
    prior_consultation(OriginatingAuthority, Deployer).

permitted_exchange_confidential_information(Info) :-
    commission(_Actor),
    confidentiality_arrangement(_ThirdCountry).

provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_put_in_place_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_disclosure/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_confidential_information/1, 'celex:32024R1689/oj#art_78').

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
