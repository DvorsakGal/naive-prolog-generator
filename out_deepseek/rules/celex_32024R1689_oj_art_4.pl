% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 96fbc7c3f144292032eda4cd87ea213f92563f588b25d71eef1ce4914446a86a
% cached     : False
% title      : AI literacy
:- pred must_ensure_ai_literacy/2, gloss('entity must ensure sufficient AI literacy of relevant persons'), source('celex:32024R1689/oj#art_4').

must_ensure_ai_literacy(Entity, ai_literacy(Staff)) :-
    ( provider(Entity) ; deployer(Entity) ),
    staff_or_other_person_dealing_with_ai(Entity, Staff).

staff_or_other_person_dealing_with_ai(Entity, Person) :-
    staff_of(Entity, Person).
staff_or_other_person_dealing_with_ai(Entity, Person) :-
    other_person_dealing_with_operation_and_use_on_behalf(Entity, Person).

% Contextual factors to be taken into account (informational, not operationalised as constraints)
:- pred contextual_factors_for_ai_literacy/1, gloss('factors to consider when ensuring AI literacy'), source('celex:32024R1689/oj#art_4').
contextual_factors_for_ai_literacy(factors(technical_knowledge, experience, education, training, context_of_use, persons_or_groups_affected)).

provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(staff_or_other_person_dealing_with_ai/2, 'celex:32024R1689/oj#art_4').
provenance(contextual_factors_for_ai_literacy/1, 'celex:32024R1689/oj#art_4').
