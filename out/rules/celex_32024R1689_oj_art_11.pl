% unit       : celex:32024R1689/oj#art_11
% title      : Technical documentation
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : gpt-oss:120b-cloud
% prompt sha : eb209e2f483f95750ea32aa4e9a6d19764bbfd958a2034a15d80f093385ae56c
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('art_11').
:- pred must_draw_up_technical_documentation/2, gloss('obligation to prepare technical documentation before market placement'), source('art_11').
:- pred must_keep_up_to_date_technical_documentation/2, gloss('obligation to keep technical documentation up‑to‑date'), source('art_11').
:- pred must_provide_information/3, gloss('obligation to supply information to a competent authority or notified body'), source('art_11').
:- pred required_technical_documentation_contains_minimum_elements/1, gloss('technical documentation must include the minimum elements set out in annex 4'), source('art_11').
:- pred must_establish_simplified_technical_documentation_form/1, gloss('Commission must create a simplified form for SMEs'), source('art_11').
:- pred smes/1, gloss('small or micro‑enterprise'), source('art_11').
:- pred must_use_simplified_form/2, gloss('SME that opts for simplification must use the simplified form'), source('art_11').

must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).

must_keep_up_to_date_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).

must_provide_information(Provider, national_competent_authority, S) :-
    provider(Provider),
    high_risk_ai_system(S).

must_provide_information(Provider, notified_body, S) :-
    provider(Provider),
    high_risk_ai_system(S).

required_technical_documentation_contains_minimum_elements(S) :-
    high_risk_ai_system(S).

must_establish_simplified_technical_documentation_form(commission).

must_use_simplified_form(SME, S) :-
    smes(SME),
    high_risk_ai_system(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_up_to_date_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_provide_information/3, 'celex:32024R1689/oj#art_11').
provenance(required_technical_documentation_contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(must_establish_simplified_technical_documentation_form/1, 'celex:32024R1689/oj#art_11').
provenance(smes/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
