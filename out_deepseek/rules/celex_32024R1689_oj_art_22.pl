% unit       : celex:32024R1689/oj#art_22
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4521eef1cf990d2707797d97db3986cddacdd3561d129939e713ba604bfcd184
% cached     : False
% title      : Authorised representatives of providers of high-risk AI systems
:- pred must_appoint_authorised_representative/2, gloss('provider must appoint an authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred must_enable_authorised_representative/2, gloss('provider must enable its authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred must_perform_mandate_tasks/2, gloss('authorised representative must perform mandate tasks'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide mandate copy on request'), source('celex:32024R1689/oj#art_22').
:- pred must_verify_documentation/2, gloss('authorised representative must verify documentation'), source('celex:32024R1689/oj#art_22').
:- pred must_keep_documentation/2, gloss('authorised representative must keep documentation'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_information/2, gloss('authorised representative must provide information on request'), source('celex:32024R1689/oj#art_22').
:- pred must_cooperate/2, gloss('authorised representative must cooperate with authorities'), source('celex:32024R1689/oj#art_22').
:- pred must_comply_with_registration/2, gloss('authorised representative must comply with registration obligations'), source('celex:32024R1689/oj#art_22').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate mandate if provider acts contrary'), source('celex:32024R1689/oj#art_22').
:- pred must_inform_termination/2, gloss('authorised representative must inform authorities of mandate termination'), source('celex:32024R1689/oj#art_22').
:- pred third_country_provider/1, gloss('provider established in a third country'), source('celex:32024R1689/oj#art_22').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_22').
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity'), source('celex:32024R1689/oj#art_22').
:- pred technical_documentation/1, gloss('technical documentation'), source('celex:32024R1689/oj#art_22').
:- pred conformity_assessment_procedure/1, gloss('appropriate conformity assessment procedure'), source('celex:32024R1689/oj#art_22').
:- pred certificate/1, gloss('certificate issued by notified body'), source('celex:32024R1689/oj#art_22').
:- pred logs/1, gloss('automatically generated logs'), source('celex:32024R1689/oj#art_22').
:- pred registration_obligations/1, gloss('registration obligations'), source('celex:32024R1689/oj#art_22').
:- pred mandate/1, gloss('written mandate appointing authorised representative'), source('celex:32024R1689/oj#art_22').

must_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    third_country_provider(Provider),
    authorised_representative(Representative),
    high_risk_ai_system(S),
    placing_on_market(S),
    \+ making_available_on_market(S).

must_enable_authorised_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    mandate(M),
    must_perform_mandate_tasks(Representative, M).

must_perform_mandate_tasks(Representative, Mandate) :-
    authorised_representative(Representative),
    mandate(Mandate).

must_provide_mandate_copy(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority),
    mandate(M),
    must_perform_mandate_tasks(Representative, M).

must_verify_documentation(Representative, System) :-
    authorised_representative(Representative),
    high_risk_ai_system(System),
    eu_declaration_of_conformity(D),
    technical_documentation(T),
    conformity_assessment_procedure(C).

must_keep_documentation(Representative, System) :-
    authorised_representative(Representative),
    high_risk_ai_system(System),
    provider(Provider),
    eu_declaration_of_conformity(D),
    technical_documentation(T),
    certificate(Cert).

must_provide_information(Representative, Authority) :-
    authorised_representative(Representative),
    national_competent_authority(Authority),
    high_risk_ai_system(System),
    logs(L).

must_cooperate(Representative, Authority) :-
    authorised_representative(Representative),
    national_competent_authority(Authority),
    high_risk_ai_system(System).

must_comply_with_registration(Representative, System) :-
    authorised_representative(Representative),
    high_risk_ai_system(System),
    registration_obligations(R).

must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    mandate(M),
    must_perform_mandate_tasks(Representative, M).

must_inform_termination(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority),
    mandate(M),
    must_terminate_mandate(Representative, _Provider).

provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandate_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_22').

references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
