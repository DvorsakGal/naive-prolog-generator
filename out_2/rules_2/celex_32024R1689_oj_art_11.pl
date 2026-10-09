% unit       : celex:32024R1689/oj#art_11
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1a09652a057f0a8e7b3be5bd2965cb3cad57a1fa9a32ab0dcc84ef71f1110302
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : a7f1f04d0a8f78dab4c836d29410115df247834f5f29767295d49d1351472611
% cached     : False
% title      : Technical documentation
:- pred must_draw_up/2, gloss('obligation to draw up technical documentation'), source('celex:32024R1689/oj#art_11').
:- pred must_keep_up_to_date/2, gloss('obligation to keep technical documentation up to date'), source('celex:32024R1689/oj#art_11').
:- pred must_establish/2, gloss('obligation to establish a simplified technical documentation form'), source('celex:32024R1689/oj#art_11').
:- pred must_accept/2, gloss('obligation for notified bodies to accept the simplified form'), source('celex:32024R1689/oj#art_11').

must_draw_up(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).

must_keep_up_to_date(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

must_establish(commission, simplified_technical_documentation_form).

must_accept(NotifiedBody, simplified_technical_documentation_form) :-
    notified_body(NotifiedBody).

provenance(must_draw_up/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(must_establish/2, 'celex:32024R1689/oj#art_11').
provenance(must_accept/2, 'celex:32024R1689/oj#art_11').

references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').
