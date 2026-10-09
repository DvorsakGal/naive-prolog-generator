% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 1ebafe93b5b87aeadca4b3ddeb77aadcc529e6daf554a70f10cd602490789f2c
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred must_encourage_and_facilitate/2, gloss('AI Office and Member States shall encourage and facilitate the drawing up of codes of conduct for AI systems other than high‑risk AI systems'), source('celex:32024R1689/oj#art_95').
:- pred must_facilitate/2, gloss('AI Office and Member States shall facilitate the drawing up of codes of conduct concerning the voluntary application of specific requirements to all AI systems'), source('celex:32024R1689/oj#art_95').
:- pred must_take_into_account/2, gloss('AI Office and Member States shall take into account the specific interests and needs of SMEs when encouraging and facilitating the drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred permitted_drawing_up_codes_of_conduct_by/1, gloss('Entities that may draw up codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred codes_of_conduct/1, gloss('code of conduct for AI systems'), source('celex:32024R1689/oj#art_95').
:- pred organisation/1, gloss('organisation representing providers or deployers'), source('celex:32024R1689/oj#art_95').

must_encourage_and_facilitate(Actor, codes_of_conduct(S)) :-
    (ai_office(Actor) ; member_state(Actor)),
    ai_system(S),
    \+ high_risk_ai_system(S).

must_facilitate(Actor, codes_of_conduct(S)) :-
    (ai_office(Actor) ; member_state(Actor)),
    ai_system(S).

must_take_into_account(Actor, smes) :-
    (ai_office(Actor) ; member_state(Actor)).

permitted_drawing_up_codes_of_conduct_by(Entity) :-
    provider(Entity).

permitted_drawing_up_codes_of_conduct_by(Entity) :-
    deployer(Entity).

permitted_drawing_up_codes_of_conduct_by(Entity) :-
    organisation(Entity).

provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_95').
provenance(permitted_drawing_up_codes_of_conduct_by/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct/1, 'celex:32024R1689/oj#art_95').
provenance(organisation/1, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
