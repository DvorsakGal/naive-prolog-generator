# art_11_par_1

## Text

The technical documentation of a high-risk AI system shall be drawn up before that system is placed on the market or put into service and shall be kept up-to date.
The technical documentation shall be drawn up in such a way as to demonstrate that the high-risk AI system complies with the requirements set out in chp_3 and to provide national competent authorities and notified bodies with the necessary information in a clear and comprehensive form to assess the compliance of the AI system with those requirements. It shall contain, at a minimum, the elements set out in Annex IV. SMEs, including start-ups, may provide the elements of the technical documentation specified in Annex IV in a simplified manner. To that end, the Commission shall establish a simplified technical documentation form targeted at the needs of small and microenterprises. Where an SME, including a start-up, opts to provide the information required in Annex IV in a simplified manner, it shall use the form referred to in Article 11(1). Notified bodies shall accept the form for the purposes of the conformity assessment.

## Numbers

| output | loads | module | clauses | preds | inputs | coverage | violations |
|---|---|---|---|---|---|---|---|
| deepseek/seed_1 | yes | technical_documentation | 9 | 9 | 11 | 0.608 | 1 |
| deepseek/seed_2 | yes | technical_documentation | 9 | 9 | 22 | 0.725 | 7 |
| deepseek/seed_3 | NO | technical_documentation | 13 | 13 | 15 | 0.647 | 15 |
| gemini/seed_1 | NO | technical_documentation_high_risk_ai | 10 | 9 | 8 | 0.627 | 0 |
| gemini/seed_2 | yes | technical_documentation_high_risk_ai | 13 | 10 | 11 | 0.588 | 1 |
| gemini/seed_3 | NO | technical_documentation | 10 | 10 | 9 | 0.667 | 2 |
| kimi/seed_1 | yes | high_risk_ai_technical_documentation | 16 | 16 | 8 | 0.725 | 21 |
| kimi/seed_2 | NO | high_risk_ai_technical_documentation | 24 | 17 | 11 | 0.725 | 24 |
| kimi/seed_3 | NO | high_risk_ai_technical_documentation | 18 | 14 | 11 | 0.686 | 21 |
| mistral/seed_1 | NO | technical_documentation_ai | 10 | 9 | 15 | 0.824 | 3 |
| mistral/seed_2 | NO | technical_documentation_ai | 11 | 9 | 18 | 0.725 | 5 |
| mistral/seed_3 | yes | technical_documentation_ai | 15 | 12 | 17 | 0.667 | 6 |
| qwen/seed_1 | yes | high_risk_ai_technical_documentation | 16 | 14 | 5 | 0.627 | 16 |
| qwen/seed_2 | yes | high_risk_ai_technical_documentation | 13 | 12 | 3 | 0.529 | 5 |
| qwen/seed_3 | NO | high_risk_ai_technical_documentation | 12 | 10 | 12 | 0.667 | 10 |

Within-model (3 seeds): deepseek: J_preds 0.173, J_clauses 0.0, consensus 0.0; gemini: J_preds 0.295, J_clauses 0.0, consensus 0.0; kimi: J_preds 0.299, J_clauses 0.01, consensus 0.022; mistral: J_preds 0.412, J_clauses 0.045, consensus 0.065; qwen: J_preds 0.545, J_clauses 0.247, consensus 0.425

## deepseek seed 1

```prolog
:- module(technical_documentation, [
    must_draw_up_technical_documentation/2,
    must_keep_up_to_date/1,
    demonstrates_compliance/1,
    provides_information/1,
    must_contain/2,
    may_provide_simplified/2,
    must_establish/2,
    must_use_form/2,
    must_accept_form/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic small_microenterprise/1.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic conformity_assessment/1.

must_draw_up_technical_documentation(System, Documentation) :-
    high_risk_ai_system(System),
    (   placed_on_market(System)
    ;   put_into_service(System)
    ),
    Documentation = technical_documentation(System).

must_keep_up_to_date(Documentation) :-
    Documentation = technical_documentation(System),
    high_risk_ai_system(System).

demonstrates_compliance(Documentation) :-
    Documentation = technical_documentation(System),
    high_risk_ai_system(System),
    complies_with(System, chapter_3).

provides_information(Documentation) :-
    Documentation = technical_documentation(System),
    high_risk_ai_system(System),
    provides_clear_comprehensive_information(Documentation, national_competent_authorities),
    provides_clear_comprehensive_information(Documentation, notified_bodies).

must_contain(Documentation, annex_iv) :-
    Documentation = technical_documentation(System),
    high_risk_ai_system(System),
    \+ may_provide_simplified(System, annex_iv).

may_provide_simplified(Actor, annex_iv) :-
    (   sme(Actor)
    ;   start_up(Actor)
    ),
    provides_information(technical_documentation(System)),
    Actor = System.

must_establish(Commission, simplified_form(small_microenterprises)) :-
    commission(Commission),
    small_microenterprise(_).

must_use_form(Actor, Form) :-
    (   sme(Actor)
    ;   start_up(Actor)
    ),
    may_provide_simplified(Actor, annex_iv),
    Form = form_article_11_1.

must_accept_form(Body, Form) :-
    notified_body(Body),
    Form = form_article_11_1,
    conformity_assessment(_).
```

## deepseek seed 2

