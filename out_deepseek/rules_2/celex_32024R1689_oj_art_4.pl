% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 7fb38a4ccb2bdf66d2f6b0667504b91a04065e74f7209319ba6a7de35ec6ec86
% cached     : False
% title      : AI literacy
:- pred must_ensure_ai_literacy/2, gloss('entity must ensure sufficient AI literacy of staff and other persons'), source('celex:32024R1689/oj#art_4').

must_ensure_ai_literacy(Entity, Staff) :-
    ( provider(Entity) ; deployer(Entity) ),
    ( staff_of(Entity, Staff) ; dealing_on_behalf_of(Entity, Staff) ),
    dealing_with_operation_or_use(Staff).

staff_of(Entity, Person) :-
    ( provider(Entity) ; deployer(Entity) ),
    Person = staff(Entity).

dealing_on_behalf_of(Entity, Person) :-
    ( provider(Entity) ; deployer(Entity) ),
    Person = other_person(Entity).

dealing_with_operation_or_use(Person) :-
    Person = staff(_) ; Person = other_person(_).

provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(staff_of/2, 'celex:32024R1689/oj#art_4').
provenance(dealing_on_behalf_of/2, 'celex:32024R1689/oj#art_4').
provenance(dealing_with_operation_or_use/1, 'celex:32024R1689/oj#art_4').
