% unit       : celex:32024R1689/oj#art_22
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : a0048a49c873508e664e12e5d148f36be0738735bfd51f0b6068bd4be220b67c
% cached     : False
% title      : Authorised representatives of providers of high-risk AI systems
:- pred must_appoint_authorised_representative/2, gloss('provider must appoint authorised representative established in the Union'), source('celex:32024R1689/oj#art_22').
:- pred must_enable_authorised_representative/2, gloss('provider must enable authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_22').
:- pred must_perform_mandated_tasks/1, gloss('authorised representative must perform tasks specified in the mandate'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide mandate copy to market surveillance authorities on request'), source('celex:32024R1689/oj#art_22').
:- pred must_verify_conformity_documentation/1, gloss('authorised representative must verify EU declaration of conformity and technical documentation drawn up and conformity assessment carried out'), source('celex:32024R1689/oj#art_22').
:- pred must_keep_documentation_available/1, gloss('authorised representative must keep documentation at disposal of competent authorities for 10 years'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_information_on_request/1, gloss('authorised representative must provide information and documentation to competent authority on reasoned request'), source('celex:32024R1689/oj#art_22').
:- pred must_cooperate_with_competent_authorities/1, gloss('authorised representative must cooperate with competent authorities on reasoned request'), source('celex:32024R1689/oj#art_22').
:- pred must_terminate_mandate/2, gloss('authorised representative must terminate mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_22').
:- pred must_inform_termination/2, gloss('authorised representative must immediately inform market surveillance authority and notified body of mandate termination'), source('celex:32024R1689/oj#art_22').

must_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    established_in_third_country(Provider),
    authorised_representative(Representative),
    established_in_union(Representative),
    high_risk_ai_system(S),
    placing_on_market(S),
    \+ made_available_on_union_market(S, _).

must_enable_authorised_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    must_appoint_authorised_representative(Provider, Representative).

must_perform_mandated_tasks(Representative) :-
    authorised_representative(Representative).

must_provide_mandate_copy(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).

must_verify_conformity_documentation(Representative) :-
    authorised_representative(Representative).

must_keep_documentation_available(Representative) :-
    authorised_representative(Representative).

must_provide_information_on_request(Representative) :-
    authorised_representative(Representative).

must_cooperate_with_competent_authorities(Representative) :-
    authorised_representative(Representative).

must_comply_with_registration(Representative, registration_obligations) :-
    authorised_representative(Representative).

must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    acts_contrary_to_obligations(Provider).

must_inform_termination(Representative, termination(Provider, Reason)) :-
    authorised_representative(Representative),
    provider(Provider),
    must_terminate_mandate(Representative, Provider),
    market_surveillance_authority(MSA),
    notified_body(NB).

% Supporting predicates
:- pred established_in_union/1, gloss('established in the Union'), source('celex:32024R1689/oj#art_22').
:- pred acts_contrary_to_obligations/1, gloss('provider acts contrary to obligations under this Regulation'), source('celex:32024R1689/oj#art_22').

provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandated_tasks/1, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity_documentation/1, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documentation_available/1, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information_on_request/1, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate_with_competent_authorities/1, 'celex:32024R1689/oj#art_22').
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