```prolog
:- module(technical_documentation, [
    must_draw_up_technical_documentation/2,
    must_keep_up_to_date/1,
    must_demonstrate_compliance/2,
    must_provide_information/2,
    must_contain_minimum_elements/1,
    permitted_simplified_manner/1,
    must_establish_simplified_form/1,
    must_use_simplified_form/1,
    must_accept_simplified_form/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic small_microenterprise/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.
:- dynamic requirements_chapter_3/1.
:- dynamic annex_iv_elements/1.
:- dynamic simplified_form_article_11_1/1.

% Obligation to draw up documentation before placing on market or putting into service
must_draw_up_technical_documentation(System, Documentation) :-
    high_risk_ai_system(System),
    technical_documentation(Documentation),
    (placed_on_market(System); put_into_service(System)).

% Obligation to keep documentation up-to-date
must_keep_up_to_date(Documentation) :-
    technical_documentation(Documentation).

% Documentation must demonstrate compliance with Chapter 3 requirements
must_demonstrate_compliance(Documentation, System) :-
    technical_documentation(Documentation),
    high_risk_ai_system(System),
    requirements_chapter_3(Requirements),
    complies_with(System, Requirements).

% Documentation must provide necessary information to authorities and notified bodies
must_provide_information(Documentation, Information) :-
    technical_documentation(Documentation),
    necessary_information(Information),
    (national_competent_authority(Authority); notified_body(Body)),
    assess_compliance(Authority_or_Body, System),
    high_risk_ai_system(System).

% Documentation must contain at minimum the elements in Annex IV
must_contain_minimum_elements(Documentation) :-
    technical_documentation(Documentation),
    annex_iv_elements(Elements),
    contains(Documentation, Elements).

% SMEs and start-ups may provide Annex IV elements in a simplified manner
permitted_simplified_manner(Entity) :-
    (sme(Entity); start_up(Entity)),
    annex_iv_elements(Elements),
    provides_simplified(Entity, Elements).

% Commission shall establish a simplified form for small and microenterprises
must_establish_simplified_form(Commission) :-
    commission(Commission),
    simplified_technical_documentation_form(Form),
    targeted_at(Form, small_microenterprise(_)).

% Where SME or start-up opts for simplified manner, it shall use the Article 11(1) form
must_use_simplified_form(Entity) :-
    (sme(Entity); start_up(Entity)),
    opts_for_simplified_manner(Entity),
    simplified_form_article_11_1(Form),
    uses(Entity, Form).

% Notified bodies shall accept the simplified form for conformity assessment
must_accept_simplified_form(Body) :-
    notified_body(Body),
    simplified_form_article_11_1(Form),
    accepts_for_conformity_assessment(Body, Form).
```

## deepseek seed 3

```prolog
:- module(technical_documentation, [
    must_draw_up_before(Entity, Documentation),
    must_keep_up_to_date(Entity, Documentation),
    must_demonstrate_compliance(Documentation, System),
    must_provide_information(Documentation, Information),
    must_contain(Documentation, Elements),
    may_provide_simplified(Sme, Elements),
    must_establish(Commission, Form),
    must_use_form(Sme, Form),
    must_accept_form(Body, Form)
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.
:- dynamic conformity_assessment/1.

must_draw_up_before(Entity, Documentation) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    (   placed_on_market(System)
    ;   put_into_service(System)
    ),
    responsible_entity(Entity, Documentation).

must_keep_up_to_date(Entity, Documentation) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    responsible_entity(Entity, Documentation).

must_demonstrate_compliance(Documentation, System) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    requirements_chapter_3(Requirements),
    complies_with(System, Requirements).

must_provide_information(Documentation, Information) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    information_for_assessment(Information, System).

must_contain(Documentation, Elements) :-
    high_risk_ai_system(System),
    technical_documentation_of(Documentation, System),
    annex_iv_elements(Elements).

may_provide_simplified(Sme, Elements) :-
    (   sme(Sme)
    ;   start_up(Sme)
    ),
    annex_iv_elements(Elements).

must_establish(Commission, Form) :-
    commission(Commission),
    simplified_form(Form, small_and_microenterprises).

must_use_form(Sme, Form) :-
    (   sme(Sme)
    ;   start_up(Sme)
    ),
    opts_for_simplified(Sme),
    simplified_form(Form, _),
    referred_to_in_article_11_1(Form).

must_accept_form(Body, Form) :-
    notified_body(Body),
    simplified_form(Form, _),
    conformity_assessment(Assessment),
    purpose(Assessment, Form).

% Supporting predicates defined in this module
technical_documentation_of(Documentation, System) :-
    high_risk_ai_system(System),
    Documentation = technical_documentation(System).

responsible_entity(Entity, Documentation) :-
    technical_documentation_of(Documentation, System),
    Entity = responsible_for(System).

information_for_assessment(Information, System) :-
    high_risk_ai_system(System),
    Information = assessment_information(System, clear_and_comprehensive).

opts_for_simplified(Sme) :-
    (   sme(Sme)
    ;   start_up(Sme)
    ),
    annex_iv_elements(_Elements),
    provides_simplified(Sme).

% Declare dynamic predicates for inputs not defined here
:- dynamic requirements_chapter_3/1.
:- dynamic complies_with/2.
:- dynamic annex_iv_elements/1.
:- dynamic simplified_form/2.
:- dynamic referred_to_in_article_11_1/1.
:- dynamic purpose/2.
:- dynamic provides_simplified/1.
```

## gemini seed 1

```prolog
:- module(technical_documentation_high_risk_ai, [
    required_drawn_up/1,
    required_up_to_date/1,
    required_demonstrate_compliance/1,
    required_provide_assessment_information/1,
    required_contain_elements/1,
    permitted_simplified_manner/1,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk(1).
:- dynamic technical_documentation(1).
:- dynamic placed_on_market(2).
:- dynamic puts_into_service(2).
:- dynamic ai_system(1).
:- dynamic provider(1).
:- dynamic commission(1).
:- dynamic small_medium_enterprise(1).
:- dynamic start_up(1).
:- dynamic notified_body(1).
:- dynamic opts_simplified_manner(1).
:- dynamic documentation_of(2).

% The technical documentation of a high-risk AI system shall be drawn up
% before that system is placed on the market or put into service.
required_drawn_up(before(Doc, placed_on_market_or_put_into_service(System))) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% ...and shall be kept up-to date.
required_up_to_date(Doc) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% The technical documentation shall be drawn up in such a way as to demonstrate
% that the high-risk AI system complies with the requirements set out in chp_3...
required_demonstrate_compliance(Doc) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% ...and to provide national competent authorities and notified bodies with the
% necessary information in a clear and comprehensive form to assess the compliance
% of the AI system with those requirements.
required_provide_assessment_information(Doc) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% It shall contain, at a minimum, the elements set out in Annex IV.
required_contain_elements(Doc) :-
    technical_documentation(Doc),
    documentation_of(Doc, System),
    high_risk(System).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner.
permitted_simplified_manner(Enterprise) :-
    small_medium_enterprise(Enterprise).
permitted_simplified_manner(Enterprise) :-
    start_up(Enterprise).

% To that end, the Commission shall establish a simplified technical documentation
% form targeted at the needs of small and microenterprises.
must_establish(Commission, form(simplified_technical_documentation, target(small_and_microenterprises))) :-
    commission(Commission).

% Where an SME, including a start-up, opts to provide the information required
% in Annex IV in a simplified manner, it shall use the form referred to in Article 11(1).
must_use(Enterprise, form(simplified_technical_documentation, article_11_1)) :-
    permitted_simplified_manner(Enterprise),
    opts_simplified_manner(Enterprise).

% Notified bodies shall accept the form for the purposes of the conformity assessment.
must_accept(Body, form(simplified_technical_documentation, purpose(conformity_assessment))) :-
    notified_body(Body).
```

