% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dcc1fbeb368620dbb007bb90e5867337fde0e76a622837ad76240cb3b564aaf9
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred must_encourage_and_facilitate/2, gloss('entity obliged to encourage and facilitate drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred must_facilitate/2, gloss('entity obliged to facilitate drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred code_of_conduct_applies/1, gloss('code of conduct drawn up under Article 95'), source('celex:32024R1689/oj#art_95').
:- pred voluntary_application_code/1, gloss('code of conduct for voluntary application of requirements'), source('celex:32024R1689/oj#art_95').
:- pred specific_requirements_code/1, gloss('code of conduct concerning voluntary application of specific requirements'), source('celex:32024R1689/oj#art_95').
:- pred drawn_up_by/2, gloss('code of conduct drawn up by an entity'), source('celex:32024R1689/oj#art_95').
:- pred covers/2, gloss('code of conduct covers an AI system'), source('celex:32024R1689/oj#art_95').
:- pred sme/1, gloss('small or medium-sized enterprise including start-ups'), source('celex:32024R1689/oj#art_95').

must_encourage_and_facilitate(Entity, voluntary_application_code(Code)) :-
    (   ai_office(Entity)
    ;   member_state(Entity)
    ),
    code_of_conduct_applies(Code),
    voluntary_application_code(Code),
    \+ high_risk_ai_system(System),
    covers(Code, System).

must_facilitate(Entity, specific_requirements_code(Code)) :-
    (   ai_office(Entity)
    ;   member_state(Entity)
    ),
    code_of_conduct_applies(Code),
    specific_requirements_code(Code).

drawn_up_by(Code, Entity) :-
    code_of_conduct_applies(Code),
    (   provider(Entity)
    ;   deployer(Entity)
    ;   representative_organisation(Entity, provider)
    ;   representative_organisation(Entity, deployer)
    ).

covers(Code, System) :-
    code_of_conduct_applies(Code),
    ai_system(System),
    intended_purpose(System, Purpose),
    covers_by_purpose(Code, Purpose).

must_take_into_account_sme_interests(Entity, Code) :-
    (   ai_office(Entity)
    ;   member_state(Entity)
    ),
    code_of_conduct_applies(Code),
    sme(Sme),
    interested_in(Sme, Code).

provenance(must_encourage_and_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_95').
provenance(drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(covers/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
