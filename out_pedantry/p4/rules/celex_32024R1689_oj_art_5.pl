% unit      : celex:32024R1689/oj#art_5
% source    : celex:32024R1689%2Foj#art_5.xml
% model     : gpt-oss:120b-cloud
% pedantry  : 4
% prompt sha: 8c460d34d3bd15afb12883edf3901bda027f7c9bc0aef439d92a2c42f15eaf89
% signature: 9a545085be0feeadb8cbc09496f41df50bf4ee2fa5f0349daf74e28549a48022
% cached    : False
:- pred prohibited_ai_practice/1, gloss('AI practice prohibited under Art 5'), source('celex:32024R1689/oj#art_5').
:- pred subparagraph_a/1, gloss('Prohibited practice (a) – subliminal, manipulative or deceptive techniques'), source('celex:32024R1689/oj#art_5').
:- pred subparagraph_b/1, gloss('Prohibited practice (b) – exploitation of vulnerabilities'), source('celex:32024R1689/oj#art_5').
:- pred subparagraph_c/1, gloss('Prohibited practice (c) – evaluation/classification leading to detrimental treatment'), source('celex:32024R1689/oj#art_5').
:- pred subparagraph_d/1, gloss('Prohibited practice (d) – risk assessment based solely on profiling'), source('celex:32024R1689/oj#art_5').
:- pred subparagraph_e/1, gloss('Prohibited practice (e) – untargeted scraping for facial‑recognition databases'), source('celex:32024R1689/oj#art_5').
:- pred subparagraph_f/1, gloss('Prohibited practice (f) – inference of emotions in workplace/education, except medical/safety'), source('celex:32024R1689/oj#art_5').
:- pred subparagraph_g/1, gloss('Prohibited practice (g) – biometric categorisation deducing protected attributes'), source('celex:32024R1689/oj#art_5').
:- pred subparagraph_h/1, gloss('Prohibited practice (h) – real‑time remote biometric ID for law enforcement, except strictly necessary objectives'), source('celex:32024R1689/oj#art_5').

:- pred deployment_action/1, gloss('Any of placing on the market, putting into service or use'), source('celex:32024R1689/oj#art_5').
:- pred use/2, gloss('Use of an AI system by a user'), source('celex:32024R1689/oj#art_5').

:- pred employs_technique/2, gloss('AI system employs a given technique'), source('celex:32024R1689/oj#art_5').
:- pred with_objective_distortion/1, gloss('Objective to materially distort behaviour'), source('celex:32024R1689/oj#art_5').
:- pred with_effect_distortion/1, gloss('Effect of materially distorting behaviour'), source('celex:32024R1689/oj#art_5').
:- pred materially_distorts_behavior/1, gloss('Behaviour is materially distorted'), source('celex:32024R1689/oj#art_5').
:- pred impairs_informed_decision/1, gloss('Impairment of ability to make an informed decision'), source('celex:32024R1689/oj#art_5').
:- pred causes_significant_harm/1, gloss('Causes or is likely to cause significant harm'), source('celex:32024R1689/oj#art_5').

:- pred exploits_vulnerability/2, gloss('AI system exploits a vulnerability of a person or group'), source('celex:32024R1689/oj#art_5').
:- pred vulnerability_due_to/2, gloss('Vulnerability due to age, disability or socio‑economic situation'), source('celex:32024R1689/oj#art_5').

:- pred evaluation_classification/1, gloss('AI system evaluates or classifies persons over time'), source('celex:32024R1689/oj#art_5').
:- pred over_time/1, gloss('Operation over a certain period'), source('celex:32024R1689/oj#art_5').
:- pred based_on_social_behaviour/1, gloss('Based on social behaviour or inferred characteristics'), source('celex:32024R1689/oj#art_5').
:- pred leads_to_detrimental_treatment/1, gloss('Leads to detrimental or disproportionate treatment'), source('celex:32024R1689/oj#art_5').

:- pred makes_risk_assessment/1, gloss('AI system makes risk assessments of natural persons'), source('celex:32024R1689/oj#art_5').
:- pred based_solely_on_profiling/1, gloss('Assessment based solely on profiling or personality traits'), source('celex:32024R1689/oj#art_5').
:- pred support_human_assessment/1, gloss('Used to support human assessment based on objective verifiable facts'), source('celex:32024R1689/oj#art_5').

:- pred creates_facial_db_by_untargeted_scraping/1, gloss('Creates or expands facial‑recognition database by untargeted scraping'), source('celex:32024R1689/oj#art_5').

:- pred infers_emotions/1, gloss('Infers emotions of a natural person'), source('celex:32024R1689/oj#art_5').
:- pred in_context/2, gloss('Context of operation'), source('celex:32024R1689/oj#art_5').
:- pred intended_for_medical_or_safety/1, gloss('Intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').

:- pred biometric_categorisation_system/1, gloss('System categorises persons based on biometric data'), source('celex:32024R1689/oj#art_5').
:- pred deduces_attribute/2, gloss('System deduces protected attribute'), source('celex:32024R1689/oj#art_5').
:- pred lawfully_acquired_dataset_labeling/1, gloss('Labelling of lawfully acquired biometric datasets'), source('celex:32024R1689/oj#art_5').
:- pred law_enforcement_use/1, gloss('Use in the area of law enforcement'), source('celex:32024R1689/oj#art_5').