## gemini seed 2

```prolog
:- module(technical_documentation_high_risk_ai, [
    required_technical_documentation/1,
    must_draw_up/2,
    must_keep_up_to_date/2,
    demonstrates_compliance_chapter_three/1,
    provides_assessment_information/1,
    contains_minimum_annex_four_elements/1,
    permitted_simplified_manner/2,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

% Inputs (external predicates not defined within this module)
:- dynamic high_risk/1.
:- dynamic ai_system/1.
:- dynamic provider/1.
:- dynamic places_on_market/2.
:- dynamic puts_into_service/2.
:- dynamic small_medium_enterprise/1.
:- dynamic start_up/1.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic opts_simplified_manner/2.
:- dynamic form_referred_to_in_article_eleven_one/1.

% Requirements on technical documentation for high-risk AI systems
required_technical_documentation(technical_documentation(System)) :-
    ai_system(System),
    high_risk(System).

% The technical documentation shall be drawn up before the system is placed on the market or put into service
must_draw_up(Provider, technical_documentation(System)) :-
    provider(Provider),
    ai_system(System),
    high_risk(System),
    places_on_market(Provider, System).

must_draw_up(Provider, technical_documentation(System)) :-
    provider(Provider),
    ai_system(System),
    high_risk(System),
    puts_into_service(Provider, System).

% The technical documentation shall be kept up-to-date
must_keep_up_to_date(Provider, technical_documentation(System)) :-
    provider(Provider),
    ai_system(System),
    high_risk(System).

% It shall demonstrate compliance with Chapter 3 requirements
demonstrates_compliance_chapter_three(technical_documentation(System)) :-
    ai_system(System),
    high_risk(System).

% It shall provide authorities and notified bodies with the necessary information
provides_assessment_information(technical_documentation(System)) :-
    ai_system(System),
    high_risk(System).

% It shall contain, at a minimum, the elements set out in Annex IV
contains_minimum_annex_four_elements(technical_documentation(System)) :-
    ai_system(System),
    high_risk(System).

% SMEs, including start-ups, may provide elements in a simplified manner
permitted_simplified_manner(Enterprise, technical_documentation(System)) :-
    ai_system(System),
    high_risk(System),
    small_medium_enterprise(Enterprise).

permitted_simplified_manner(Enterprise, technical_documentation(System)) :-
    ai_system(System),
    high_risk(System),
    start_up(Enterprise).

% The Commission shall establish a simplified technical documentation form
must_establish(Commission, simplified_form(small_and_microenterprises)) :-
    commission(Commission).

% Where an SME/start-up opts for simplified manner, it shall use the form
must_use(Enterprise, Form) :-
    small_medium_enterprise(Enterprise),
    opts_simplified_manner(Enterprise, technical_documentation(System)),
    ai_system(System),
    form_referred_to_in_article_eleven_one(Form).

must_use(Enterprise, Form) :-
    start_up(Enterprise),
    opts_simplified_manner(Enterprise, technical_documentation(System)),
    ai_system(System),
    form_referred_to_in_article_eleven_one(Form).

% Notified bodies shall accept the form for conformity assessment
must_accept(NotifiedBody, form_conformity_assessment(Form)) :-
    notified_body(NotifiedBody),
    form_referred_to_in_article_eleven_one(Form).
```

## gemini seed 3

```prolog
:- module(technical_documentation, [
    required_technical_documentation/1,
    must_draw_up/2,
    must_keep_up_to_date/2,
    demonstrates_compliance/2,
    provides_assessment_information/2,
    contains_elements/2,
    permitted_simplified_manner/2,
    must_establish/2,
    must_use/2,
    must_accept/2
]).

:- dynamic high_risk_ai_system/1.
:- dynamic provider/1.
:- dynamic small_medium_enterprise/1.
:- dynamic start_up/1.
:- dynamic small_or_microenterprise/1.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic national_competent_authority/1.
:- dynamic opts_simplified_manner/2.
:- dynamic conformity_assessment/1.

% The technical documentation of a high-risk AI system is required.
required_technical_documentation(technical_documentation(System)) :-
    high_risk_ai_system(System).

% The technical documentation of a high-risk AI system shall be drawn up
% before that system is placed on the market or put into service.
must_draw_up(Provider, technical_documentation(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

% It shall be kept up to date.
must_keep_up_to_date(Provider, technical_documentation(System)) :-
    provider(Provider),
    high_risk_ai_system(System).

% The technical documentation shall be drawn up in such a way as to demonstrate
% that the high-risk AI system complies with the requirements set out in chp_3.
demonstrates_compliance(technical_documentation(System), requirements(chapter_3)) :-
    high_risk_ai_system(System).

% And to provide national competent authorities and notified bodies with the
% necessary information in a clear and comprehensive form to assess the
% compliance of the AI system with those requirements.
provides_assessment_information(technical_documentation(System), recipient(Recipient)) :-
    high_risk_ai_system(System),
    ( national_competent_authority(Recipient)
    ; notified_body(Recipient)
    ).

% It shall contain, at a minimum, the elements set out in Annex IV.
contains_elements(technical_documentation(System), minimum(elements(annex_iv))) :-
    high_risk_ai_system(System).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner.
permitted_simplified_manner(technical_documentation(System)) :-
    high_risk_ai_system(System),
    provider(Provider),
    ( small_medium_enterprise(Provider)
    ; start_up(Provider)
    ).

% The Commission shall establish a simplified technical documentation form
% targeted at the needs of small and microenterprises.
must_establish(Commission, simplified_technical_documentation_form(targeted_needs(small_and_microenterprises))) :-
    commission(Commission).

% Where an SME, including a start-up, opts to provide the information required
% in Annex IV in a simplified manner, it shall use the form referred to in Article 11(1).
must_use(Provider, form(article_11(1))) :-
    high_risk_ai_system(System),
    provider(Provider),
    ( small_medium_enterprise(Provider)
    ; start_up(Provider)
    ),
    opts_simplified_manner(Provider, technical_documentation(System)).

% Notified bodies shall accept the form for the purposes of the conformity assessment.
must_accept(Body, form(article_11(1), purpose(conformity_assessment(Assessment)))) :-
    notified_body(Body),
    conformity_assessment(Assessment).
```

