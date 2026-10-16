% unit       : celex:32024R1689/oj#art_2
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 152a6b6b5fb4e34b07c94c46fae34c48df7898ea3310986286acc22a5a526a1b
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ca00f673c7f766492be484b6633e4cd0f777a129cf3f1bd22aee2260fee2b43b
% cached     : False
% title      : Scope
:- pred scope_applies/1, gloss('entity, system, or activity falling within the scope of the AI Act'), source('celex:32024R1689/oj#art_2').
:- pred exempt_scope/1, gloss('matter or entity excluded from the scope of the AI Act'), source('celex:32024R1689/oj#art_2').
:- pred in_union/1, gloss('entity or location established, located, or having effect within the European Union'), source('celex:32024R1689/oj#art_2').
:- pred third_country/1, gloss('entity or location situated outside the European Union'), source('celex:32024R1689/oj#art_2').
:- pred output_used_in_union/1, gloss('output produced by an AI system is used within the Union'), source('celex:32024R1689/oj#art_2').
:- pred affected_person/1, gloss('natural or legal person affected by an AI system'), source('celex:32024R1689/oj#art_2').
:- pred places_on_market/2, gloss('actor places an AI system or model on the market'), source('celex:32024R1689/oj#art_2').
:- pred puts_into_service/2, gloss('actor puts an AI system into service'), source('celex:32024R1689/oj#art_2').
:- pred places_with_own_trademark/2, gloss('product manufacturer places AI system with product under own name or trademark'), source('celex:32024R1689/oj#art_2').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_2').
:- pred annex_i_section_b_product_system/1, gloss('AI system related to products covered by Union harmonisation legislation in Annex I Section B'), source('celex:32024R1689/oj#art_2').
:- pred objective_military_defence_national_security/1, gloss('system or use is exclusively for military, defence, or national security purposes'), source('celex:32024R1689/oj#art_2').
:- pred international_law_enforcement_cooperation/1, gloss('use in framework of international cooperation for law enforcement or judicial cooperation with adequate safeguards'), source('celex:32024R1689/oj#art_2').
:- pred scientific_research_and_development/1, gloss('specifically developed and put into service solely for scientific research and development'), source('celex:32024R1689/oj#art_2').
:- pred pre_market_research_testing_development/1, gloss('research, testing, or development activity prior to placing on market or putting into service other than real-world testing'), source('celex:32024R1689/oj#art_2').
:- pred personal_non_professional_activity/1, gloss('natural person using an AI system purely in personal non-professional activity'), source('celex:32024R1689/oj#art_2').
:- pred open_source_licensed/1, gloss('AI system or model released under free and open-source licence'), source('celex:32024R1689/oj#art_2').
:- pred prohibited_ai_practice/1, gloss('AI practice prohibited under Article 5'), source('celex:32024R1689/oj#art_2').
:- pred transparency_risk_system/1, gloss('AI system subject to transparency obligations under Article 50'), source('celex:32024R1689/oj#art_2').
:- pred limited_scope_high_risk_annex_i/1, gloss('limited articles apply to high-risk systems under Annex I Section B'), source('celex:32024R1689/oj#art_2').

% Paragraph 1(a): Providers placing AI systems or GPAI models on the market / putting into service in the Union
scope_applies(P) :-
    provider(P),
    places_on_market(P, S),
    (ai_system(S) ; general_purpose_ai_model(S)),
    in_union(S).

scope_applies(P) :-
    provider(P),
    puts_into_service(P, S),
    ai_system(S),
    in_union(S).

% Paragraph 1(b): Deployers of AI systems located in the Union
scope_applies(D) :-
    deployer(D),
    in_union(D).

% Paragraph 1(c): Third-country providers and deployers where output is used in the Union
scope_applies(P) :-
    provider(P),
    third_country(P),
    output_used_in_union(P).

scope_applies(D) :-
    deployer(D),
    third_country(D),
    output_used_in_union(D).

% Paragraph 1(d): Importers and distributors
scope_applies(I) :-
    importer(I).

scope_applies(D) :-
    distributor(D).

% Paragraph 1(e): Product manufacturers placing AI system with product under own trademark
scope_applies(M) :-
    product_manufacturer(M),
    places_with_own_trademark(M, _Product).

% Paragraph 1(f): Authorised representatives of non-EU providers
scope_applies(R) :-
    authorised_representative(R).

% Paragraph 1(g): Affected persons located in the Union
scope_applies(P) :-
    affected_person(P),
    in_union(P).

% Paragraph 2: High-risk systems related to Annex I Section B products (limited scope applies)
limited_scope_high_risk_annex_i(S) :-
    high_risk_ai_system(S),
    annex_i_section_b_product_system(S).

% Paragraph 3: Military, defence, national security exclusions
exempt_scope(S) :-
    objective_military_defence_national_security(S).

% Paragraph 4: Third-country public authorities / international organisations in law enforcement cooperation
exempt_scope(E) :-
    international_law_enforcement_cooperation(E).

% Paragraph 6: Scientific research and development exclusion
exempt_scope(S) :-
    scientific_research_and_development(S).

% Paragraph 8: Pre-market R&D and testing (not in real world conditions)
exempt_scope(A) :-
    pre_market_research_testing_development(A),
    \+ testing_in_real_world_conditions(A).

% Paragraph 10: Purely personal non-professional activity by natural persons
exempt_scope(D) :-
    deployer(D),
    personal_non_professional_activity(D).

% Paragraph 12: Free and open-source AI systems (unless high-risk, art 5, or art 50)
exempt_scope(S) :-
    open_source_licensed(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_ai_practice(S),
    \+ transparency_risk_system(S).

% Provenance facts
provenance(scope_applies/1, 'celex:32024R1689/oj#art_2').
provenance(limited_scope_high_risk_annex_i/1, 'celex:32024R1689/oj#art_2').
provenance(exempt_scope/1, 'celex:32024R1689/oj#art_2').

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
references('celex:32024R1689/oj#art_2', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#art_2', 'celex:32002L0058/oj').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_10/par_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_2', 'celex:32024R1689/oj#art_50').
