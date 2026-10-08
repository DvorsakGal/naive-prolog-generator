% unit       : celex:32024R1689/oj#art_41
% title      : Common specifications
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : de64c4b698d75552dc72b7c0bcc1cbe9b6259462506dc852050804c72f34d698
% model      : gpt-oss:120b-cloud
% prompt sha : 034eb7cfe1b166e90d2b2b4e5b967111e50a4e920957aa2c7190712ac2d93a09
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_41').
:- pred advisory_forum/1, gloss('advisory forum referred to in art_67'), source('celex:32024R1689/oj#art_41').
:- pred committee/1, gloss('committee referred to in art_22'), source('celex:32024R1689/oj#art_41').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_41').
:- pred harmonised_standard/1, gloss('harmonised standard'), source('celex:32024R1689/oj#art_41').
:- pred implementing_act/1, gloss('implementing act establishing common specifications'), source('celex:32024R1689/oj#art_41').
:- pred common_specification/1, gloss('common specification'), source('celex:32024R1689/oj#art_41').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_41').
:- pred general_purpose_ai_model/1, gloss('general‑purpose AI model'), source('celex:32024R1689/oj#art_41').
:- pred in_conformity_with_common_specifications/1, gloss('in conformity with the common specifications'), source('celex:32024R1689/oj#art_41').
:- pred technical_solution_meets_requirements/1, gloss('technical solution meeting the required requirements'), source('celex:32024R1689/oj#art_41').
:- pred assessment_positive/1, gloss('assessment by the Commission found appropriate'), source('celex:32024R1689/oj#art_41').

%--- Permission to adopt implementing acts establishing common specifications -----------------
permitted_adopt_common_specifications(Commission, Act) :-
    commission(Commission),
    implementing_act(Act),
    condition_common_specifications_adoptable(Act).

condition_common_specifications_adoptable(Act) :-
    commission_requested_standardisation(Commission),
    (   request_not_accepted(Commission)
    ;   standards_not_delivered(Commission)
    ;   standards_insufficient_fundamental_rights(Commission)
    ;   standards_not_comply(Commission)
    ),
    no_harmonised_standard_reference_published(Act).

commission_requested_standardisation(Commission) :-
    commission(Commission).

request_not_accepted(Commission) :-
    commission(Commission).

standards_not_delivered(Commission) :-
    commission(Commission).

standards_insufficient_fundamental_rights(Commission) :-
    commission(Commission).

standards_not_comply(Commission) :-
    commission(Commission).

no_harmonised_standard_reference_published(_Act).

%--- Obligation to consult the advisory forum when drafting common specifications ----------
must_consult(Commission, AdvisoryForum) :-
    commission(Commission),
    advisory_forum(AdvisoryForum).

%--- Obligation to adopt implementing acts in accordance with the examination procedure ----------
must_adopt_implementing_act(Commission, Act) :-
    commission(Commission),
    implementing_act(Act),
    examination_procedure_applies(Act).

examination_procedure_applies(_Act).

%--- Obligation to inform the committee before preparing a draft implementing act ----------
must_inform_before_draft(Commission, Committee) :-
    commission(Commission),
    committee(Committee),
    condition_common_specifications_fulfilled(Commission).

condition_common_specifications_fulfilled(_Commission).

%--- Presumption of conformity for systems complying with common specifications ----------
presumed_conformity(System) :-
    (   high_risk_ai_system(System)
    ;   general_purpose_ai_model(System)
    ),
    in_conformity_with_common_specifications(System).

%--- Obligation to assess a harmonised standard when it is proposed for publication ----------
must_assess_harmonised_standard(Commission, Standard) :-
    commission(Commission),
    harmonised_standard(Standard).

%--- Obligation to repeal implementing acts when a harmonised standard reference is published ----------
must_repeal_implementing_act(Commission, Act) :-
    commission(Commission),
    implementing_act(Act),
    reference_published(Standard),
    harmonised_standard(Standard).

reference_published(_Standard).

%--- Obligation on providers to justify non‑compliance ----------
must_justify_non_compliance(Provider, Solution) :-
    provider(Provider),
    (   high_risk_ai_system(System)
    ;   general_purpose_ai_model(System)
    ),
    not_compliant_with_common_specifications(Provider, System),
    technical_solution_meets_requirements(Solution).

not_compliant_with_common_specifications(_Provider, _System).

%--- Obligations related to Member State concerns ----------
must_inform_member_state(MemberState, Commission) :-
    member_state(MemberState),
    commission(Commission).

must_assess_information(Commission) :-
    commission(Commission).

permitted_amend_implementing_act(Commission, Act) :-
    commission(Commission),
    implementing_act(Act),
    assessment_positive(Commission).

%--- Provenance -------------------------------------------------------------------------
provenance(permitted_adopt_common_specifications/2, 'celex:32024R1689/oj#art_41').
provenance(must_consult/2, 'celex:32024R1689/oj#art_41').
provenance(must_adopt_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_before_draft/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_41').
provenance(must_assess_harmonised_standard/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_implementing_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_justify_non_compliance/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_member_state/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess_information/1, 'celex:32024R1689/oj#art_41').
provenance(permitted_amend_implementing_act/2, 'celex:32024R1689/oj#art_41').

%--- References -------------------------------------------------------------------------
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