## kimi seed 1

```prolog
:- module(high_risk_ai_technical_documentation, [
    must_draw_up/2,
    required_technical_documentation/1,
    must_keep_up_to_date/2,
    must_demonstrate_compliance/2,
    must_provide_information/3,
    must_contain/2,
    permitted_simplified_technical_documentation/1,
    must_establish/2,
    must_use_form/2,
    must_accept_form/2,
    high_risk_ai_system/1,
    placed_on_market/1,
    put_into_service/1,
    complies_with_requirements/1,
    requirements_chp3/1,
    national_competent_authority/1,
    notified_body/1,
    annex_iv_elements/1,
    sme/1,
    start_up/1,
    small_microenterprise/1,
    simplified_technical_documentation_form/1,
    article_11_1_form/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic complies_with_requirements/1.
:- dynamic requirements_chp3/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic annex_iv_elements/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic small_microenterprise/1.
:- dynamic simplified_technical_documentation_form/1.
:- dynamic article_11_1_form/1.

% Timing requirement: drawn up before placement or service
must_draw_up(Provider, technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    (placed_on_market(S); put_into_service(S)).

% Technical documentation is required for high-risk AI systems
required_technical_documentation(technical_documentation(S)) :-
    high_risk_ai_system(S).

% Must keep up to date
must_keep_up_to_date(Provider, technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S).

% Purpose 1: demonstrate compliance with chp 3 requirements
must_demonstrate_compliance(technical_documentation(S), requirements_chp3) :-
    high_risk_ai_system(S).

% Purpose 2: provide information to authorities and notified bodies
must_provide_information(technical_documentation(S), Authority, assessment_information(S)) :-
    high_risk_ai_system(S),
    (national_competent_authority(Authority); notified_body(Authority)),
    clear_and_comprehensive(technical_documentation(S)).

% Minimum content: Annex IV elements
must_contain(technical_documentation(S), annex_iv_elements) :-
    high_risk_ai_system(S).

% SME/start-up may use simplified manner
permitted_simplified_technical_documentation(technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    (sme(Provider); start_up(Provider)).

% Commission must establish simplified form for small and microenterprises
must_establish(commission, simplified_technical_documentation_form(small_microenterprise)) :-
    small_microenterprise_needs(small_microenterprise).

% SME/start-up opting for simplified manner must use Article 11(1) form
must_use_form(Sme, article_11_1_form) :-
    (sme(Sme); start_up(Sme)),
    opts_for_simplified_manner(Sme, technical_documentation(S)),
    high_risk_ai_system(S),
    article_11_1_form(article_11_1_form).

% Notified bodies must accept the form for conformity assessment
must_accept_form(NotifiedBody, article_11_1_form) :-
    notified_body(NotifiedBody),
    article_11_1_form(article_11_1_form),
    conformity_assessment_purpose.

% Helper predicates for conditions in text
clear_and_comprehensive(technical_documentation(S)) :-
    high_risk_ai_system(S).

provider(Provider, S) :-
    high_risk_ai_system(S).

small_microenterprise_needs(small_microenterprise).

opts_for_simplified_manner(Sme, technical_documentation(S)) :-
    (sme(Sme); start_up(Sme)),
    high_risk_ai_system(S).

conformity_assessment_purpose.

commission(commission).
```

## kimi seed 2