:- pred used_in_public_space/1, gloss('System used in a publicly accessible space'), source('celex:32024R1689/oj#art_5').
:- pred permitted_use_h/1, gloss('Use of real‑time remote biometric ID for law enforcement is permitted under listed objectives'), source('celex:32024R1689/oj#art_5').
:- pred objective_targeted_search/1, gloss('Targeted search for victims of abduction, trafficking or sexual exploitation, or missing persons'), source('celex:32024R1689/oj#art_5').
:- pred objective_prevent_threat/1, gloss('Prevention of a substantial imminent threat to life or safety, or a terrorist attack'), source('celex:32024R1689/oj#art_5').
:- pred objective_localise_identify/1, gloss('Localisation or identification of a suspect for criminal investigation or prosecution'), source('celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% General deployment actions
deployment_action(S) :-
    places_on_market(_,S).
deployment_action(S) :-
    putting_into_service(_,S).
deployment_action(S) :-
    use(_,S).

provenance(deployment_action/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% Sub‑paragraph (a)
subparagraph_a(S) :-
    deployment_action(S),
    (   employs_technique(S, subliminal)
    ;   employs_technique(S, purposefully_manipulative)
    ;   employs_technique(S, deceptive)
    ),
    (   with_objective_distortion(S)
    ;   with_effect_distortion(S)
    ),
    causes_significant_harm(S).

with_objective_distortion(S) :-
    materially_distorts_behavior(S),
    objective(S).

with_effect_distortion(S) :-
    materially_distorts_behavior(S),
    effect(S).

materially_distorts_behavior(S) :-
    impairs_informed_decision(S).

provenance(subparagraph_a/1, 'celex:32024R1689/oj#art_5').
provenance(with_objective_distortion/1, 'celex:32024R1689/oj#art_5').
provenance(with_effect_distortion/1, 'celex:32024R1689/oj#art_5').
provenance(materially_distorts_behavior/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% Sub‑paragraph (b)
subparagraph_b(S) :-
    deployment_action(S),
    exploits_vulnerability(S, Person),
    vulnerability_due_to(Person, age);
    vulnerability_due_to(Person, disability);
    vulnerability_due_to(Person, socio_economic_situation),
    (   with_objective_distortion(S)
    ;   with_effect_distortion(S)
    ),
    causes_significant_harm(S).

provenance(subparagraph_b/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% Sub‑paragraph (c)
subparagraph_c(S) :-
    deployment_action(S),
    evaluation_classification(S),
    over_time(S),
    based_on_social_behaviour(S),
    leads_to_detrimental_treatment(S).

provenance(subparagraph_c/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% Sub‑paragraph (d)
subparagraph_d(S) :-
    deployment_action(S),
    makes_risk_assessment(S),
    based_solely_on_profiling(S),
    \+ support_human_assessment(S).

provenance(subparagraph_d/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% Sub‑paragraph (e)
subparagraph_e(S) :-
    deployment_action(S),
    creates_facial_db_by_untargeted_scraping(S).

provenance(subparagraph_e/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% Sub‑paragraph (f)
subparagraph_f(S) :-
    deployment_action(S),
    infers_emotions(S),
    in_context(S, workplace_education),
    \+ intended_for_medical_or_safety(S).

provenance(subparagraph_f/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% Sub‑paragraph (g)
subparagraph_g(S) :-
    deployment_action(S),
    biometric_categorisation_system(S),
    deduces_attribute(S, race);
    deduces_attribute(S, political_opinion);
    deduces_attribute(S, trade_union_membership);
    deduces_attribute(S, religious_belief);
    deduces_attribute(S, sex_life);
    deduces_attribute(S, sexual_orientation),
    \+ lawfully_acquired_dataset_labeling(S),
    \+ law_enforcement_use(S).

provenance(subparagraph_g/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% Sub‑paragraph (h)
subparagraph_h(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_public_space(S),
    law_enforcement(S),
    \+ permitted_use_h(S).

permitted_use_h(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_public_space(S),
    law_enforcement(S),
    (   objective_targeted_search(S)
    ;   objective_prevent_threat(S)
    ;   objective_localise_identify(S)
    ).

provenance(subparagraph_h/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_use_h/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% Aggregate prohibition
prohibited_ai_practice(S) :-
    subparagraph_a(S).
prohibited_ai_practice(S) :-
    subparagraph_b(S).
prohibited_ai_practice(S) :-
    subparagraph_c(S).
prohibited_ai_practice(S) :-
    subparagraph_d(S).
prohibited_ai_practice(S) :-
    subparagraph_e(S).
prohibited_ai_practice(S) :-
    subparagraph_f(S).
prohibited_ai_practice(S) :-
    subparagraph_g(S).
prohibited_ai_practice(S) :-
    subparagraph_h(S).

provenance(prohibited_ai_practice/1, 'celex:32024R1689/oj#art_5').

% -----------------------------------------------------------------
% References (deduplicated)
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').
