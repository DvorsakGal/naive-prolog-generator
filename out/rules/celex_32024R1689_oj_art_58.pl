% unit       : celex:32024R1689/oj#art_58
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : gpt-oss:120b-cloud
% prompt sha : ab98d92772676a9da57bc605f5c19ddf4a6fdd553e0dd9bef51547203998cd5c
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred ai_regulatory_sandbox/1, gloss('AI regulatory sandbox'), source('celex:32024R1689/oj#art_58').
:- pred implementing_act/1, gloss('Implementing act for AI regulatory sandbox'), source('celex:32024R1689/oj#art_58').
:- pred applying_provider/1, gloss('Provider applying for sandbox'), source('celex:32024R1689/oj#art_58').
:- pred prospective_provider/1, gloss('Prospective provider for sandbox'), source('celex:32024R1689/oj#art_58').
:- pred fulfills_eligibility/1, gloss('Provider fulfills eligibility and selection criteria'), source('celex:32024R1689/oj#art_58').
:- pred small_and_medium_enterprise/1, gloss('SME'), source('celex:32024R1689/oj#art_58').
:- pred participant_in_sandbox/2, gloss('Participant in sandbox'), source('celex:32024R1689/oj#art_58').

required_adopt_implementing_acts(_Commission, Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

permitted_access_to_sandbox(Provider, Sandbox) :-
    (applying_provider(Provider) ; prospective_provider(Provider)),
    fulfills_eligibility(Provider),
    ai_regulatory_sandbox(Sandbox).

must_inform_applicant(NCA, Provider) :-
    national_competent_authority(NCA),
    (applying_provider(Provider) ; prospective_provider(Provider)).

required_broad_equal_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

permitted_partnership_application(Provider, Deployer) :-
    provider(Provider),
    deployer(Deployer),
    ai_regulatory_sandbox(_Sandbox).

required_flexibility_for_nca(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox).

required_free_access_for_sme(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

permitted_free_access_for_sme(SME, Sandbox) :-
    small_and_medium_enterprise(SME),
    ai_regulatory_sandbox(Sandbox).

required_facilitate_compliance_with_conformity_assessment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

required_facilitate_involvement_of_actors(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

required_simple_intelligible_procedures(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

required_mutual_recognition_across_union(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

required_time_limit_for_participation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

permitted_extension_by_nca(NCA, Sandbox) :-
    national_competent_authority(NCA),
    ai_regulatory_sandbox(Sandbox).

required_facilitate_development_of_tools(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).

must_direct_to_predeployment_services(ProspectiveProvider, Sandbox) :-
    prospective_provider(ProspectiveProvider),
    ai_regulatory_sandbox(Sandbox).

must_agree_testing_terms(NCA, Participant, Sandbox) :-
    national_competent_authority(NCA),
    participant_in_sandbox(Participant, Sandbox).

must_protect_fundamental_rights(NCA, Participant, Sandbox) :-
    national_competent_authority(NCA),
    participant_in_sandbox(Participant, Sandbox).

must_cooperate_with_other_nca(NCA, OtherNCA) :-
    national_competent_authority(NCA),
    national_competent_authority(OtherNCA),
    NCA \= OtherNCA.

provenance(required_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(permitted_access_to_sandbox/2, 'celex:32024R1689/oj#art_58').
provenance(must_inform_applicant/2, 'celex:32024R1689/oj#art_58').
provenance(required_broad_equal_access/1, 'celex:32024R1689/oj#art_58').
provenance(permitted_partnership_application/2, 'celex:32024R1689/oj#art_58').
provenance(required_flexibility_for_nca/2, 'celex:32024R1689/oj#art_58').
provenance(required_free_access_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(permitted_free_access_for_sme/2, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_compliance_with_conformity_assessment/1, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_involvement_of_actors/1, 'celex:32024R1689/oj#art_58').
provenance(required_simple_intelligible_procedures/1, 'celex:32024R1689/oj#art_58').
provenance(required_mutual_recognition_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(required_time_limit_for_participation/1, 'celex:32024R1689/oj#art_58').
provenance(permitted_extension_by_nca/2, 'celex:32024R1689/oj#art_58').
provenance(required_facilitate_development_of_tools/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_to_predeployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_testing_terms/3, 'celex:32024R1689/oj#art_58').
provenance(must_protect_fundamental_rights/3, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_with_other_nca/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
