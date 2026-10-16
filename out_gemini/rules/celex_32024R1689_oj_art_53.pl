% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1f1eff89c550a3e74903b8764bfad710ade43d9750526891537c9e4a0374e059
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred provider_of_general_purpose_ai_model/2, gloss('Entity that is the provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_53').
:- pred free_and_open_source_licence/1, gloss('Licence allowing access, usage, modification, and distribution with parameters publicly available'), source('celex:32024R1689/oj#art_53').
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('General-purpose AI model that presents systemic risks'), source('celex:32024R1689/oj#art_53').
:- pred exempt_technical_and_downstream_documentation/1, gloss('Model exempt from technical and downstream documentation duties under open-source exception'), source('celex:32024R1689/oj#art_53').
:- pred code_of_practice/1, gloss('Code of practice within the meaning of Article 56'), source('celex:32024R1689/oj#art_53').
:- pred adheres_to/2, gloss('Entity adheres to a code of practice or standard'), source('celex:32024R1689/oj#art_53').
:- pred complies_with/2, gloss('Entity complies with a standard or requirement'), source('celex:32024R1689/oj#art_53').
:- pred empowered_to_adopt_delegated_acts/2, gloss('Institution is empowered to adopt delegated acts on a specific matter'), source('celex:32024R1689/oj#art_53').

% Provider relationship for general-purpose AI models
provider_of_general_purpose_ai_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

% Paragraph 2: Exception for open source models (excluding systemic risks)
exempt_technical_and_downstream_documentation(Model) :-
    general_purpose_ai_model(Model),
    free_and_open_source_licence(Model),
    \+ general_purpose_ai_model_with_systemic_risk(Model).

% Paragraph 1(a): Draw up and keep technical documentation (unless exempt)
must_draw_up(Provider, technical_documentation(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model),
    \+ exempt_technical_and_downstream_documentation(Model).

% Paragraph 1(b): Draw up and make available documentation to downstream providers
must_make_available(Provider, documentation_for_downstream(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model),
    \+ exempt_technical_and_downstream_documentation(Model).

% Paragraph 1(c): Put in place copyright policy
must_put_in_place(Provider, copyright_policy(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model).

% Paragraph 1(d): Draw up and make publicly available training summary
must_make_publicly_available(Provider, training_content_summary(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model).

% Paragraph 3: Cooperate with Commission and national competent authorities
must_cooperate(Provider, commission) :-
    provider_of_general_purpose_ai_model(Provider, _Model).

must_cooperate(Provider, Authority) :-
    provider_of_general_purpose_ai_model(Provider, _Model),
    national_competent_authority(Authority).

% Paragraph 4: Alternative means of compliance if not adhering to code or standard
must_demonstrate(Provider, alternative_means_of_compliance(Model)) :-
    provider_of_general_purpose_ai_model(Provider, Model),
    \+ (code_of_practice(Code), adheres_to(Provider, Code)),
    \+ (harmonised_standard(Standard), complies_with(Provider, Standard)).

% Paragraph 5 & 6: Delegated powers of the Commission
empowered_to_adopt_delegated_acts(commission, measurement_methodologies(annex_11)).
empowered_to_adopt_delegated_acts(commission, amend(annex_11)).
empowered_to_adopt_delegated_acts(commission, amend(annex_12)).

% Paragraph 7: Confidentiality of information obtained pursuant to Article 53
must_comply(Recipient, confidentiality_obligations(article_78)) :-
    obtained_pursuant_to_art_53(Recipient, _Info).

:- pred obtained_pursuant_to_art_53/2, gloss('Entity obtained information or documentation pursuant to Article 53'), source('celex:32024R1689/oj#art_53').

% Provenance
provenance(provider_of_general_purpose_ai_model/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_technical_and_downstream_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_53').
provenance(empowered_to_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_53').
provenance(must_comply/2, 'celex:32024R1689/oj#art_53').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_53').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(adheres_to/2, 'celex:32024R1689/oj#art_53').
provenance(complies_with/2, 'celex:32024R1689/oj#art_53').
provenance(obtained_pursuant_to_art_53/2, 'celex:32024R1689/oj#art_53').

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
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
