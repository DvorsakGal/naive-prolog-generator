% unit       : celex:32024R1689/oj#art_95
% title      : Codes of conduct for voluntary application of specific requirements
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : gpt-oss:120b-cloud
% prompt sha : a3aff44b25b5cd4a9a5bb9f2b64a758a888c5a7fdd55d27aa23470124e6acb2b
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred member_state/1, gloss('state of a Member State of the Union'), source('celex:32024R1689/oj#art_95').
:- pred code_of_conduct/1, gloss('set of rules voluntarily adopted for AI systems'), source('celex:32024R1689/oj#art_95').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk under the Regulation'), source('celex:32024R1689/oj#art_95').

must_encourage_and_facilitate(Actor, draw_up_code_of_conduct(Code)) :-
    (ai_office(Actor) ; member_state(Actor)),
    (ai_office(Actor) ; member_state(Actor)),
    code_of_conduct(Code).

must_facilitate(Actor, draw_up_code_of_conduct(Code)) :-
    (ai_office(Actor) ; member_state(Actor)),
    (ai_office(Actor) ; member_state(Actor)),
    code_of_conduct(Code).

permitted_drawing_up_codes_of_conduct(Actor) :-
    provider(Actor),
    provider(Actor).

permitted_drawing_up_codes_of_conduct(Actor) :-
    deployer(Actor),
    deployer(Actor).

must_consider(Actor, smes_interests) :-
    (ai_office(Actor) ; member_state(Actor)),
    (ai_office(Actor) ; member_state(Actor)).

provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_drawing_up_codes_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(must_consider/2, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
