% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : aaf16bff35e581f4580e5ee19253d5c83042e992768303a52904de5c02e42865
% cached     : False
% title      : Scope
:- pred regulation_applies/1, gloss('entity to which the regulation applies'), source('celex:32024R1689/oj#art_2').
:- pred exempt_ai_system/1, gloss('AI system to which the regulation does not apply'), source('celex:32024R1689/oj#art_2').
:- pred exempt_deployer_obligation/1, gloss('deployer whose obligations are excluded from the regulation'), source('celex:32024R1689/oj#art_2').
:- pred affected_person/1, gloss('person affected by AI systems located in the Union'), source('celex:32024R1689/oj#art_2').
:- pred military_purpose/1, gloss('AI system used exclusively for military, defence or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred scientific_research_development/1, gloss('AI system developed for sole scientific research and development purpose'), source('celex:32024R1689/oj#art_2').
:- pred open_source/1, gloss('AI system released under a free and open‑source licence'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_2').
:- pred falls_under_art_5/1, gloss('AI system falling under article 5'), source('celex:32024R1689/oj#art_2').
:- pred falls_under_art_50/1, gloss('AI system falling under article 50'), source('celex:32024R1689/oj#art_2').
:- pred natural_person/1, gloss('natural person'), source('celex:32024R1689/oj#art_2').
:- pred personal_non_professional_use/1, gloss('use of an AI system in a purely personal non‑professional activity'), source('celex:32024R1689/oj#art_2').

%--- Scope: who the regulation applies to ------------------------------------

regulation_applies(P) :-
    provider(P),
    ( placing_on_market(P) ; putting_into_service(P) ).

regulation_applies(D) :-
    deployer(D).

regulation_applies(P) :-
    provider(P).

regulation_applies(I) :-
    importer(I).

regulation_applies(Dist) :-
    distributor(Dist).

regulation_applies(M) :-
    product_manufacturer(M),
    ( placing_on_market(M) ; putting_into_service(M) ).

regulation_applies(AR) :-
    authorised_representative(AR).

regulation_applies(AP) :-
    affected_person(AP).

%--- Exemptions: where the regulation does NOT apply -------------------------

exempt_ai_system(S) :-
    military_purpose(S).

exempt_ai_system(S) :-
    scientific_research_development(S).

exempt_ai_system(S) :-
    open_source(S),
    \+ ( high_risk_ai_system(S)
        ; falls_under_art_5(S)
        ; falls_under_art_50(S)
        ).

exempt_deployer_obligation(D) :-
    natural_person(D),
    personal_non_professional_use(D).

%--- Provenance --------------------------------------------------------------

provenance(regulation_applies/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_deployer_obligation/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person/1, 'celex:32024R1689/oj#art_2').
provenance(military_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_development/1, 'celex:32024R1689/oj#art_2').
provenance(open_source/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_2').
provenance(falls_under_art_5/1, 'celex:32024R1689/oj#art_2').
provenance(falls_under_art_50/1, 'celex:32024R1689/oj#art_2').
provenance(natural_person/1, 'celex:32024R1689/oj#art_2').
provenance(personal_non_professional_use/1, 'celex:32024R1689/oj#art_2').

%--- References --------------------------------------------------------------

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
