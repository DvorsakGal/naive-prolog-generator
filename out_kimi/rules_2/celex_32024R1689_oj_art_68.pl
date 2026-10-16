% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 6c9668b0396c9ecdf6fbf36e5d940c1a1be560b1168282c0d2405154e6ed8dcc
% cached     : False
% title      : Scientific panel of independent experts
:- pred scientific_panel/1, gloss('scientific panel of independent experts'), source('celex:32024R1689/oj#art_68').
:- pred expert/1, gloss('expert on the scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred task_support_ai_office/2, gloss('task supporting the AI Office'), source('celex:32024R1689/oj#art_68').
:- pred task_support_market_surveillance/2, gloss('task supporting market surveillance authorities'), source('celex:32024R1689/oj#art_68').
:- pred task_support_cross_border/2, gloss('task supporting cross-border market surveillance activities'), source('celex:32024R1689/oj#art_68').
:- pred task_support_safeguard_procedure/2, gloss('task supporting Union safeguard procedure'), source('celex:32024R1689/oj#art_68').
:- pred alert_systemic_risk/2, gloss('alert regarding possible systemic risks of general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred contribute_evaluation_tools/2, gloss('contribute to development of evaluation tools and methodologies'), source('celex:32024R1689/oj#art_68').
:- pred advise_classification_systemic_risk/2, gloss('provide advice on classification of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#art_68').
:- pred advise_classification_general/2, gloss('provide advice on classification of various general-purpose AI models and systems'), source('celex:32024R1689/oj#art_68').
:- pred contribute_tools_templates/2, gloss('contribute to development of tools and templates'), source('celex:32024R1689/oj#art_68').
:- pred independence_from_provider/1, gloss('independence from any provider of AI systems or general-purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred diligence_accuracy_objectivity/1, gloss('ability to carry out activities diligently, accurately and objectively'), source('celex:32024R1689/oj#art_68').
:- pred particular_expertise_ai/1, gloss('particular expertise and competence in the field of AI'), source('celex:32024R1689/oj#art_68').
:- pred impartiality_and_objectivity/1, gloss('perform tasks with impartiality and objectivity'), source('celex:32024R1689/oj#art_68').
:- pred ensure_confidentiality/1, gloss('ensure confidentiality of information and data'), source('celex:32024R1689/oj#art_68').
:- pred no_external_instructions/1, gloss('neither seek nor take instructions from anyone'), source('celex:32024R1689/oj#art_68').
:- pred declaration_of_interests/1, gloss('declaration of interests drawn up by expert'), source('celex:32024R1689/oj#art_68').
:- pred made_publicly_available/1, gloss('made publicly available'), source('celex:32024R1689/oj#art_68').
:- pred manage_conflicts_of_interest/1, gloss('systems and procedures to manage and prevent potential conflicts of interest'), source('celex:32024R1689/oj#art_68').
:- pred fair_gender_representation/1, gloss('fair gender representation'), source('celex:32024R1689/oj#art_68').
:- pred fair_geographical_representation/1, gloss('fair geographical representation'), source('celex:32024R1689/oj#art_68').
:- pred implementing_act_scientific_panel/1, gloss('implementing act establishing scientific panel'), source('celex:32024R1689/oj#art_68').

must_adopt_implementing_acts(commission, establishment_of(scientific_panel)) :-
    purpose_support_enforcement(scientific_panel).

purpose_support_enforcement(scientific_panel).

scientific_panel(S) :-
    implementing_act_scientific_panel(S).

expert(E) :-
    scientific_panel(S),
    selected_by(E, commission),
    up_to_date_scientific_technical_expertise(E, ai),
    particular_expertise_ai(E),
    independence_from_provider(E),
    diligence_accuracy_objectivity(E).

fair_gender_and_geographical_representation(S) :-
    scientific_panel(S),
    fair_gender_representation(S),
    fair_geographical_representation(S).

determine_number_of_experts(commission, S) :-
    scientific_panel(S),
    in_consultation_with(commission, board).

task_support_ai_office(S, alert_systemic_risk(M)) :-
    scientific_panel(S),
    general_purpose_ai_model(M),
    alert_systemic_risk(S, M).

task_support_ai_office(S, contribute_evaluation_tools(M)) :-
    scientific_panel(S),
    general_purpose_ai_model(M).

task_support_ai_office(S, advise_classification_systemic_risk(M)) :-
    scientific_panel(S),
    general_purpose_ai_model(M),
    systemic_risk_present(M).

task_support_ai_office(S, advise_classification_general(M)) :-
    scientific_panel(S),
    general_purpose_ai_model(M).

task_support_ai_office(S, contribute_tools_templates) :-
    scientific_panel(S).

task_support_market_surveillance(S, Authority) :-
    scientific_panel(S),
    market_surveillance_authority(Authority),
    at_request(Authority).

task_support_cross_border(S, Activity) :-
    scientific_panel(S),
    cross_border_market_surveillance(Activity).

task_support_safeguard_procedure(S, Procedure) :-
    scientific_panel(S),
    union_safeguard_procedure(Procedure).

impartiality_and_objectivity(E) :-
    expert(E).

ensure_confidentiality(E) :-
    expert(E).

no_external_instructions(E) :-
    expert(E).

declaration_of_interests(E) :-
    expert(E).

made_publicly_available(declaration_of_interests(E)) :-
    expert(E).

manage_conflicts_of_interest(ai_office) :-
    scientific_panel(_S).

implementing_act_scientific_panel(S) :-
    scientific_panel(S),
    includes_provisions_on(S, conditions_for_alerts),
    includes_provisions_on(S, procedures_for_alerts),
    includes_provisions_on(S, detailed_arrangements_for_alerts),
    includes_provisions_on(S, request_assistance_ai_office).

provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(task_support_ai_office/2, 'celex:32024R1689/oj#art_68').
provenance(task_support_market_surveillance/2, 'celex:32024R1689/oj#art_68').
provenance(task_support_cross_border/2, 'celex:32024R1689/oj#art_68').
provenance(task_support_safeguard_procedure/2, 'celex:32024R1689/oj#art_68').
provenance(alert_systemic_risk/2, 'celex:32024R1689/oj#art_68').
provenance(contribute_evaluation_tools/2, 'celex:32024R1689/oj#art_68').
provenance(advise_classification_systemic_risk/2, 'celex:32024R1689/oj#art_68').
provenance(advise_classification_general/2, 'celex:32024R1689/oj#art_68').
provenance(contribute_tools_templates/2, 'celex:32024R1689/oj#art_68').
provenance(independence_from_provider/1, 'celex:32024R1689/oj#art_68').
provenance(diligence_accuracy_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_ai/1, 'celex:32024R1689/oj#art_68').
provenance(impartiality_and_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(no_external_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(made_publicly_available/1, 'celex:32024R1689/oj#art_68').
provenance(manage_conflicts_of_interest/1, 'celex:32024R1689/oj#art_68').
provenance(fair_gender_and_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(fair_gender_representation/1, 'celex:32024R1689/oj#art_68').
provenance(fair_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(implementing_act_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_68').
provenance(purpose_support_enforcement/1, 'celex:32024R1689/oj#art_68').
provenance(determine_number_of_experts/2, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
