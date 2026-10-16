% unit       : celex:32024R1689/oj#art_22
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 1ea23405d06153b7943cc247047c51754ff40c99eac2eabcc7f0e9b3a041b07d
% cached     : False
% title      : Authorised representatives of providers of high-risk AI systems
:- pred established_in_third_country/1, gloss('provider established in a third country'), source('celex:32024R1689/oj#art_22').
:- pred must_appoint_authorised_representative/2, gloss('provider must appoint an authorised representative by written mandate'), source('celex:32024R1689/oj#art_22').
:- pred must_enable_representative_tasks/2, gloss('provider must enable authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_mandate_copy/2, gloss('authorised representative must provide mandate copy to market surveillance authorities upon request'), source('celex:32024R1689/oj#art_22').
:- pred must_verify_conformity_documentation/2, gloss('authorised representative must verify EU declaration of conformity and technical documentation'), source('celex:32024R1689/oj#art_22').
:- pred must_keep_documents_for_period/2, gloss('authorised representative must keep specified documents at disposal of authorities for a period'), source('celex:32024R1689/oj#art_22').
:- pred must_provide_conformity_information_on_request/2, gloss('authorised representative must provide information and documentation to demonstrate conformity upon reasoned request'), source('celex:32024R1689/oj#art_22').
:- pred must_cooperate_on_risk_mitigation/2, gloss('authorised representative must cooperate with competent authorities on risk mitigation actions'), source('celex:32024R1689/oj#art_22').
:- pred must_terminate_mandate_if_non_compliant/2, gloss('authorised representative must terminate mandate if provider acts contrary to obligations'), source('celex:32024R1689/oj#art_22').

established_in_third_country(P) :-
    provider(P).

must_appoint_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    established_in_third_country(P),
    before_placing_on_market_or_service(S).

must_enable_representative_tasks(P, R) :-
    provider(P),
    authorised_representative(R),
    must_appoint_authorised_representative(P, _S).

must_provide_mandate_copy(R, A) :-
    authorised_representative(R),
    market_surveillance_authority(A).

must_verify_conformity_documentation(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S).

must_keep_documents_for_period(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S).

must_provide_conformity_information_on_request(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S),
    requirements_of_chapter_3_section_2(S).

must_cooperate_on_risk_mitigation(R, S) :-
    authorised_representative(R),
    high_risk_ai_system(S).

must_terminate_mandate_if_non_compliant(R, P) :-
    authorised_representative(R),
    provider(P).

provenance(established_in_third_country/1, 'celex:32024R1689/oj#art_22').
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_representative_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity_documentation/2, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documents_for_period/2, 'celex:32024R1689/oj#art_22').
provenance(must_provide_conformity_information_on_request/2, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate_on_risk_mitigation/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate_if_non_compliant/2, 'celex:32024R1689/oj#art_22').

references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
