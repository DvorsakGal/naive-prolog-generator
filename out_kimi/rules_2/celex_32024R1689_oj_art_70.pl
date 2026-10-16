% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : cffbd9eb8c2476e322c8d384f8e90479f5702a53029045d002e1c4aef526cf21
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred must_designate_competent_authorities/1, gloss('Member State shall establish or designate national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate_authority_identity/2, gloss('Member State shall communicate identity and tasks of authorities to Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_make_contact_information_public/1, gloss('Member State shall make publicly available information on how competent authorities and single points of contact can be contacted'), source('celex:32024R1689/oj#art_70').
:- pred must_designate_single_point_of_contact/2, gloss('Member State shall designate a market surveillance authority to act as single point of contact and notify Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_adequate_resources/1, gloss('Member State shall ensure national competent authorities are provided with adequate resources'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_cybersecurity/1, gloss('national competent authorities shall take appropriate measures to ensure adequate cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred must_report_resources/2, gloss('Member State shall report to Commission on status of financial and human resources'), source('celex:32024R1689/oj#art_70').
:- pred may_provide_guidance/2, gloss('national competent authorities may provide guidance and advice on implementation'), source('celex:32024R1689/oj#art_70').

must_designate_competent_authorities(MemberState) :-
    member_state(MemberState),
    at_least_one_notifying_authority_designated(MemberState),
    at_least_one_market_surveillance_authority_designated(MemberState).

must_communicate_authority_identity(MemberState, Commission) :-
    member_state(MemberState),
    union_institution(Commission),
    notifying_authority_designated(MemberState, Authority),
    market_surveillance_authority_designated(MemberState, Authority2),
    (tasks_of_authority(Authority, Tasks); tasks_of_authority(Authority2, Tasks)),
    (subsequent_changes_to_authority(Authority); subsequent_changes_to_authority(Authority2)).

must_make_contact_information_public(MemberState) :-
    member_state(MemberState),
    contact_information(competent_authorities_and_single_points_of_contact, Info),
    electronic_communication_means(Info),
    deadline(Info, date(2025, 8, 2)).

must_designate_single_point_of_contact(MemberState, Commission) :-
    member_state(MemberState),
    union_institution(Commission),
    market_surveillance_authority_designated(MemberState, Authority),
    single_point_of_contact_for(Authority, 'celex:32024R1689/oj'),
    must_notify(Commission, identity(single_point_of_contact(Authority))).

must_ensure_adequate_resources(MemberState) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    under_authority_of(MemberState, Authority),
    adequate_technical_resources(Authority),
    adequate_financial_resources(Authority),
    adequate_human_resources(Authority),
    adequate_infrastructure(Authority),
    sufficient_personnel_permanently_available(Authority),
    competences_include(Authority, understanding(ai_technologies)),
    competences_include(Authority, understanding(data_computing)),
    competences_include(Authority, understanding(personal_data_protection)),
    competences_include(Authority, understanding(cybersecurity)),
    competences_include(Authority, understanding(fundamental_rights)),
    competences_include(Authority, understanding(health_and_safety_risks)),
    competences_include(Authority, knowledge(existing_standards)),
    competences_include(Authority, knowledge(legal_requirements)).

must_ensure_cybersecurity(Authority) :-
    national_competent_authority(Authority),
    appropriate_measures_taken(Authority, cybersecurity).

must_report_resources(MemberState, Commission) :-
    member_state(MemberState),
    union_institution(Commission),
    report_content(resources_status(financial_and_human)),
    assessment_of_adequacy_included,
    deadline(report, date(2025, 8, 2)),
    frequency(every_two_years).

may_provide_guidance(Authority, Target) :-
    national_competent_authority(Authority),
    sme_or_start_up(Target),
    guidance_on(implementation_of('celex:32024R1689/oj')).

% Provenance facts
provenance(must_designate_competent_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_authority_identity/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_information_public/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_resources/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_resources/2, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance/2, 'celex:32024R1689/oj#art_70').

% Reference facts
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
