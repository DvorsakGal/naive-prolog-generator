% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : e8bdd218c2cffd30f5159179b0850076d4bcaeecf70b5e35d6e321355cba809c
% cached     : False
% title      : Scope
:- pred affected_person/1, gloss('natural person affected by an AI system'), source('celex:32024R1689/oj#art_2').

provider_applies(P) :-
    provider(P),
    (   placing_on_market(P)
    ;   putting_into_service(P)
    ;   (   general_purpose_ai_model_provider(P),
        placing_on_market(P)
        )
    ).

provenance(provider_applies/1, 'celex:32024R1689/oj#art_2').

deployer_applies(D) :-
    deployer(D).

provenance(deployer_applies/1, 'celex:32024R1689/oj#art_2').

importer_applies(I) :-
    importer(I).

provenance(importer_applies/1, 'celex:32024R1689/oj#art_2').

distributor_applies(Dist) :-
    distributor(Dist).

provenance(distributor_applies/1, 'celex:32024R1689/oj#art_2').

product_manufacturer_applies(M) :-
    product_manufacturer(M),
    (   placing_on_market(M)
    ;   putting_into_service(M)
    ).

provenance(product_manufacturer_applies/1, 'celex:32024R1689/oj#art_2').

authorised_representative_applies(AR) :-
    authorised_representative(AR).

provenance(authorised_representative_applies/1, 'celex:32024R1689/oj#art_2').

affected_person_applies(AP) :-
    affected_person(AP).

provenance(affected_person_applies/1, 'celex:32024R1689/oj#art_2').

% References
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
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').
