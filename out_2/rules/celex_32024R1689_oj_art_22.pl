% unit       : celex:32024R1689/oj#art_22
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6f1cc3f3475ca6a10d1045034ce0798f864ee3301f80ad7b13390f6632dd602c
% cached     : False
% title      : Authorised representatives of providers of high-risk AI systems
:- pred third_country_established/1, gloss('provider established in third countries'), source('celex:32024R1689/oj#art_22').
:- pred union_established/1, gloss('authorised representative established in the Union'), source('celex:32024R1689/oj#art_22').
:- pred mandate_received/2, gloss('mandate received from provider by authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred provider_contrary_obligations/1, gloss('provider acting contrary to its obligations'), source('celex:32024R1689/oj#art_22').

must_appoint(Provider, Representative) :-
    provider(Provider),
    third_country_established(Provider),
    authorised_representative(Representative),
    union_established(Representative).

must_enable(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    mandate_received(Provider, Representative).

must_perform_task(Representative, verify_declaration_and_documentation) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).

must_perform_task(Representative, keep_documents_for_10_years) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).

must_perform_task(Representative, provide_information_on_request) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).

must_perform_task(Representative, cooperate_with_authorities) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).

must_perform_task(Representative, comply_with_registration_obligations) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).

must_provide_copy_of_mandate(Representative) :-
    authorised_representative(Representative),
    mandate_received(_Provider, Representative).

must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    provider_contrary_obligations(Provider).

must_inform(Representative, termination_notice(market_surveillance_authority)) :-
    must_terminate_mandate(Representative, _Provider).

must_inform(Representative, termination_notice(notified_body)) :-
    must_terminate_mandate(Representative, _Provider),
    notified_body(_Body).

provenance(must_appoint/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_task/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_copy_of_mandate/1, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
provenance(must_inform/2, 'celex:32024R1689/oj#art_22').

references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
