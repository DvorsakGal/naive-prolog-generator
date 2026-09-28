% unit      : celex:32024R1689/oj#art_5
% source    : celex:32024R1689%2Foj#art_5.xml
% model     : gpt-oss:120b-cloud
% prompt sha: 889574cd558a3c5df3e1dcf107a94cccbc3835ece7f9f83c960c46a201846e53
% signature: 9a545085be0feeadb8cbc09496f41df50bf4ee2fa5f0349daf74e28549a48022
% cached    : False
:- pred prohibited_ai_system/1, gloss('AI system whose placing on the market, putting into service or use is prohibited'), source('celex:32024R1689/oj#art_5').
:- pred deploys_subliminal_technique/1, gloss('system deploys subliminal techniques beyond a person’s consciousness'), source('celex:32024R1689/oj#art_5').
:- pred manipulative_deceptive_technique/1, gloss('system uses purposefully manipulative or deceptive techniques'), source('celex:32024R1689/oj#art_5').
:- pred objective_materially_distort_behavior/1, gloss('objective or effect is to materially distort the behaviour of a person or group'), source('celex:32024R1689/oj#art_5').
:- pred causes_significant_harm/1, gloss('system causes or is reasonably likely to cause significant harm'), source('celex:32024R1689/oj#art_5').
:- pred exploits_vulnerability_of_group/1, gloss('system exploits vulnerabilities of a natural person or specific group due to age, disability or social/economic situation'), source('celex:32024R1689/oj#art_5').
:- pred evaluation_or_classification_over_time/1, gloss('system evaluates or classifies natural persons or groups over time based on social behaviour or inferred characteristics'), source('celex:32024R1689/oj#art_5').
:- pred leads_to_detrimental_treatment/1, gloss('evaluation leads to detrimental or unfavourable treatment'), source('celex:32024R1689/oj#art_5').
:- pred risk_assessment_of_natural_person/1, gloss('system makes risk assessments of natural persons to predict criminal offence'), source('celex:32024R1689/oj#art_5').
:- pred based_on_profiling/1, gloss('assessment based solely on profiling or personality traits'), source('celex:32024R1689/oj#art_5').
:- pred support_human_assessment/1, gloss('system is used to support human assessment based on objective verifiable facts'), source('celex:32024R1689/oj#art_5').
:- pred creates_or_expands_facial_recognition_database/1, gloss('system creates or expands facial recognition databases through untargeted scraping'), source('celex:32024R1689/oj#art_5').
:- pred via_untargeted_scraping/1, gloss('creation/expansion is performed by untargeted scraping of internet or CCTV footage'), source('celex:32024R1689/oj#art_5').
:- pred infers_emotions/1, gloss('system infers emotions of a natural person'), source('celex:32024R1689/oj#art_5').
:- pred in_context/2, gloss('context in which the system is used'), source('celex:32024R1689/oj#art_5').
:- pred intended_for_medical_or_safety/1, gloss('system is intended for medical or safety reasons'), source('celex:32024R1689/oj#art_5').
:- pred deduces_characteristic/2, gloss('system deduces protected characteristic from biometric data'), source('celex:32024R1689/oj#art_5').
:- pred lawful_labeling_or_filtering/1, gloss('labelling or filtering of lawfully acquired biometric datasets for law‑enforcement purposes'), source('celex:32024R1689/oj#art_5').
:- pred permitted_use_rt_rbi/1, gloss('real‑time remote biometric identification system is used for a permitted law‑enforcement objective'), source('celex:32024R1689/oj#art_5').
:- pred objective_targeted_search/1, gloss('objective is targeted search for victims of abduction, trafficking or sexual exploitation, or missing persons'), source('celex:32024R1689/oj#art_5').
:- pred objective_prevent_threat/1, gloss('objective is prevention of a substantial imminent threat to life or safety, or a terrorist attack'), source('celex:32024R1689/oj#art_5').
:- pred objective_localise_suspect/1, gloss('objective is localisation or identification of a suspect for criminal investigation or prosecution'), source('celex:32024R1689/oj#art_5').
:- pred must_authorise_use/1, gloss('real‑time remote biometric identification system in publicly accessible spaces for law‑enforcement must be authorised'), source('celex:32024R1689/oj#art_5').
:- pred must_notify/2, gloss('relevant authorities must be notified of the use'), source('celex:32024R1689/oj#art_5').
:- pred data_protection_authority/1, gloss('national data protection authority'), source('celex:32024R1689/oj#art_5').
:- pred annual_report_obligation/1, gloss('national market surveillance authority must submit annual report to the Commission'), source('celex:32024R1689/oj#art_5').
:- pred publish_annual_report/0, gloss('Commission shall publish aggregated annual reports'), source('celex:32024R1689/oj#art_5').

