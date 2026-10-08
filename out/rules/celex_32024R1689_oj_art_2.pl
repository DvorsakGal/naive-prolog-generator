% unit       : celex:32024R1689/oj#art_2
% title      : Scope
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : gpt-oss:120b-cloud
% prompt sha : da43e590bfe73ef1202ec02dbc09d5978938501e46ca4623410cbf87eeae8b54
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_application/1, gloss('entity to which the regulation applies'), source('celex:32024R1689/oj#art_2').
:- pred exempt_ai_system/1, gloss('AI system excluded from the regulation'), source('celex:32024R1689/oj#art_2').
:- pred affected_person/1, gloss('person affected by the AI system'), source('celex:32024R1689/oj#art_2').

required_application(Entity) :-
    provider(Entity).

required_application(Entity) :-
    deployer(Entity).

required_application(Entity) :-
    importer(Entity).

required_application(Entity) :-
    distributor(Entity).

required_application(Entity) :-
    product_manufacturer(Entity).

required_application(Entity) :-
    authorised_representative(Entity).

required_application(Person) :-
    affected_person(Person).

exempt_ai_system(System) :-
    military_purpose(System).

exempt_ai_system(System) :-
    scientific_research_purpose(System).

exempt_ai_system(System) :-
    open_source(System),
    \+ (placing_on_market(System) ; putting_into_service(System)).

provenance(required_application/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person/1, 'celex:32024R1689/oj#art_2').

references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#anx_1/sec_2').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_102').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_104').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_105').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_106').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_107').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_108').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_109').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_112').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_2/par_1').
references('celex:32024R1689/oj#art_2', 'celex:32022R2065/oj#chp_2').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_2', 'celex:32002L0058/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').
