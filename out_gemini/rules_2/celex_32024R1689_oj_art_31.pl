% unit       : celex:32024R1689/oj#art_31
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : ec754106daa7ead8deb29d5bb9a0dd14c2abfe980c7dba560ba0d1b3bb024f9d
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 38b9aa97c9158f9cc8d6cb7c84190d58b39e411f06f114fa5ec25b2176c54e97
% cached     : False
% title      : Requirements relating to notified bodies
:- pred established_under_national_law/1, gloss('Body is established under the national law of a Member State'), source('celex:32024R1689/oj#art_31').
:- pred has_legal_personality/1, gloss('Body has legal personality'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_organisational_requirements/1, gloss('Notified body satisfies organisational, quality, resource, process and cybersecurity requirements'), source('celex:32024R1689/oj#art_31').
:- pred ensures_confidence_in_performance/1, gloss('Structure and operation ensures confidence in performance and results'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_provider_and_operators/2, gloss('Notified body is independent of the provider, interested operators, and competitors for an AI system'), source('celex:32024R1689/oj#art_31').
:- pred independent_of_conflicts/1, gloss('Body and staff are free of conflicts with independence or involvement in assessed systems'), source('celex:32024R1689/oj#art_31').
:- pred safeguards_impartiality/1, gloss('Body documents and implements structures and procedures safeguarding impartiality'), source('celex:32024R1689/oj#art_31').
:- pred maintains_confidentiality_procedures/1, gloss('Body has procedures ensuring confidentiality and professional secrecy under Article 78'), source('celex:32024R1689/oj#art_31').
:- pred has_proportionate_procedures/1, gloss('Body has procedures taking account of provider size, sector, structure, and AI complexity'), source('celex:32024R1689/oj#art_31').
:- pred has_liability_coverage/1, gloss('Body has liability insurance or liability is assumed/held directly by the Member State'), source('celex:32024R1689/oj#art_31').
:- pred has_professional_integrity_and_competence/1, gloss('Body has capability and competence to carry out all tasks with professional integrity'), source('celex:32024R1689/oj#art_31').
:- pred has_sufficient_internal_competences/1, gloss('Body has permanent personnel with required expertise on AI systems, data and Chapter III Section 2'), source('celex:32024R1689/oj#art_31').
:- pred participates_in_coordination_and_standardisation/1, gloss('Body participates in coordination activities and European standardisation organisations or keeps up to date'), source('celex:32024R1689/oj#art_31').
:- pred satisfies_notified_body_requirements/1, gloss('Notified body meets the statutory requirements of Article 31'), source('celex:32024R1689/oj#art_31').
:- pred exempt_liability_insurance/1, gloss('Notified body is exempt from liability insurance because the Member State assumes liability or performs assessment directly'), source('celex:32024R1689/oj#art_31').

% Paragraph 1-12 general qualification
satisfies_notified_body_requirements(B) :-
    notified_body(B),
    established_under_national_law(B),
    has_legal_personality(B),
    satisfies_organisational_requirements(B),
    ensures_confidence_in_performance(B),
    independent_of_conflicts(B),
    safeguards_impartiality(B),
    maintains_confidentiality_procedures(B),
    has_proportionate_procedures(B),
    has_liability_coverage(B),
    has_professional_integrity_and_competence(B),
    has_sufficient_internal_competences(B),
    participates_in_coordination_and_standardisation(B).

% Paragraph 9: Liability insurance or Member State assumption
has_liability_coverage(B) :-
    exempt_liability_insurance(B).

% Paragraph 12: Mandatory participation in coordination activities (Article 38)
must_comply(B, coordination_activities) :-
    notified_body(B).

% Provenance
provenance(satisfies_notified_body_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(has_liability_coverage/1, 'celex:32024R1689/oj#art_31').
provenance(must_comply/2, 'celex:32024R1689/oj#art_31').

% References
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').