```prolog
:- module(high_risk_ai_technical_documentation, [
    must_draw_up/2,
    must_keep_up_to_date/2,
    required_technical_documentation/1,
    demonstrates_compliance/2,
    provides_information/3,
    must_contain/2,
    permitted_simplified_technical_documentation/1,
    must_establish/2,
    must_use/2,
    must_accept/2,
    high_risk_ai_system/1,
    placed_on_market/1,
    put_into_service/1,
    chapter_3/1,
    annex_iv/1,
    sme/1,
    start_up/1,
    small_microenterprise/1,
    commission/1,
    notified_body/1,
    national_competent_authority/1,
    simplified_technical_documentation_form/1,
    article_11_1_form/1,
    conformity_assessment/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic chapter_3/1.
:- dynamic annex_iv/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic small_microenterprise/1.
:- dynamic commission/1.
:- dynamic notified_body/1.
:- dynamic national_competent_authority/1.
:- dynamic article_11_1_form/1.
:- dynamic conformity_assessment/1.

% Timing requirement: drawn up before placement or putting into service
must_draw_up(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placed_on_market(S); put_into_service(S)).

% Up-to-date requirement
must_keep_up_to_date(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S).

% Purpose of technical documentation: demonstrate compliance
demonstrates_compliance(technical_documentation(S), chapter_3_requirements) :-
    high_risk_ai_system(S),
    chapter_3(chapter_3_requirements).

% Purpose: provide information to authorities
provides_information(technical_documentation(S), Authority, compliance_assessment_information) :-
    high_risk_ai_system(S),
    (national_competent_authority(Authority); notified_body(Authority)),
    clear_and_comprehensive(technical_documentation(S)).

% Minimum content requirement
must_contain(technical_documentation(S), elements(annex_iv)) :-
    high_risk_ai_system(S),
    annex_iv(annex_iv).

% Simplified manner permitted for SMEs including start-ups
permitted_simplified_technical_documentation(S) :-
    high_risk_ai_system(S),
    sme_including_start_up(Entity),
    provides_technical_documentation(Entity, S).

sme_including_start_up(Entity) :-
    sme(Entity).
sme_including_start_up(Entity) :-
    start_up(Entity).

% Commission must establish simplified form
must_establish(Commission, simplified_technical_documentation_form(small_microenterprise_needs)) :-
    commission(Commission),
    small_microenterprise_needs(small_microenterprise_needs).

% SME must use Article 11(1) form when opting for simplified manner
must_use(SME, article_11_1_form) :-
    sme_including_start_up(SME),
    opts_for_simplified_manner(SME, technical_documentation(S)),
    high_risk_ai_system(S).

% Notified bodies must accept the form
must_accept(NotifiedBody, article_11_1_form) :-
    notified_body(NotifiedBody),
    conformity_assessment(ConformityAssessment),
    used_for_purposes(article_11_1_form, ConformityAssessment).

% Supporting predicates
provider(Provider) :- sme(Provider).
provider(Provider) :- start_up(Provider).
provider(Provider) :- \+ sme(Provider), \+ start_up(Provider), entity(Provider).

entity(Entity) :- sme(Entity).
entity(Entity) :- start_up(Entity).
entity(Entity) :- commission(Entity).
entity(Entity) :- notified_body(Entity).
entity(Entity) :- national_competent_authority(Entity).

clear_and_comprehensive(technical_documentation(_S)).

small_microenterprise_needs(small_microenterprise_needs).

used_for_purposes(article_11_1_form, conformity_assessment) :-
    conformity_assessment(conformity_assessment).

opts_for_simplified_manner(SME, technical_documentation(S)) :-
    sme_including_start_up(SME),
    high_risk_ai_system(S),
    permitted_simplified_technical_documentation(S).

provides_technical_documentation(SME, S) :-
    sme_including_start_up(SME),
    high_risk_ai_system(S).
```

## kimi seed 3

```prolog
:- module(high_risk_ai_technical_documentation, [
    must_draw_up/2,
    must_keep_up_to_date/2,
    must_demonstrate_compliance/2,
    must_provide_information/3,
    must_contain/2,
    may_provide_simplified/2,
    must_establish/2,
    must_use_form/2,
    must_accept_form/2,
    high_risk_ai_system/1,
    technical_documentation/1,
    placed_on_market/1,
    put_into_service/1,
    complies_with_requirements/2,
    requirements_chp_3/1,
    national_competent_authority/1,
    notified_body/1,
    annex_iv_elements/1,
    sme/1,
    start_up/1,
    simplified_technical_documentation/1,
    simplified_form/1,
    article_11_1_form/1,
    conformity_assessment/1
]).

% Inputs from world facts
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic complies_with_requirements/2.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic requirements_chp_3/1.
:- dynamic annex_iv_elements/1.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic conformity_assessment/1.

% Core obligations

must_draw_up(Provider, technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    \+ placed_on_market(S),
    \+ put_into_service(S).

must_keep_up_to_date(Provider, technical_documentation(S)) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    drawn_up(Provider, technical_documentation(S)).

% Purpose and content requirements

must_demonstrate_compliance(technical_documentation(S), requirements_chp_3) :-
    high_risk_ai_system(S).

must_provide_information(technical_documentation(S), Authority, assessment_information) :-
    high_risk_ai_system(S),
    national_competent_authority(Authority).

must_provide_information(technical_documentation(S), Body, assessment_information) :-
    high_risk_ai_system(S),
    notified_body(Body).

must_contain(technical_documentation(S), annex_iv_elements) :-
    high_risk_ai_system(S).

% SME simplification provisions

may_provide_simplified(Sme, annex_iv_elements) :-
    sme(Sme).

may_provide_simplified(StartUp, annex_iv_elements) :-
    start_up(StartUp).

% Commission obligation for simplified form

must_establish(commission, simplified_technical_documentation_form(Smes)) :-
    sme_needs_targeted(Smes).

% SME using simplified form obligation

must_use_form(Sme, article_11_1_form) :-
    sme(Sme),
    opts_for_simplified(Sme, annex_iv_elements).

must_use_form(StartUp, article_11_1_form) :-
    start_up(StartUp),
    opts_for_simplified(StartUp, annex_iv_elements).

% Notified body acceptance obligation

must_accept_form(Body, article_11_1_form) :-
    notified_body(Body),
    conformity_assessment(CA),
    used_for(CA, article_11_1_form).

% Supporting definitions

sme_needs_targeted(small_enterprises).
sme_needs_targeted(microenterprises).

provider(Provider, S) :-
    developed_by(Provider, S).

% Auxiliary predicates for conditions in text

opts_for_simplified(Entity, annex_iv_elements) :-
    (sme(Entity); start_up(Entity)),
    chooses_simplified(Entity).

used_for(CA, article_11_1_form) :-
    conformity_assessment(CA),
    submitted_with(CA, article_11_1_form).

% Facts implied by text structure

drawn_up(Provider, technical_documentation(S)) :-
    must_draw_up(Provider, technical_documentation(S)).

% Dynamic declarations for world-state inputs
:- dynamic developed_by/2.
:- dynamic chooses_simplified/1.
:- dynamic submitted_with/2.
```

## mistral seed 1

