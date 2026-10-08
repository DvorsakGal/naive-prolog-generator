% unit       : celex:32024R1689/oj#art_2
% title      : Scope
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : gpt-oss:120b-cloud
% prompt sha : 1a64cb5313d015bd99697b45d2a3964a9c987a155b8990a5d96ea81fbf6f854b
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred subject_to_regulation/1, gloss('entity to which the regulation applies'), source('celex:32024R1689/oj#art_2').
:- pred exempt_from_regulation/1, gloss('entity excluded from the regulation'), source('celex:32024R1689/oj#art_2').
:- pred affected_person/1, gloss('natural person affected by AI systems'), source('celex:32024R1689/oj#art_2').
:- pred union_resident/1, gloss('person located in the Union'), source('celex:32024R1689/oj#art_2').
:- pred output_used_in_union/1, gloss('output of an AI system used in the Union'), source('celex:32024R1689/oj#art_2').
:- pred military_or_defence_or_national_security_use/1, gloss('AI system used exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred used/1, gloss('AI system used (with or without modification)'), source('celex:32024R1689/oj#art_2').
:- pred public_authority_third_country/1, gloss('public authority of a third country'), source('celex:32024R1689/oj#art_2').
:- pred international_organisation/1, gloss('international organisation falling within the scope of the regulation'), source('celex:32024R1689/oj#art_2').
:- pred uses_ai_system_in_cooperation/1, gloss('entity uses AI systems in international cooperation with the Union'), source('celex:32024R1689/oj#art_2').
:- pred provides_adequate_safeguards/1, gloss('entity provides adequate safeguards for fundamental rights'), source('celex:32024R1689/oj#art_2').
:- pred developed_for_scientific_research/1, gloss('AI system or model developed for scientific research and development'), source('celex:32024R1689/oj#art_2').
:- pred open_source/1, gloss('AI system released under a free and open‑source licence'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_2').
:- pred falls_under_art_5/1, gloss('AI system falls under Article 5'), source('celex:32024R1689/oj#art_2').
:- pred falls_under_art_50/1, gloss('AI system falls under Article 50'), source('celex:32024R1689/oj#art_2').
:- pred natural_person/1, gloss('natural person'), source('celex:32024R1689/oj#art_2').
:- pred personal_non_professional_use/1, gloss('use of an AI system in a purely personal non‑professional activity'), source('celex:32024R1689/oj#art_2').

subject_to_regulation(P) :-
    provider(P),
    operator(P),
    (placing_on_market(S); putting_into_service(S)),
    ai_system(S).

subject_to_regulation(P) :-
    provider(P),
    operator(P),
    placing_on_market(M),
    general_purpose_ai_model(M).

subject_to_regulation(D) :-
    deployer(D),
    operator(D).

subject_to_regulation(P) :-
    provider(P),
    operator(P),
    ai_system(S),
    output_used_in_union(S).

subject_to_regulation(D) :-
    deployer(D),
    operator(D),
    ai_system(S),
    output_used_in_union(S).

subject_to_regulation(I) :-
    importer(I),
    operator(I).

subject_to_regulation(Dist) :-
    distributor(Dist),
    operator(Dist).

subject_to_regulation(PM) :-
    product_manufacturer(PM),
    operator(PM),
    (placing_on_market(S); putting_into_service(S)),
    ai_system(S).

subject_to_regulation(AR) :-
    authorised_representative(AR),
    operator(AR).

subject_to_regulation(AP) :-
    affected_person(AP),
    union_resident(AP).

exempt_from_regulation(S) :-
    ai_system(S),
    (placing_on_market(S); putting_into_service(S); used(S)),
    military_or_defence_or_national_security_use(S).

exempt_from_regulation(S) :-
    ai_system(S),
    \+ (placing_on_market(S); putting_into_service(S)),
    output_used_in_union(S),
    military_or_defence_or_national_security_use(S).

exempt_from_regulation(E) :-
    public_authority_third_country(E),
    uses_ai_system_in_cooperation(E),
    provides_adequate_safeguards(E).

exempt_from_regulation(E) :-
    international_organisation(E),
    uses_ai_system_in_cooperation(E),
    provides_adequate_safeguards(E).

exempt_from_regulation(S) :-
    ai_system(S),
    developed_for_scientific_research(S),
    putting_into_service(S).

exempt_from_regulation(M) :-
    general_purpose_ai_model(M),
    developed_for_scientific_research(M),
    putting_into_service(M).

exempt_from_regulation(D) :-
    deployer(D),
    natural_person(D),
    personal_non_professional_use(D).

exempt_from_regulation(S) :-
    ai_system(S),
    open_source(S),
    \+ (high_risk_ai_system(S), (placing_on_market(S); putting_into_service(S))),
    \+ falls_under_art_5(S),
    \+ falls_under_art_50(S).

provenance(subject_to_regulation/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_from_regulation/1, 'celex:32024R1689/oj#art_2').

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
references('celex:32024R1689/oj#art_2', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').
