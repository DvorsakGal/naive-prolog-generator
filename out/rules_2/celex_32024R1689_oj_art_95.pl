% unit       : celex:32024R1689/oj#art_95
% title      : Codes of conduct for voluntary application of specific requirements
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : gpt-oss:120b-cloud
% prompt sha : 3fad2dff20f12f63fb47b5f40008e31f152348ad8283ec5423ad04bedcb6efec
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_95').
:- pred smes/1, gloss('Small and medium‑sized enterprises'), source('celex:32024R1689/oj#art_95').
:- pred code_of_conduct/1, gloss('Voluntary code of conduct for AI systems'), source('celex:32024R1689/oj#art_95').
:- pred other_than_high_risk_ai_system/1, gloss('AI system that is not high‑risk'), source('celex:32024R1689/oj#art_95').
:- pred organisation/1, gloss('Organisation representing providers or deployers'), source('celex:32024R1689/oj#art_95').

:- pred must_encourage/2, gloss('Obligation to encourage the drawing up of a code of conduct'), source('celex:32024R1689/oj#art_95').
:- pred must_facilitate/2, gloss('Obligation to facilitate the drawing up of a code of conduct'), source('celex:32024R1689/oj#art_95').
:- pred must_take_into_account/2, gloss('Obligation to take into account the interests of SMEs'), source('celex:32024R1689/oj#art_95').

:- pred permitted_drawing_up_codes_of_conduct_by/1, gloss('Permission to draw up a code of conduct'), source('celex:32024R1689/oj#art_95').

must_encourage(ai_office, drawing_up_codes_of_conduct(C)) :-
    code_of_conduct(C),
    other_than_high_risk_ai_system(C).

must_encourage(MS, drawing_up_codes_of_conduct(C)) :-
    member_state(MS),
    code_of_conduct(C),
    other_than_high_risk_ai_system(C).

must_facilitate(ai_office, drawing_up_codes_of_conduct(C)) :-
    code_of_conduct(C),
    other_than_high_risk_ai_system(C).

must_facilitate(MS, drawing_up_codes_of_conduct(C)) :-
    member_state(MS),
    code_of_conduct(C),
    other_than_high_risk_ai_system(C).

must_take_into_account(ai_office, smes).

must_take_into_account(MS, smes) :-
    member_state(MS).

permitted_drawing_up_codes_of_conduct_by(P) :-
    provider(P).

permitted_drawing_up_codes_of_conduct_by(D) :-
    deployer(D).

permitted_drawing_up_codes_of_conduct_by(O) :-
    organisation(O).

provenance(must_encourage/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_drawing_up_codes_of_conduct_by/1, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