```prolog
:- module(technical_documentation_ai, [
    must_draw_up_technical_documentation/2,
    technical_documentation_up_to_date/1,
    technical_documentation_demonstrates_compliance/2,
    technical_documentation_provides_information/3,
    technical_documentation_contains_elements/2,
    may_provide_simplified_documentation/1,
    must_establish_simplified_form/1,
    must_use_simplified_form/1,
    must_accept_simplified_form/2
]).

% The technical documentation of a high-risk AI system shall be drawn up
% before that system is placed on the market or put into service
must_draw_up_technical_documentation(Provider, S) :-
    high_risk_ai_system(S),
    provider(Provider, S),
    \+ placed_on_market_before(S, documentation_drawn_up(Provider, S)),
    \+ put_into_service_before(S, documentation_drawn_up(Provider, S)).

% The technical documentation shall be kept up-to date
technical_documentation_up_to_date(S) :-
    high_risk_ai_system(S),
    technical_documentation(S, Doc),
    kept_up_to_date(Doc).

% The technical documentation shall be drawn up in such a way as to
% demonstrate that the high-risk AI system complies with the requirements
% set out in chapter 3
technical_documentation_demonstrates_compliance(S, chapter_3) :-
    high_risk_ai_system(S),
    technical_documentation(S, Doc),
    demonstrates_compliance(Doc, requirements(chapter_3)).

% The technical documentation shall provide national competent authorities
% and notified bodies with the necessary information in a clear and
% comprehensive form to assess the compliance of the AI system with
% those requirements
technical_documentation_provides_information(S, Authority, chapter_3) :-
    high_risk_ai_system(S),
    technical_documentation(S, Doc),
    (national_competent_authority(Authority) ; notified_body(Authority)),
    provides_information(Doc, Authority, clear_and_comprehensive),
    purpose(assess_compliance(Authority, S, requirements(chapter_3))).

% The technical documentation shall contain, at a minimum, the elements
% set out in Annex IV
technical_documentation_contains_elements(S, annex_iv) :-
    high_risk_ai_system(S),
    technical_documentation(S, Doc),
    contains_at_minimum(Doc, elements(annex_iv)).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner
may_provide_simplified_documentation(Provider) :-
    sme(Provider).

may_provide_simplified_documentation(Provider) :-
    start_up(Provider).

% To that end, the Commission shall establish a simplified technical
% documentation form targeted at the needs of small and microenterprises
must_establish_simplified_form(commission) :-
    purpose(targeted_at(needs(small_and_microenterprises))).

% Where an SME, including a start-up, opts to provide the information
% required in Annex IV in a simplified manner, it shall use the form
% referred to in Article 11(1)
must_use_simplified_form(Provider, form(article_11_1)) :-
    (sme(Provider) ; start_up(Provider)),
    opts_to_provide_simplified(Provider, information(annex_iv)).

% Notified bodies shall accept the form for the purposes of the
% conformity assessment
must_accept_simplified_form(Body, form(article_11_1)) :-
    notified_body(Body),
    purpose(conformity_assessment).

% --- Dynamic inputs: facts about the world the text does not settle ---

:- dynamic high_risk_ai_system/1.
:- dynamic provider/2.
:- dynamic placed_on_market_before/2.
:- dynamic put_into_service_before/2.
:- dynamic technical_documentation/2.
:- dynamic kept_up_to_date/1.
:- dynamic demonstrates_compliance/2.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic provides_information/3.
:- dynamic purpose/1.
:- dynamic contains_at_minimum/2.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic opts_to_provide_simplified/2.
```

## mistral seed 2

```prolog
:- module(technical_documentation_ai, [
    must_draw_up_technical_documentation/2,
    technical_documentation_up_to_date/1,
    technical_documentation_demonstrates_compliance/1,
    technical_documentation_provides_information/1,
    technical_documentation_contains_annex_iv_elements/1,
    permitted_simplified_documentation/1,
    must_establish_simplified_form/1,
    must_use_simplified_form/1,
    must_accept_simplified_form/2
]).

% The technical documentation of a high-risk AI system shall be drawn up
% before that system is placed on the market or put into service
must_draw_up_technical_documentation(System, Documentation) :-
    high_risk_ai_system(System),
    technical_documentation(Documentation, System),
    \+ placed_on_market_before(System, Documentation),
    \+ put_into_service_before(System, Documentation).

% The technical documentation shall be kept up-to date
technical_documentation_up_to_date(Documentation) :-
    technical_documentation(Documentation, _System).

% The technical documentation shall be drawn up in such a way as to
% demonstrate that the high-risk AI system complies with the requirements
% set out in chapter 3
technical_documentation_demonstrates_compliance(Documentation) :-
    technical_documentation(Documentation, System),
    high_risk_ai_system(System),
    demonstrates_compliance_with_chapter_3(Documentation, System).

% The technical documentation shall provide national competent authorities
% and notified bodies with the necessary information in a clear and
% comprehensive form to assess the compliance of the AI system with
% those requirements
technical_documentation_provides_information(Documentation) :-
    technical_documentation(Documentation, System),
    provides_information_to(Documentation, national_competent_authority),
    provides_information_to(Documentation, notified_body),
    information_form(Documentation, clear),
    information_form(Documentation, comprehensive),
    purpose_of_information(Documentation, assess_compliance(System)).

% The technical documentation shall contain, at a minimum, the elements
% set out in Annex IV
technical_documentation_contains_annex_iv_elements(Documentation) :-
    technical_documentation(Documentation, _System),
    contains_elements(Documentation, annex_iv).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner
permitted_simplified_documentation(Provider) :-
    sme(Provider).
permitted_simplified_documentation(Provider) :-
    start_up(Provider).

% To that end, the Commission shall establish a simplified technical
% documentation form targeted at the needs of small and microenterprises
must_establish_simplified_form(Commission) :-
    commission(Commission),
    simplified_technical_documentation_form(Form),
    targeted_at(Form, small_enterprise),
    targeted_at(Form, microenterprise).

% Where an SME, including a start-up, opts to provide the information
% required in Annex IV in a simplified manner, it shall use the form
% referred to in Article 11(1)
must_use_simplified_form(Provider, Form) :-
    sme(Provider),
    opts_for_simplified_manner(Provider),
    form_referred_to_in_article_11_1(Form).
must_use_simplified_form(Provider, Form) :-
    start_up(Provider),
    opts_for_simplified_manner(Provider),
    form_referred_to_in_article_11_1(Form).

% Notified bodies shall accept the form for the purposes of the
% conformity assessment
must_accept_simplified_form(NotifiedBody, Form) :-
    notified_body(NotifiedBody),
    simplified_technical_documentation_form(Form),
    purpose(conformity_assessment).

% --- Dynamic inputs: facts about the world the text does not settle ---

:- dynamic high_risk_ai_system/1.
:- dynamic technical_documentation/2.
:- dynamic placed_on_market_before/2.
:- dynamic put_into_service_before/2.
:- dynamic demonstrates_compliance_with_chapter_3/2.
:- dynamic provides_information_to/2.
:- dynamic information_form/2.
:- dynamic purpose_of_information/2.
:- dynamic contains_elements/2.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic commission/1.
:- dynamic simplified_technical_documentation_form/1.
:- dynamic targeted_at/2.
:- dynamic opts_for_simplified_manner/1.
:- dynamic form_referred_to_in_article_11_1/1.
:- dynamic notified_body/1.
:- dynamic purpose/1.
:- dynamic assess_compliance/1.
:- dynamic national_competent_authority/0.
:- dynamic notified_body/0.
:- dynamic clear/0.
:- dynamic comprehensive/0.
:- dynamic annex_iv/0.
:- dynamic small_enterprise/0.
:- dynamic microenterprise/0.
:- dynamic conformity_assessment/0.
```

