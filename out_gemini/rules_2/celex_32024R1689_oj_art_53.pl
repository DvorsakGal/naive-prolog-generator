% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 3589d2895d3b990441809b940795176b1df193c9589bc122570d6c2dd524e4c8
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred provides_model/2, gloss('entity is the provider of an AI model'), source('celex:32024R1689/oj#art_53').
:- pred free_and_open_source_licence/1, gloss('model is released under a free and open-source licence allowing access, use, modification, and distribution'), source('celex:32024R1689/oj#art_53').
:- pred model_parameters_publicly_available/1, gloss('parameters including weights, architecture, and usage information are publicly available'), source('celex:32024R1689/oj#art_53').
:- pred model_with_systemic_risk/1, gloss('general-purpose AI model presents systemic risks'), source('celex:32024R1689/oj#art_53').
:- pred exempt_documentation_obligations/1, gloss('model is exempt from documentation obligations under Article 53(1)(a) and (b)'), source('celex:32024R1689/oj#art_53').
:- pred adheres_to_approved_code_of_practice/2, gloss('provider adheres to an approved code of practice for a model'), source('celex:32024R1689/oj#art_53').
:- pred complies_with_harmonised_standard/2, gloss('provider complies with a European harmonised standard for a model'), source('celex:32024R1689/oj#art_53').
:- pred demonstrates_alternative_compliance/2, gloss('provider demonstrates alternative adequate means of compliance for assessment by Commission'), source('celex:32024R1689/oj#art_53').
:- pred permitted_rely_on_code_of_practice/2, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_53').
:- pred presumption_of_conformity/2, gloss('compliance grants presumption of conformity for obligations covered'), source('celex:32024R1689/oj#art_53').
:- pred empowered_to_adopt_delegated_acts/2, gloss('institution is empowered to adopt delegated acts on a matter'), source('celex:32024R1689/oj#art_53').

% References
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').

% Paragraph 2: Exemption from points (a) and (b) of paragraph 1
exempt_documentation_obligations(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    model_parameters_publicly_available(M),
    \+ model_with_systemic_risk(M).

model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

% Paragraph 1(a): Technical documentation
must_comply(P, technical_documentation(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    general_purpose_ai_model(M),
    \+ exempt_documentation_obligations(M).

% Paragraph 1(b): Information and documentation to downstream providers
must_comply(P, downstream_information_and_documentation(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    general_purpose_ai_model(M),
    \+ exempt_documentation_obligations(M).

% Paragraph 1(c): Policy on copyright and related rights
must_comply(P, copyright_policy(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    general_purpose_ai_model(M).

% Paragraph 1(d): Publicly available summary about training content
must_comply(P, public_training_summary(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    general_purpose_ai_model(M).

% Paragraph 3: Duty to cooperate with Commission and national competent authorities
must_comply(P, cooperation(commission, national_competent_authorities)) :-
    provider_of_general_purpose_ai_model(P).

% Paragraph 4: Codes of practice and demonstration of compliance
permitted_rely_on_code_of_practice(P, M) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M).

presumption_of_conformity(P, M) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    complies_with_harmonised_standard(P, M).

must_comply(P, demonstrate_alternative_compliance(M)) :-
    provider_of_general_purpose_ai_model(P),
    provides_model(P, M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M),
    demonstrates_alternative_compliance(P, M).

% Paragraph 5: Commission empowerment to adopt delegated acts on measurement and calculation methodologies
empowered_to_adopt_delegated_acts(commission, measurement_and_calculation_methodologies_annex_11).

% Paragraph 6: Commission empowerment to amend Annexes XI and XII
empowered_to_adopt_delegated_acts(commission, amend_annex_11_and_12).

% Paragraph 7: Confidentiality of information and documentation obtained
must_comply(Actor, confidentiality_obligations(Doc)) :-
    technical_documentation(Doc),
    operator(Actor).

% Provenance facts
provenance(exempt_documentation_obligations/1, 'celex:32024R1689/oj#art_53').
provenance(model_with_systemic_risk/1, 'celex:32024R1689/oj#art_53').
provenance(must_comply/2, 'celex:32024R1689/oj#art_53').
provenance(permitted_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_53').
provenance(empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_53').
