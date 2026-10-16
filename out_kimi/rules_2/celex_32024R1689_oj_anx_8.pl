% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 10422fc138c77975859078756881c5a7bc0228c58ce44fa770db1eb357ad0f80
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred must_register_information/2, gloss('provider or deployer must submit and keep up to date specified information upon registration'), source('celex:32024R1689/oj#anx_8').

% Section A: Information to be submitted by providers of high-risk AI systems (Article 49(1))
must_register_information(Provider, high_risk_ai_system_registration(A, S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    section_a_information(A, Provider, S).

section_a_information(A, Provider, S) :-
    provider_details(A, Provider),
    submitted_by_another_person(A, Provider),
    authorised_representative_details(A, Provider),
    system_identification(A, S),
    intended_purpose_description(A, S),
    system_data_description(A, S),
    system_status(A, S),
    certificate_details(A, S),
    certificate_copy(A, S),
    member_states_market(A, S),
    declaration_of_conformity_copy(A, S),
    instructions_for_use(A, S),
    additional_information_url(A, S).

provider_details(A, Provider) :-
    name(A, Provider),
    address(A, Provider),
    contact_details(A, Provider).

submitted_by_another_person(A, Provider) :-
    on_behalf_of(A, Provider, Person),
    name(A, Person),
    address(A, Person),
    contact_details(A, Person).
submitted_by_another_person(A, Provider) :-
    \+ on_behalf_of(A, Provider, _).

authorised_representative_details(A, Provider) :-
    authorised_representative(Representative),
    provider_has_representative(Provider, Representative),
    name(A, Representative),
    address(A, Representative),
    contact_details(A, Representative).
authorised_representative_details(A, Provider) :-
    \+ (authorised_representative(Representative), provider_has_representative(Provider, Representative)).

system_identification(A, S) :-
    trade_name(A, S),
    additional_reference(A, S).

intended_purpose_description(A, S) :-
    intended_purpose_description(A, S, Components, Functions).

system_data_description(A, S) :-
    data_inputs_description(A, S),
    operating_logic_description(A, S).

system_status(A, S) :-
    status(A, S, on_market).
system_status(A, S) :-
    status(A, S, in_service).
system_status(A, S) :-
    status(A, S, no_longer_on_market).
system_status(A, S) :-
    status(A, S, recalled).

certificate_details(A, S) :-
    certificate_type(A, S, Type),
    certificate_number(A, S, Number),
    certificate_expiry(A, S, Expiry),
    issued_by_notified_body(A, S, Body),
    notified_body(Body),
    name_or_id(A, Body).
certificate_details(A, S) :-
    \+ certificate_exists(A, S).

certificate_copy(A, S) :-
    certificate_exists(A, S),
    scanned_copy(A, S, Copy).
certificate_copy(A, S) :-
    \+ certificate_exists(A, S).

member_states_market(A, S) :-
    member_states_placed_on_market(A, S, States).
member_states_market(A, S) :-
    member_states_put_into_service(A, S, States).
member_states_market(A, S) :-
    member_states_made_available(A, S, States).

declaration_of_conformity_copy(A, S) :-
    eu_declaration_of_conformity(D),
    belongs_to(D, S),
    copy(A, S, D).

instructions_for_use(A, S) :-
    electronic_instructions_for_use(A, S),
    \+ law_enforcement_migration_asylum_border_control_area(S).
instructions_for_use(A, S) :-
    law_enforcement_migration_asylum_border_control_area(S).

additional_information_url(A, S) :-
    url(A, S, URL).
additional_information_url(A, S) :-
    \+ url(A, S, _).

% Section B: Information to be submitted by providers for not-high-risk systems (Article 49(2))
must_register_information(Provider, not_high_risk_ai_system_registration(B, S)) :-
    provider(Provider),
    not_high_risk_under_art_6_par_3(S),
    section_b_information(B, Provider, S).

section_b_information(B, Provider, S) :-
    provider_details(B, Provider),
    submitted_by_another_person(B, Provider),
    authorised_representative_details(B, Provider),
    system_identification(B, S),
    intended_purpose_description(B, S),
    not_high_risk_conditions(B, S),
    not_high_risk_grounds_summary(B, S),
    system_status(B, S),
    member_states_market(B, S).

not_high_risk_conditions(B, S) :-
    condition_art_6_par_3(B, S, Conditions).

not_high_risk_grounds_summary(B, S) :-
    grounds_summary(B, S, Summary).

% Section C: Information to be submitted by deployers of high-risk AI systems (Article 49(3))
must_register_information(Deployer, deployer_high_risk_ai_system_registration(C, S)) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    section_c_information(C, Deployer, S).

section_c_information(C, Deployer, S) :-
    deployer_details(C, Deployer),
    submitted_by_another_person_deployer(C, Deployer),
    provider_database_url(C, S),
    fundamental_rights_impact_summary(C, Deployer, S),
    data_protection_impact_summary(C, Deployer, S).

deployer_details(C, Deployer) :-
    name(C, Deployer),
    address(C, Deployer),
    contact_details(C, Deployer).

submitted_by_another_person_deployer(C, Deployer) :-
    on_behalf_of(C, Deployer, Person),
    name(C, Person),
    address(C, Person),
    contact_details(C, Person).
submitted_by_another_person_deployer(C, Deployer) :-
    \+ on_behalf_of(C, Deployer, _).

provider_database_url(C, S) :-
    url(C, S, URL),
    eu_database_entry(URL, S).

fundamental_rights_impact_summary(C, Deployer, S) :-
    fundamental_rights_impact_assessment(Assessment),
    conducted_by(Assessment, Deployer),
    for_system(Assessment, S),
    summary(C, Assessment).

data_protection_impact_summary(C, Deployer, S) :-
    data_protection_impact_assessment(Assessment),
    conducted_under(Assessment, gdpr_art_35),
    summary(C, Assessment).
data_protection_impact_summary(C, Deployer, S) :-
    data_protection_impact_assessment(Assessment),
    conducted_under(Assessment, directive_art_27),
    specified_in_art_26_par_8(Assessment),
    summary(C, Assessment).
data_protection_impact_summary(C, Deployer, S) :-
    \+ (data_protection_impact_assessment(Assessment), conducted_by(Assessment, Deployer), for_system(Assessment, S)).

% Provenance
provenance(must_register_information/2, 'celex:32024R1689/oj#anx_8').
provenance(section_a_information/3, 'celex:32024R1689/oj#anx_8').
provenance(section_b_information/3, 'celex:32024R1689/oj#anx_8').
provenance(section_c_information/3, 'celex:32024R1689/oj#anx_8').

% References
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