% --- Prohibited AI practices -------------------------------------------------

prohibited_ai_system(S) :-
    (   deploys_subliminal_technique(S)
    ;   manipulative_deceptive_technique(S)
    ),
    objective_materially_distort_behavior(S),
    causes_significant_harm(S).

prohibited_ai_system(S) :-
    exploits_vulnerability_of_group(S),
    causes_significant_harm(S).

prohibited_ai_system(S) :-
    evaluation_or_classification_over_time(S),
    leads_to_detrimental_treatment(S).

prohibited_ai_system(S) :-
    risk_assessment_of_natural_person(S),
    based_on_profiling(S),
    \+ support_human_assessment(S).

prohibited_ai_system(S) :-
    creates_or_expands_facial_recognition_database(S),
    via_untargeted_scraping(S).

prohibited_ai_system(S) :-
    infers_emotions(S),
    (   in_context(S, workplace)
    ;   in_context(S, education)
    ),
    \+ intended_for_medical_or_safety(S).

prohibited_ai_system(S) :-
    biometric_categorisation_system(S),
    (   deduces_characteristic(S, race)
    ;   deduces_characteristic(S, political_opinion)
    ;   deduces_characteristic(S, trade_union_membership)
    ;   deduces_characteristic(S, religious_or_philosophical_belief)
    ;   deduces_characteristic(S, sex_life)
    ;   deduces_characteristic(S, sexual_orientation)
    ),
    \+ lawful_labeling_or_filtering(S).

prohibited_ai_system(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(_Loc),
    law_enforcement_authority(_Auth),
    \+ permitted_use_rt_rbi(S).

provenance(prohibited_ai_system/1, 'celex:32024R1689/oj#art_5').

% --- Permitted objectives for real‑time remote biometric identification --------

permitted_use_rt_rbi(S) :-
    real_time_remote_biometric_identification_system(S),
    objective_targeted_search(S).

permitted_use_rt_rbi(S) :-
    real_time_remote_biometric_identification_system(S),
    objective_prevent_threat(S).

permitted_use_rt_rbi(S) :-
    real_time_remote_biometric_identification_system(S),
    objective_localise_suspect(S).

provenance(permitted_use_rt_rbi/1, 'celex:32024R1689/oj#art_5').

% --- Authorisation and notification obligations ------------------------------

must_authorise_use(S) :-
    real_time_remote_biometric_identification_system(S),
    publicly_accessible_space(_Loc),
    law_enforcement_authority(_Auth).

provenance(must_authorise_use/1, 'celex:32024R1689/oj#art_5').

must_notify(Authority, S) :-
    must_authorise_use(S),
    (   market_surveillance_authority(Authority)
    ;   data_protection_authority(Authority)
    ).

provenance(must_notify/2, 'celex:32024R1689/oj#art_5').

% --- Reporting obligations ---------------------------------------------------

annual_report_obligation(Authority) :-
    market_surveillance_authority(Authority).

provenance(annual_report_obligation/1, 'celex:32024R1689/oj#art_5').

publish_annual_report :-
    true.

provenance(publish_annual_report/0, 'celex:32024R1689/oj#art_5').

% --- References --------------------------------------------------------------

references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5','celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_6').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5','celex:32024R1689/oj#art_5').
