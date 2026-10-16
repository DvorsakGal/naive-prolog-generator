% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 50f2e0c325ba7250dfd44fdb736709bd42040b8aa0ff271f341d8d8d99033279
% cached     : False
% title      : AI literacy
:- pred must_ensure_ai_literacy/2, gloss('provider or deployer must ensure sufficient AI literacy of staff and persons dealing with operation and use'), source('celex:32024R1689/oj#art_4').

must_ensure_ai_literacy(P, S) :-
    provider(P),
    ai_system(S),
    ai_literacy_measure(P, S).

must_ensure_ai_literacy(D, S) :-
    deployer(D),
    ai_system(S),
    ai_literacy_measure(D, S).

:- pred ai_literacy_measure/2, gloss('measures taken to ensure sufficient AI literacy considering technical knowledge, experience, education, training, context of use, and affected persons'), source('celex:32024R1689/oj#art_4').

ai_literacy_measure(A, S) :-
    staff_or_persons_dealing_with_operation_and_use(A, S, Persons),
    technical_knowledge(Persons),
    experience(Persons),
    education(Persons),
    training(Persons),
    context_of_use(S, Context),
    persons_or_groups_affected(S, Affected),
    sufficient_level_achieved(Persons, Context, Affected).

:- pred staff_or_persons_dealing_with_operation_and_use/3, gloss('staff and other persons dealing with operation and use of AI system on behalf of actor'), source('celex:32024R1689/oj#art_4').

:- pred technical_knowledge/1, gloss('persons have technical knowledge'), source('celex:32024R1689/oj#art_4').

:- pred experience/1, gloss('persons have experience'), source('celex:32024R1689/oj#art_4').

:- pred education/1, gloss('persons have education'), source('celex:32024R1689/oj#art_4').

:- pred training/1, gloss('persons have training'), source('celex:32024R1689/oj#art_4').

:- pred context_of_use/2, gloss('context in which AI system is to be used'), source('celex:32024R1689/oj#art_4').

:- pred persons_or_groups_affected/2, gloss('persons or groups of persons on whom the AI system is to be used'), source('celex:32024R1689/oj#art_4').

:- pred sufficient_level_achieved/3, gloss('sufficient level of AI literacy achieved considering persons, context, and affected persons'), source('celex:32024R1689/oj#art_4').

provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(ai_literacy_measure/2, 'celex:32024R1689/oj#art_4').
provenance(staff_or_persons_dealing_with_operation_and_use/3, 'celex:32024R1689/oj#art_4').
provenance(technical_knowledge/1, 'celex:32024R1689/oj#art_4').
provenance(experience/1, 'celex:32024R1689/oj#art_4').
provenance(education/1, 'celex:32024R1689/oj#art_4').
provenance(training/1, 'celex:32024R1689/oj#art_4').
provenance(context_of_use/2, 'celex:32024R1689/oj#art_4').
provenance(persons_or_groups_affected/2, 'celex:32024R1689/oj#art_4').
provenance(sufficient_level_achieved/3, 'celex:32024R1689/oj#art_4').