## mistral seed 3

```prolog
:- module(technical_documentation_ai, [
    must_draw_up_technical_documentation/2,
    technical_documentation_up_to_date/1,
    technical_documentation_demonstrates_compliance/2,
    technical_documentation_provides_information/3,
    technical_documentation_contains_elements/2,
    may_provide_simplified_documentation/1,
    must_establish_simplified_form/1,
    must_use_simplified_form/1,
    must_accept_simplified_form/2
]).

% The technical documentation of a high-risk AI system shall be drawn up
% before that system is placed on the market or put into service
must_draw_up_technical_documentation(Provider, System) :-
    high_risk_ai_system(System),
    provider(Provider, System),
    \+ placed_on_market_before(System, documentation_drawn_up(Provider, System)),
    \+ put_into_service_before(System, documentation_drawn_up(Provider, System)).

% Helper: documentation is drawn up before placement on market or service
placed_on_market_before(System, documentation_drawn_up(Provider, System)) :-
    must_draw_up_technical_documentation(Provider, System),
    time_of(documentation_drawn_up(Provider, System), T1),
    time_of(placed_on_market(System), T2),
    T1 < T2.

put_into_service_before(System, documentation_drawn_up(Provider, System)) :-
    must_draw_up_technical_documentation(Provider, System),
    time_of(documentation_drawn_up(Provider, System), T1),
    time_of(put_into_service(System), T2),
    T1 < T2.

% The technical documentation shall be kept up-to date
technical_documentation_up_to_date(System) :-
    high_risk_ai_system(System),
    technical_documentation(System, Doc),
    current(Doc).

% The technical documentation shall be drawn up in such a way as to demonstrate
% that the high-risk AI system complies with the requirements set out in chp_3
technical_documentation_demonstrates_compliance(System, Doc) :-
    high_risk_ai_system(System),
    technical_documentation(System, Doc),
    demonstrates_compliance_with_chapter_3(Doc).

% ...and to provide national competent authorities and notified bodies with
% the necessary information in a clear and comprehensive form to assess
% the compliance of the AI system with those requirements
technical_documentation_provides_information(System, Doc, Recipient) :-
    high_risk_ai_system(System),
    technical_documentation(System, Doc),
    recipient_type(Recipient),
    provides_information_for_compliance_assessment(Doc, Recipient).

recipient_type(national_competent_authority).
recipient_type(notified_body).

% It shall contain, at a minimum, the elements set out in Annex IV
technical_documentation_contains_elements(System, Doc) :-
    high_risk_ai_system(System),
    technical_documentation(System, Doc),
    contains_elements(Doc, annex_iv).

% SMEs, including start-ups, may provide the elements of the technical
% documentation specified in Annex IV in a simplified manner
may_provide_simplified_documentation(Provider) :-
    sme(Provider).

may_provide_simplified_documentation(Provider) :-
    start_up(Provider).

% To that end, the Commission shall establish a simplified technical
% documentation form targeted at the needs of small and microenterprises
must_establish_simplified_form(Commission) :-
    commission(Commission),
    establishes_simplified_form(Commission, targeted_at(small_and_microenterprises)).

% Where an SME, including a start-up, opts to provide the information required
% in Annex IV in a simplified manner, it shall use the form referred to in
% Article 11(1)
must_use_simplified_form(Provider) :-
    sme(Provider),
    opts_for_simplified_manner(Provider),
    uses_form(Provider, article_11_1_form).

must_use_simplified_form(Provider) :-
    start_up(Provider),
    opts_for_simplified_manner(Provider),
    uses_form(Provider, article_11_1_form).

% Notified bodies shall accept the form for the purposes of the conformity assessment
must_accept_simplified_form(NotifiedBody, Form) :-
    notified_body(NotifiedBody),
    form(article_11_1_form, Form),
    accepts_for_conformity_assessment(NotifiedBody, Form).

% --- Dynamic inputs: facts about the world the text does not settle ---

:- dynamic high_risk_ai_system/1.
:- dynamic provider/2.
:- dynamic time_of/2.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic technical_documentation/2.
:- dynamic current/1.
:- dynamic demonstrates_compliance_with_chapter_3/1.
:- dynamic provides_information_for_compliance_assessment/2.
:- dynamic contains_elements/2.
:- dynamic sme/1.
:- dynamic start_up/1.
:- dynamic commission/1.
:- dynamic establishes_simplified_form/2.
:- dynamic opts_for_simplified_manner/1.
:- dynamic uses_form/2.
:- dynamic notified_body/1.
:- dynamic form/2.
:- dynamic accepts_for_conformity_assessment/2.
```

## qwen seed 1

