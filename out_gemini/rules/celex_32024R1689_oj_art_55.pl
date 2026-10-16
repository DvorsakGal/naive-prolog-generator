% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6ce3696fadd788baa14f20a3c6bba6eaf1bee8225f798f31e1e26aa8c2fdaf86
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('General-purpose AI model that presents systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred provider_of_general_purpose_ai_model_with_systemic_risk/2, gloss('Entity that is provider of a general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred code_of_practice/1, gloss('Code of practice referred to in Article 56'), source('celex:32024R1689/oj#art_55').
:- pred approved_code_of_practice/1, gloss('Approved code of practice'), source('celex:32024R1689/oj#art_55').
:- pred adheres_to/2, gloss('Entity adheres to a code of practice'), source('celex:32024R1689/oj#art_55').
:- pred complies_with/2, gloss('Entity complies with a standard'), source('celex:32024R1689/oj#art_55').
:- pred published/1, gloss('Document or standard has been published'), source('celex:32024R1689/oj#art_55').
:- pred presumption_of_conformity/2, gloss('Presumption of conformity granted for an object under an instrument'), source('celex:32024R1689/oj#art_55').
:- pred confidential/1, gloss('Information subject to confidentiality obligations'), source('celex:32024R1689/oj#art_55').
:- pred obtained_pursuant_to_article_55/1, gloss('Information or documentation obtained under Article 55'), source('celex:32024R1689/oj#art_55').
:- pred must_perform(Actor, Object) , gloss('Actor is obligated to perform an action on an object'), source('celex:32024R1689/oj#art_55').
:- pred must_assess_and_mitigate(Actor, Object), gloss('Actor is obligated to assess and mitigate risks'), source('celex:32024R1689/oj#art_55').
:- pred must_report(Actor, Object), gloss('Actor is obligated to report information to specified bodies'), source('celex:32024R1689/oj#art_55').
:- pred must_ensure(Actor, Object), gloss('Actor is obligated to ensure an outcome or standard'), source('celex:32024R1689/oj#art_55').
:- pred permitted_reliance(Actor, Object), gloss('Actor is permitted to rely on a mechanism for compliance'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate(Actor, Object), gloss('Actor is obligated to demonstrate compliance means'), source('celex:32024R1689/oj#art_55').

% Paragraph 1: Definition of provider of general-purpose AI model with systemic risk
provider_of_general_purpose_ai_model_with_systemic_risk(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    general_purpose_ai_model_with_systemic_risk(M).

% Paragraph 1(a): Perform model evaluation including adversarial testing
must_perform(P, model_evaluation(M)) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M).

% Paragraph 1(b): Assess and mitigate systemic risks at Union level
must_assess_and_mitigate(P, systemic_risk(M, union_level)) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M).

% Paragraph 1(c): Track, document, and report serious incidents and corrective measures
must_report(P, serious_incidents_and_corrective_measures(M, recipients(ai_office, national_competent_authorities))) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M).

% Paragraph 1(d): Ensure cybersecurity protection of the model and its physical infrastructure
must_ensure(P, cybersecurity_protection(M, physical_infrastructure(M))) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M).

% Paragraph 2: Reliance on codes of practice until harmonised standard is published
permitted_reliance(P, reliance_on_code_of_practice(C, M)) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M),
    code_of_practice(C),
    \+ published(harmonised_standard(_S)).

% Presumption of conformity by European harmonised standards
presumption_of_conformity(M, harmonised_standard(S)) :-
    general_purpose_ai_model_with_systemic_risk(M),
    harmonised_standard(S),
    complies_with(M, S).

% Alternative adequate means must be demonstrated if not adhering to approved code or harmonised standard
must_demonstrate(P, alternative_adequate_means_of_compliance(M, commission)) :-
    provider_of_general_purpose_ai_model_with_systemic_risk(P, M),
    \+ (approved_code_of_practice(C), adheres_to(P, C)),
    \+ (harmonised_standard(S), complies_with(M, S)).

% Paragraph 3: Confidentiality of information or documentation obtained pursuant to Article 55
confidential(Info) :-
    obtained_pursuant_to_article_55(Info).

% Provenance facts
provenance(provider_of_general_purpose_ai_model_with_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(must_perform/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate/2, 'celex:32024R1689/oj#art_55').
provenance(must_report/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_reliance/2, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate/2, 'celex:32024R1689/oj#art_55').
provenance(confidential/1, 'celex:32024R1689/oj#art_55').

% References
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
