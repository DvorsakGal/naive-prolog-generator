% unit       : celex:32024R1689/oj#art_16
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 75b346dbe87f9ccfa4eae41135c19727b6ed42b81bdce3ca6045d4733c2b69df
% cached     : False
% title      : Obligations of providers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_16').
:- pred provider_of/2, gloss('entity is the provider of an AI system'), source('celex:32024R1689/oj#art_16').
:- pred contact_info_indicated/2, gloss('provider contact information is indicated on the system, packaging, or documentation'), source('celex:32024R1689/oj#art_16').
:- pred quality_management_system_complies_art_17/2, gloss('provider has a quality management system complying with Article 17'), source('celex:32024R1689/oj#art_16').
:- pred documentation_kept_art_18/2, gloss('provider keeps the documentation referred to in Article 18'), source('celex:32024R1689/oj#art_16').
:- pred logs_kept_art_19/2, gloss('provider keeps the automatically generated logs under their control as referred to in Article 19'), source('celex:32024R1689/oj#art_16').
:- pred conformity_assessment_undergone_art_43/1, gloss('AI system has undergone the relevant conformity assessment procedure referred to in Article 43'), source('celex:32024R1689/oj#art_16').
:- pred eu_declaration_of_conformity_drawn_art_47/2, gloss('provider draws up an EU declaration of conformity in accordance with Article 47'), source('celex:32024R1689/oj#art_16').
:- pred ce_marking_affixed_art_48/2, gloss('provider has affixed the CE marking to the system, packaging, or documentation in accordance with Article 48'), source('celex:32024R1689/oj#art_16').
:- pred registration_obligations_complied_art_49/2, gloss('provider complies with registration obligations referred to in Article 49(1)'), source('celex:32024R1689/oj#art_16').
:- pred corrective_actions_and_information_art_20/2, gloss('provider takes corrective actions and provides information as required in Article 20'), source('celex:32024R1689/oj#art_16').
:- pred demonstrates_conformity_upon_request/3, gloss('provider demonstrates conformity of high-risk AI system to national competent authority upon reasoned request'), source('celex:32024R1689/oj#art_16').
:- pred accessibility_requirements_complied/1, gloss('AI system complies with applicable accessibility requirements under Directives 2016/2102 and 2019/882'), source('celex:32024R1689/oj#art_16').

% (a) ensure that their high-risk AI systems are compliant with the requirements set out in Chapter III, Section 2
must_comply(Provider, compliance_chapter_3_section_2(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (b) indicate on the high-risk AI system (or packaging/documentation) contact details
must_comply(Provider, indicate_contact_info(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (c) have a quality management system in place complying with Article 17
must_comply(Provider, quality_management_system(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (d) keep documentation referred to in Article 18
must_comply(Provider, keep_documentation(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (e) when under their control, keep automatically generated logs referred to in Article 19
must_comply(Provider, keep_logs(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    control_of_logs(Provider, System).

% (f) ensure relevant conformity assessment procedure undergone prior to market placement or putting into service
must_comply(Provider, conformity_assessment_procedure(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (g) draw up EU declaration of conformity in accordance with Article 47
must_comply(Provider, eu_declaration_of_conformity(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (h) affix CE marking in accordance with Article 48
must_comply(Provider, affix_ce_marking(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (i) comply with registration obligations referred to in Article 49(1)
must_comply(Provider, registration_obligations(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (j) take corrective actions and provide information as required in Article 20
must_comply(Provider, corrective_actions_and_information(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (k) demonstrate conformity upon reasoned request of a national competent authority
must_comply(Provider, demonstrate_conformity(System, Authority)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    national_competent_authority(Authority).

% (l) ensure compliance with accessibility requirements (Directives 2016/2102 and 2019/882)
must_comply(Provider, accessibility_requirements(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% Provenance
provenance(must_comply/2, 'celex:32024R1689/oj#art_16').

% References
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').
