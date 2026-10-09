% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7be7f39e9e146093e546e56cc3c5b9d83a19ae10d5f6e0a7af55a2d9fe69cd74
% cached     : False
% title      : Technical documentation
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_11').
:- pred smes/1, gloss('small or micro enterprise'), source('celex:32024R1689/oj#art_11').
:- pred related_to_product_covered_by_harmonisation_legislation/1, gloss('system related to a product covered by Union harmonisation legislation'), source('celex:32024R1689/oj#art_11').

must_draw_up_technical_documentation(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').

must_keep_up_to_date(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_11').

required_technical_documentation(System) :-
    high_risk_ai_system(System).

provenance(required_technical_documentation/1, 'celex:32024R1689/oj#art_11').

must_establish_simplified_technical_documentation_form(commission, simplified_technical_documentation_form).

provenance(must_establish_simplified_technical_documentation_form/2, 'celex:32024R1689/oj#art_11').

must_use_simplified_form(SME, System) :-
    provider(SME),
    smes(SME),
    high_risk_ai_system(System).

provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').

must_accept_form(NB, simplified_technical_documentation_form) :-
    notified_body(NB).

provenance(must_accept_form/2, 'celex:32024R1689/oj#art_11').

must_draw_up_single_technical_documentation(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    related_to_product_covered_by_harmonisation_legislation(System),
    (placing_on_market(System) ; putting_into_service(System)).

provenance(must_draw_up_single_technical_documentation/2, 'celex:32024R1689/oj#art_11').

must_adopt_delegated_acts(commission, delegated_acts).

provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
