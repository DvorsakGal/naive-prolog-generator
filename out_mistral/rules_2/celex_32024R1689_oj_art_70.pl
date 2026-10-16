% unit       : celex:32024R1689/oj#art_70
% context    : CHAPTER VII GOVERNANCE > SECTION 2 National competent authorities
% slice sha  : 351d18bb2bfc4fa8496c9127518ddb3dac7dbf705e1abd034de4ca5987a5dc05
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : b25ded2e9107af22f5f7a9edca7312b5af3d86c7f3df7e4f5cc9fe7109ba3b65
% cached     : False
% title      : Designation of national competent authorities and single points of contact
:- pred must_establish_notifying_authority/1, gloss('Member State establishes or designates at least one notifying authority'), source('celex:32024R1689/oj#art_70').
:- pred must_establish_market_surveillance_authority/1, gloss('Member State establishes or designates at least one market surveillance authority'), source('celex:32024R1689/oj#art_70').
:- pred national_competent_authority_exercises_powers_independently/1, gloss('national competent authority exercises powers independently, impartially and without bias'), source('celex:32024R1689/oj#art_70').
:- pred national_competent_authority_member_refrains_from_incompatible_action/1, gloss('member of national competent authority refrains from action incompatible with duties'), source('celex:32024R1689/oj#art_70').
:- pred may_perform_by_designated_authorities/1, gloss('activities and tasks may be performed by one or more designated authorities in accordance with organisational needs of Member State'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate_identity_to_commission/1, gloss('Member State communicates identity of notifying authorities and market surveillance authorities and their tasks to Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_communicate_subsequent_changes_to_commission/1, gloss('Member State communicates subsequent changes to Commission'), source('celex:32024R1689/oj#art_70').
:- pred must_make_contact_information_publicly_available/1, gloss('Member State makes publicly available information on how competent authorities and single points of contact can be contacted through electronic communication means by 2 August 2025'), source('celex:32024R1689/oj#art_70').
:- pred must_designate_single_point_of_contact/1, gloss('Member State designates a market surveillance authority to act as single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred must_notify_commission_of_single_point_of_contact/1, gloss('Member State notifies Commission of identity of single point of contact'), source('celex:32024R1689/oj#art_70').
:- pred commission_makes_list_of_single_points_of_contact_publicly_available/0, gloss('Commission makes list of single points of contact publicly available'), source('celex:32024R1689/oj#art_70').
:- pred must_provide_adequate_resources/1, gloss('Member State ensures national competent authorities are provided with adequate technical, financial and human resources and infrastructure'), source('celex:32024R1689/oj#art_70').
:- pred must_have_sufficient_personnel_permanently_available/1, gloss('national competent authorities have sufficient number of personnel permanently available'), source('celex:32024R1689/oj#art_70').
:- pred personnel_competences_and_expertise/1, gloss('personnel competences and expertise include in-depth understanding of AI technologies, data and data computing, personal data protection, cybersecurity, fundamental rights, health and safety risks and knowledge of existing standards and legal requirements'), source('celex:32024R1689/oj#art_70').
:- pred must_assess_and_update_competence_and_resource_requirements_annually/1, gloss('Member State assesses and if necessary updates competence and resource requirements on annual basis'), source('celex:32024R1689/oj#art_70').
:- pred must_ensure_adequate_cybersecurity/1, gloss('national competent authorities take appropriate measures to ensure adequate level of cybersecurity'), source('celex:32024R1689/oj#art_70').
:- pred must_act_in_accordance_with_confidentiality_obligations/1, gloss('national competent authorities act in accordance with confidentiality obligations set out in Article 78 when performing tasks'), source('celex:32024R1689/oj#art_70').
:- pred must_report_to_commission_on_resources/1, gloss('Member State reports to Commission on status of financial and human resources of national competent authorities with assessment of adequacy by 2 August 2025 and once every two years thereafter'), source('celex:32024R1689/oj#art_70').
:- pred commission_transmits_information_to_board/0, gloss('Commission transmits information to Board for discussion and possible recommendations'), source('celex:32024R1689/oj#art_70').
:- pred commission_facilitates_exchange_of_experience/0, gloss('Commission facilitates exchange of experience between national competent authorities'), source('celex:32024R1689/oj#art_70').
:- pred may_provide_guidance_and_advice/1, gloss('national competent authorities may provide guidance and advice on implementation of Regulation, in particular to SMEs including start-ups'), source('celex:32024R1689/oj#art_70').
:- pred must_consult_authorities_under_other_union_law/1, gloss('when providing guidance on AI system in areas covered by other Union law, national competent authorities under that Union law shall be consulted as appropriate'), source('celex:32024R1689/oj#art_70').
:- pred edps_acts_as_competent_authority_for_union_institutions/0, gloss('European Data Protection Supervisor acts as competent authority for supervision of Union institutions, bodies, offices or agencies falling within scope of Regulation'), source('celex:32024R1689/oj#art_70').

must_establish_notifying_authority(MemberState) :-
    member_state(MemberState).

must_establish_market_surveillance_authority(MemberState) :-
    member_state(MemberState).

national_competent_authority_exercises_powers_independently(Authority) :-
    national_competent_authority(Authority).

national_competent_authority_member_refrains_from_incompatible_action(Member) :-
    national_competent_authority(Authority),
    member_of_authority(Member, Authority).

may_perform_by_designated_authorities(MemberState) :-
    member_state(MemberState),
    national_competent_authority_exercises_powers_independently(_Authority).

must_communicate_identity_to_commission(MemberState) :-
    member_state(MemberState),
    notifying_authority(Authority),
    market_surveillance_authority(MSAuthority),
    designated_by_member_state(Authority, MemberState),
    designated_by_member_state(MSAuthority, MemberState).

must_communicate_subsequent_changes_to_commission(MemberState) :-
    member_state(MemberState).

must_make_contact_information_publicly_available(MemberState) :-
    member_state(MemberState),
    within(days(2), months(august), years(2025)).

must_designate_single_point_of_contact(MemberState) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    designated_by_member_state(Authority, MemberState).

must_notify_commission_of_single_point_of_contact(MemberState) :-
    member_state(MemberState),
    must_designate_single_point_of_contact(MemberState).

commission_makes_list_of_single_points_of_contact_publicly_available.

must_provide_adequate_resources(MemberState) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    designated_by_member_state(Authority, MemberState).

must_have_sufficient_personnel_permanently_available(Authority) :-
    national_competent_authority(Authority),
    permanent_availability_of_personnel(Authority).

personnel_competences_and_expertise(Authority) :-
    national_competent_authority(Authority),
    must_have_sufficient_personnel_permanently_available(Authority).

must_assess_and_update_competence_and_resource_requirements_annually(MemberState) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    designated_by_member_state(Authority, MemberState).

must_ensure_adequate_cybersecurity(Authority) :-
    national_competent_authority(Authority).

must_act_in_accordance_with_confidentiality_obligations(Authority) :-
    national_competent_authority(Authority).

must_report_to_commission_on_resources(MemberState) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    designated_by_member_state(Authority, MemberState),
    within(days(2), months(august), years(2025)).

commission_transmits_information_to_board.

commission_facilitates_exchange_of_experience.

may_provide_guidance_and_advice(Authority) :-
    national_competent_authority(Authority).

must_consult_authorities_under_other_union_law(Authority) :-
    national_competent_authority(Authority),
    other_union_harmonisation_legislation(_Legislation).

edps_acts_as_competent_authority_for_union_institutions.

provenance(must_establish_notifying_authority/1, 'celex:32024R1689/oj#art_70').
provenance(must_establish_market_surveillance_authority/1, 'celex:32024R1689/oj#art_70').
provenance(national_competent_authority_exercises_powers_independently/1, 'celex:32024R1689/oj#art_70').
provenance(national_competent_authority_member_refrains_from_incompatible_action/1, 'celex:32024R1689/oj#art_70').
provenance(may_perform_by_designated_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_identity_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_subsequent_changes_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_information_publicly_available/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_notify_commission_of_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(commission_makes_list_of_single_points_of_contact_publicly_available/0, 'celex:32024R1689/oj#art_70').
provenance(must_provide_adequate_resources/1, 'celex:32024R1689/oj#art_70').
provenance(must_have_sufficient_personnel_permanently_available/1, 'celex:32024R1689/oj#art_70').
provenance(personnel_competences_and_expertise/1, 'celex:32024R1689/oj#art_70').
provenance(must_assess_and_update_competence_and_resource_requirements_annually/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_in_accordance_with_confidentiality_obligations/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_to_commission_on_resources/1, 'celex:32024R1689/oj#art_70').
provenance(commission_transmits_information_to_board/0, 'celex:32024R1689/oj#art_70').
provenance(commission_facilitates_exchange_of_experience/0, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance_and_advice/1, 'celex:32024R1689/oj#art_70').
provenance(must_consult_authorities_under_other_union_law/1, 'celex:32024R1689/oj#art_70').
provenance(edps_acts_as_competent_authority_for_union_institutions/0, 'celex:32024R1689/oj#art_70').

references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').