```prolog
:- module(high_risk_ai_technical_documentation, [
    high_risk_ai_system/1,
    must_draw_up_technical_documentation_before/2,
    must_keep_technical_documentation_up_to_date/1,
    must_demonstrate_compliance_with_chapter_3/1,
    must_provide_information_to_authorities_and_bodies/1,
    must_contain_annex_iv_elements/1,
    sme/1,
    startup/1,
    permitted_simplified_documentation/1,
    must_establish_simplified_form/2,
    must_use_simplified_form/2,
    must_accept_simplified_form/2,
    national_competent_authority/1,
    notified_body/1,
    commission/1
]).

:- dynamic high_risk_ai_system/1.
:- dynamic sme/1.
:- dynamic startup/1.
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.

% Obligations regarding timing and maintenance of documentation
must_draw_up_technical_documentation_before(System, Event) :-
    high_risk_ai_system(System),
    placement_or_service_event(Event).

placement_or_service_event(placed_on_market).
placement_or_service_event(put_into_service).

must_keep_technical_documentation_up_to_date(System) :-
    high_risk_ai_system(System).

% Content and purpose requirements for technical documentation
must_demonstrate_compliance_with_chapter_3(System) :-
    high_risk_ai_system(System).

must_provide_information_to_authorities_and_bodies(System) :-
    high_risk_ai_system(System).

must_contain_annex_iv_elements(System) :-
    high_risk_ai_system(System).

% Simplified documentation provisions for SMEs and start-ups
permitted_simplified_documentation(Entity) :-
    sme(Entity).

permitted_simplified_documentation(Entity) :-
    startup(Entity).

must_establish_simplified_form(Commission, Form) :-
    commission(Commission),
    simplified_technical_documentation_form(Form).

must_use_simplified_form(Entity, Form) :-
    permitted_simplified_documentation(Entity),
    opts_for_simplified_manner(Entity),
    simplified_technical_documentation_form(Form).

must_accept_simplified_form(Body, Form) :-
    notified_body(Body),
    simplified_technical_documentation_form(Form),
    conformity_assessment_purpose(Purpose),
    assessment_context(Body, Purpose).

% Auxiliary definitions implied by the text
simplified_technical_documentation_form(form(article_11_1)).

opts_for_simplified_manner(_Entity).

conformity_assessment_purpose(conformity_assessment).

assessment_context(_Body, _Purpose).
```

## qwen seed 2

```prolog
:- module(high_risk_ai_technical_documentation, [
    high_risk_ai_system/1,
    must_draw_up_technical_documentation_before/2,
    must_keep_technical_documentation_up_to_date/1,
    must_demonstrate_compliance_with_chapter_3/1,
    must_provide_information_to_authorities/1,
    must_contain_annex_iv_elements/1,
    sme/1,
    startup/1,
    permitted_simplified_documentation/1,
    must_establish_simplified_form/2,
    must_use_simplified_form/2,
    must_accept_simplified_form/2
]).

:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.

% System classification
high_risk_ai_system(_S).

% Timing and maintenance obligations
must_draw_up_technical_documentation_before(S, market_or_service) :-
    high_risk_ai_system(S).

must_keep_technical_documentation_up_to_date(S) :-
    high_risk_ai_system(S).

% Content and purpose obligations
must_demonstrate_compliance_with_chapter_3(S) :-
    high_risk_ai_system(S).

must_provide_information_to_authorities(S) :-
    high_risk_ai_system(S).

must_contain_annex_iv_elements(S) :-
    high_risk_ai_system(S).

% SME and startup definitions (inputs)
sme(_E).
startup(_E).

% Simplified documentation permissions and duties
permitted_simplified_documentation(E) :-
    sme(E).

permitted_simplified_documentation(E) :-
    startup(E).

must_establish_simplified_form(Commission, form_for_sme) :-
    commission(Commission).

must_use_simplified_form(E, form_article_11_1) :-
    permitted_simplified_documentation(E),
    opts_for_simplified_manner(E).

must_accept_simplified_form(Body, form_article_11_1) :-
    notified_body(Body).

% Helper for opt-in condition (input predicate not defined in text)
:- dynamic opts_for_simplified_manner/1.
```

## qwen seed 3

```prolog
:- module(high_risk_ai_technical_documentation, [
    high_risk_ai_system/1,
    must_draw_up_technical_documentation_before/2,
    must_keep_technical_documentation_up_to_date/1,
    must_demonstrate_compliance_with_chapter_3/1,
    must_provide_information_to_authorities/1,
    must_contain_annex_iv_elements/1,
    sme/1,
    startup/1,
    permitted_simplified_documentation/1,
    must_establish_simplified_form/2,
    must_use_simplified_form/2,
    must_accept_simplified_form/2
]).

% Input predicates for entities and conditions not defined in this text
:- dynamic national_competent_authority/1.
:- dynamic notified_body/1.
:- dynamic commission/1.
:- dynamic placed_on_market/1.
:- dynamic put_into_service/1.
:- dynamic opts_for_simplified_manner/1.

% Core obligations for technical documentation
must_draw_up_technical_documentation_before(S, Event) :-
    high_risk_ai_system(S),
    (placed_on_market(S) ; put_into_service(S)),
    event_type(Event).

event_type(placement_on_market).
event_type(putting_into_service).

must_keep_technical_documentation_up_to_date(S) :-
    high_risk_ai_system(S).

must_demonstrate_compliance_with_chapter_3(S) :-
    high_risk_ai_system(S).

must_provide_information_to_authorities(S) :-
    high_risk_ai_system(S).

must_contain_annex_iv_elements(S) :-
    high_risk_ai_system(S).

% SME and start-up provisions
permitted_simplified_documentation(E) :-
    sme(E).

permitted_simplified_documentation(E) :-
    startup(E).

must_establish_simplified_form(Commission, Form) :-
    commission(Commission),
    simplified_technical_documentation_form(Form),
    targeted_at_small_and_microenterprises(Form).

must_use_simplified_form(E, Form) :-
    (sme(E) ; startup(E)),
    opts_for_simplified_manner(E),
    simplified_technical_documentation_form(Form),
    referred_to_in_article_11_1(Form).

must_accept_simplified_form(Body, Form) :-
    notified_body(Body),
    simplified_technical_documentation_form(Form),
    conformity_assessment_purpose(Form).
```
