% unit       : celex:32024R1689/oj#art_31
% title      : Requirements relating to notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : gpt-oss:120b-cloud
% prompt sha : 2ab95ee9ad5595031ba36dc8b44c28e2207ca9dbbfbabfe040ba431c866a025f
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
% ---------- predicate declarations ----------
:- pred required_establishment/1, gloss('must be established under national law of a Member State'), source('celex:32024R1689/oj#art_31').
:- pred required_legal_personality/1, gloss('must have legal personality'), source('celex:32024R1689/oj#art_31').
:- pred required_organisational_requirements/1, gloss('must satisfy organisational requirements'), source('celex:32024R1689/oj#art_31').
:- pred required_quality_management_requirements/1, gloss('must satisfy quality‑management requirements'), source('celex:32024R1689/oj#art_31').
:- pred required_resources_requirements/1, gloss('must satisfy resources requirements'), source('celex:32024R1689/oj#art_31').
:- pred required_process_requirements/1, gloss('must satisfy process requirements'), source('celex:32024R1689/oj#art_31').
:- pred required_cybersecurity_requirements/1, gloss('must satisfy suitable cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred required_independence_from_provider/1, gloss('must be independent of the provider of a high‑risk AI system'), source('celex:32024R1689/oj#art_31').
:- pred required_independence_from_operator/1, gloss('must be independent of any other operator having an economic interest'), source('celex:32024R1689/oj#art_31').
:- pred required_independence_from_competitor/1, gloss('must be independent of any competitor of the provider'), source('celex:32024R1689/oj#art_31').
:- pred permitted_use_of_assessed_systems_for_operations/1, gloss('may use assessed high‑risk AI systems necessary for its own operations'), source('celex:32024R1689/oj#art_31').
:- pred permitted_use_of_assessed_systems_for_personal_purposes/1, gloss('may use assessed high‑risk AI systems for personal purposes'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_direct_involvement_in_design/1, gloss('shall not be directly involved in design of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_direct_involvement_in_development/1, gloss('shall not be directly involved in development of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_direct_involvement_in_marketing/1, gloss('shall not be directly involved in marketing of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_direct_involvement_in_use/1, gloss('shall not be directly involved in use of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred prohibited_conflict_of_interest/1, gloss('shall not engage in any activity that might conflict with independence of judgement or integrity'), source('celex:32024R1689/oj#art_31').
:- pred required_impartiality/1, gloss('shall safeguard independence, objectivity and impartiality'), source('celex:32024R1689/oj#art_31').
:- pred required_confidentiality_procedures/1, gloss('shall have documented procedures ensuring confidentiality of information'), source('celex:32024R1689/oj#art_31').
:- pred required_liability_insurance/1, gloss('shall take out appropriate liability insurance'), source('celex:32024R1689/oj#art_31').
:- pred required_competence/1, gloss('shall have sufficient internal competences and permanent availability of qualified personnel'), source('celex:32024R1689/oj#art_31').
:- pred required_participation_in_coordination/1, gloss('shall participate in coordination activities and European standardisation organisations'), source('celex:32024R1689/oj#art_31').

% ---------- condition predicates (used in rule bodies) ----------
:- pred under_national_law/1, gloss('established under the national law of a Member State'), source('celex:32024R1689/oj#art_31').
:- pred has_legal_personality/1, gloss('has legal personality'), source('celex:32024R1689/oj#art_31').
:- pred meets_organisational_requirements/1, gloss('meets organisational requirements'), source('celex:32024R1689/oj#art_31').
:- pred meets_quality_management_requirements/1, gloss('meets quality‑management requirements'), source('celex:32024R1689/oj#art_31').
:- pred meets_resources_requirements/1, gloss('meets resources requirements'), source('celex:32024R1689/oj#art_31').
:- pred meets_process_requirements/1, gloss('meets process requirements'), source('celex:32024R1689/oj#art_31').
:- pred meets_cybersecurity_requirements/1, gloss('meets suitable cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_provider/1, gloss('independent of the provider of a high‑risk AI system'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_operator/1, gloss('independent of any other operator having an economic interest'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_competitor/1, gloss('independent of any competitor of the provider'), source('celex:32024R1689/oj#art_31').
:- pred uses_assessed_systems_for_operations/1, gloss('uses assessed high‑risk AI systems necessary for its operations'), source('celex:32024R1689/oj#art_31').
:- pred uses_assessed_systems_for_personal_purposes/1, gloss('uses assessed high‑risk AI systems for personal purposes'), source('celex:32024R1689/oj#art_31').
:- pred involved_in_design/1, gloss('directly involved in design of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred involved_in_development/1, gloss('directly involved in development of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred involved_in_marketing/1, gloss('directly involved in marketing of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred involved_in_use/1, gloss('directly involved in use of high‑risk AI systems'), source('celex:32024R1689/oj#art_31').
:- pred conflict_of_interest/1, gloss('engages in activity that might conflict with independence or integrity'), source('celex:32024R1689/oj#art_31').
:- pred impartiality_documented/1, gloss('has documented structure and procedures to safeguard impartiality'), source('celex:32024R1689/oj#art_31').
:- pred confidentiality_procedures_in_place/1, gloss('has documented confidentiality procedures'), source('celex:32024R1689/oj#art_31').
:- pred liability_insurance_taken/1, gloss('has taken out appropriate liability insurance'), source('celex:32024R1689/oj#art_31').
:- pred sufficient_competence/1, gloss('has sufficient internal competences and permanent qualified personnel'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_coordination/1, gloss('participates in coordination activities and standardisation organisations'), source('celex:32024R1689/oj#art_31').

% ---------- rules ----------
required_establishment(NB) :-
    notified_body(NB),
    under_national_law(NB).

required_legal_personality(NB) :-
    notified_body(NB),
    has_legal_personality(NB).

required_organisational_requirements(NB) :-
    notified_body(NB),
    meets_organisational_requirements(NB).

required_quality_management_requirements(NB) :-
    notified_body(NB),
    meets_quality_management_requirements(NB).

required_resources_requirements(NB) :-
    notified_body(NB),
    meets_resources_requirements(NB).

required_process_requirements(NB) :-
    notified_body(NB),
    meets_process_requirements(NB).

required_cybersecurity_requirements(NB) :-
    notified_body(NB),
    meets_cybersecurity_requirements(NB).

required_independence_from_provider(NB) :-
    notified_body(NB),
    independent_of_provider(NB).

required_independence_from_operator(NB) :-
    notified_body(NB),
    independent_of_operator(NB).

required_independence_from_competitor(NB) :-
    notified_body(NB),
    independent_of_competitor(NB).

permitted_use_of_assessed_systems_for_operations(NB) :-
    notified_body(NB),
    uses_assessed_systems_for_operations(NB).

permitted_use_of_assessed_systems_for_personal_purposes(NB) :-
    notified_body(NB),
    uses_assessed_systems_for_personal_purposes(NB).

prohibited_direct_involvement_in_design(NB) :-
    notified_body(NB),
    involved_in_design(NB).

prohibited_direct_involvement_in_development(NB) :-
    notified_body(NB),
    involved_in_development(NB).

prohibited_direct_involvement_in_marketing(NB) :-
    notified_body(NB),
    involved_in_marketing(NB).

prohibited_direct_involvement_in_use(NB) :-
    notified_body(NB),
    involved_in_use(NB).

prohibited_conflict_of_interest(NB) :-
    notified_body(NB),
    conflict_of_interest(NB).

required_impartiality(NB) :-
    notified_body(NB),
    impartiality_documented(NB).

required_confidentiality_procedures(NB) :-
    notified_body(NB),
    confidentiality_procedures_in_place(NB).

required_liability_insurance(NB) :-
    notified_body(NB),
    liability_insurance_taken(NB).

required_competence(NB) :-
    notified_body(NB),
    sufficient_competence(NB).

required_participation_in_coordination(NB) :-
    notified_body(NB),
    participates_in_coordination(NB).

% ---------- provenance ----------
provenance(required_establishment/1, 'celex:32024R1689/oj#art_31').
provenance(required_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(required_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_quality_management_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_resources_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_process_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_provider/1, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_operator/1, 'celex:32024R1689/oj#art_31').
provenance(required_independence_from_competitor/1, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_systems_for_operations/1, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_systems_for_personal_purposes/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement_in_design/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement_in_development/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement_in_marketing/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_direct_involvement_in_use/1, 'celex:32024R1689/oj#art_31').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_31').
provenance(required_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(required_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(required_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(required_competence/1, 'celex:32024R1689/oj#art_31').
provenance(required_participation_in_coordination/1, 'celex:32024R1689/oj#art_31').

% ---------- references ----------
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
