% unit       : celex:32024R1689/oj#art_95
% context    : CHAPTER X CODES OF CONDUCT AND GUIDELINES
% slice sha  : 93664ce1469479db609cdcd1b73387998fab7c724e8b1ed5fc587674ec5b5b2d
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 12b455bd1225bcdb830a1c9a786da34560c16d6498485d99027d9a35e160fae9
% cached     : False
% title      : Codes of conduct for voluntary application of specific requirements
:- pred must_encourage_facilitate_codes_of_conduct/2, gloss('entity must encourage and facilitate drawing up of codes of conduct'), source('celex:32024R1689/oj#art_95').
:- pred voluntary_application_of_requirements/1, gloss('voluntary application of some or all requirements of Chapter III Section 2'), source('celex:32024R1689/oj#art_95').
:- pred voluntary_application_of_specific_requirements/1, gloss('voluntary application of specific requirements to all AI systems'), source('celex:32024R1689/oj#art_95').
:- pred code_of_conduct_covers/2, gloss('code of conduct covers one or more AI systems'), source('celex:32024R1689/oj#art_95').
:- pred must_take_into_account_sme_interests/2, gloss('entity must take into account specific interests and needs of SMEs'), source('celex:32024R1689/oj#art_95').

must_encourage_facilitate_codes_of_conduct(ai_office, voluntary_application_of_requirements) :-
    ai_office(_).

must_encourage_facilitate_codes_of_conduct(MemberState, voluntary_application_of_requirements) :-
    member_state(MemberState).

must_encourage_facilitate_codes_of_conduct(ai_office, voluntary_application_of_specific_requirements) :-
    ai_office(_).

must_encourage_facilitate_codes_of_conduct(MemberState, voluntary_application_of_specific_requirements) :-
    member_state(MemberState).

voluntary_application_of_requirements(S) :-
    ai_system(S),
    \+ high_risk_ai_system(S).

voluntary_application_of_specific_requirements(S) :-
    ai_system(S).

code_of_conduct_covers(Code, S) :-
    ai_system(S).

must_take_into_account_sme_interests(ai_office, sme_interests) :-
    ai_office(_).

must_take_into_account_sme_interests(MemberState, sme_interests) :-
    member_state(MemberState).

provenance(must_encourage_facilitate_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_specific_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct_covers/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_95').

references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').
