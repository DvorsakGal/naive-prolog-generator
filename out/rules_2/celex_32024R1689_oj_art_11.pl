% unit       : celex:32024R1689/oj#art_11
% title      : Technical documentation
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : gpt-oss:120b-cloud
% prompt sha : 0c48c5c287a88a4d68926a6d3a03421a199f0482ad48932ed76c365c8f1b501a
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred technical_documentation/1, gloss('technical documentation of an AI system'), source('celex:32024R1689/oj#art_11').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_11').
:- pred must_draw_up_technical_documentation/2, gloss('obligation to draw up technical documentation'), source('celex:32024R1689/oj#art_11').
:- pred must_keep_technical_documentation_up_to_date/2, gloss('obligation to keep technical documentation up to date'), source('celex:32024R1689/oj#art_11').
:- pred required_technical_documentation_contains_minimum_elements/1, gloss('technical documentation must contain the minimum elements'), source('celex:32024R1689/oj#art_11').
:- pred small_and_microenterprise/1, gloss('small or micro enterprise'), source('celex:32024R1689/oj#art_11').
:- pred simplified_technical_documentation_form/1, gloss('simplified form for technical documentation'), source('celex:32024R1689/oj#art_11').
:- pred permitted_simplified_technical_documentation/2, gloss('permission for SME to use simplified technical documentation'), source('celex:32024R1689/oj#art_11').
:- pred must_use_simplified_form/2, gloss('obligation to use the simplified form when SME opts for it'), source('celex:32024R1689/oj#art_11').
:- pred must_accept_form/2, gloss('obligation of notified body to accept the simplified form'), source('celex:32024R1689/oj#art_11').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_11').
:- pred permitted_adopt_delegated_act/1, gloss('permission for Commission to adopt delegated acts'), source('celex:32024R1689/oj#art_11').

must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S).

must_keep_technical_documentation_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S).

required_technical_documentation_contains_minimum_elements(S) :-
    high_risk_ai_system(S),
    technical_documentation(S).

permitted_simplified_technical_documentation(SME, S) :-
    provider(SME),
    small_and_microenterprise(SME),
    high_risk_ai_system(S),
    technical_documentation(S).

must_use_simplified_form(SME, S) :-
    provider(SME),
    small_and_microenterprise(SME),
    high_risk_ai_system(S),
    technical_documentation(S).

must_accept_form(NotifiedBody, Form) :-
    notified_body(NotifiedBody),
    simplified_technical_documentation_form(Form).

commission(eu_commission).

permitted_adopt_delegated_act(Commission) :-
    commission(Commission).

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(required_technical_documentation_contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_simplified_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept_form/2, 'celex:32024R1689/oj#art_11').
provenance(commission/1, 'celex:32024R1689/oj#art_11').
provenance(permitted_adopt_delegated_act/1, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
