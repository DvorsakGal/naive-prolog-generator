% unit       : celex:32024R1689/oj#art_16
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c627a76687d24819bb4668d39070ff8af795a78b78a09099ec710c9e72aad511
% cached     : False
% title      : Obligations of providers of high-risk AI systems
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_16').
:- pred provider_of/2, gloss('provider of a given AI system'), source('celex:32024R1689/oj#art_16').
:- pred control_of_logs/2, gloss('provider has control over logs of an AI system'), source('celex:32024R1689/oj#art_16').
:- pred reasoned_request/2, gloss('authority makes a reasoned request to an actor'), source('celex:32024R1689/oj#art_16').
:- pred must_ensure(Actor, Object), gloss('duty of actor to ensure something'), source('celex:32024R1689/oj#art_16').
:- pred must_indicate(Actor, Object), gloss('duty of actor to indicate information'), source('celex:32024R1689/oj#art_16').
:- pred must_have(Actor, Object), gloss('duty of actor to have a system or arrangement'), source('celex:32024R1689/oj#art_16').
:- pred must_keep(Actor, Object), gloss('duty of actor to keep documentation or logs'), source('celex:32024R1689/oj#art_16').
:- pred must_draw_up(Actor, Object), gloss('duty of actor to draw up documentation'), source('celex:32024R1689/oj#art_16').
:- pred must_affix(Actor, Object), gloss('duty of actor to affix marking'), source('celex:32024R1689/oj#art_16').
:- pred must_comply(Actor, Object), gloss('duty of actor to comply with obligations'), source('celex:32024R1689/oj#art_16').
:- pred must_take(Actor, Object), gloss('duty of actor to take actions'), source('celex:32024R1689/oj#art_16').
:- pred must_provide(Actor, Object), gloss('duty of actor to provide information'), source('celex:32024R1689/oj#art_16').
:- pred must_demonstrate(Actor, Object), gloss('duty of actor to demonstrate conformity'), source('celex:32024R1689/oj#art_16').

% (a) ensure compliance with chapter III, section 2 requirements
must_ensure(Provider, compliance(System, chapter_iii_section_2)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (b) indicate provider contact and identification details
must_indicate(Provider, provider_details(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (c) have quality management system in place complying with Article 17
must_have(Provider, quality_management_system(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (d) keep documentation referred to in Article 18
must_keep(Provider, technical_documentation(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (e) keep automatically generated logs when under their control (Article 19)
must_keep(Provider, automatically_generated_logs(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    control_of_logs(Provider, System).

% (f) ensure conformity assessment procedure prior to placing on market or putting into service
must_ensure(Provider, conformity_assessment_procedure(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (g) draw up EU declaration of conformity (Article 47)
must_draw_up(Provider, eu_declaration_of_conformity(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (h) affix CE marking (Article 48)
must_affix(Provider, ce_marking(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (i) comply with registration obligations (Article 49(1))
must_comply(Provider, registration_obligations(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (j) take corrective actions and provide information (Article 20)
must_take(Provider, corrective_actions(System)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, information(corrective_actions(System))) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

% (k) demonstrate conformity upon reasoned request of national competent authority
must_demonstrate(Provider, conformity(System, chapter_iii_section_2)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System),
    national_competent_authority(Authority),
    reasoned_request(Authority, Provider).

% (l) ensure compliance with accessibility requirements
must_ensure(Provider, compliance(System, accessibility_requirements)) :-
    provider_of(Provider, System),
    high_risk_ai_system(System).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate/2, 'celex:32024R1689/oj#art_16').
provenance(must_have/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply/2, 'celex:32024R1689/oj#art_16').
provenance(must_take/2, 'celex:32024R1689/oj#art_16').
provenance(must_provide/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_16').

references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').
