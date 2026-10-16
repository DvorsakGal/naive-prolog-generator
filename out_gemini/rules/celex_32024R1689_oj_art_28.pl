% unit       : celex:32024R1689/oj#art_28
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 1c106e08b405620cd3200a8e43473fd77cafedfd0a3ae44884b5d82cf1b0e95f
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : af8e00083dc93c65e4be916ab98bc98327d64b7d2bfa58c47adbdbf24f7f3f9e
% cached     : False
% title      : Notifying authorities
:- pred member_state/1, gloss('EU Member State'), source('celex:32024R1689/oj#art_28').
:- pred national_accreditation_body/1, gloss('national accreditation body under Regulation 765/2008'), source('celex:32024R1689/oj#art_28').
:- pred permitted_assessment_and_monitoring_by/2, gloss('Member State may decide assessment and monitoring carried out by body'), source('celex:32024R1689/oj#art_28').
:- pred must_designate_or_establish/2, gloss('Member State must designate or establish notifying authority'), source('celex:32024R1689/oj#art_28').
:- pred must_develop/2, gloss('authority must develop procedures in cooperation'), source('celex:32024R1689/oj#art_28').
:- pred must_safeguard/2, gloss('authority must safeguard objectivity, impartiality or confidentiality'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_conflict_of_interest/1, gloss('notifying authority must avoid conflict of interest with conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred required_separation_of_personnel/1, gloss('decision-makers must be different from assessors of conformity assessment bodies'), source('celex:32024R1689/oj#art_28').
:- pred prohibited_activity/2, gloss('notifying authority is prohibited from offering or providing activity'), source('celex:32024R1689/oj#art_28').
:- pred must_have/2, gloss('authority must have adequate competent personnel at its disposal'), source('celex:32024R1689/oj#art_28').

% Paragraph 1: Each Member State shall designate or establish at least one notifying authority
must_designate_or_establish(MS, notifying_authority(procedures_for_conformity_assessment_bodies)) :-
    member_state(MS).

must_develop(NA, procedures_in_cooperation_with_all_member_states) :-
    notifying_authority(NA).

% Paragraph 2: Option for assessment and monitoring by national accreditation body
permitted_assessment_and_monitoring_by(MS, NAB) :-
    member_state(MS),
    national_accreditation_body(NAB).

% Paragraph 3: Safeguarding objectivity, impartiality and avoiding conflict of interest
prohibited_conflict_of_interest(NA) :-
    notifying_authority(NA).

must_safeguard(NA, objectivity_and_impartiality) :-
    notifying_authority(NA).

% Paragraph 4: Separation of assessment personnel from notification decision personnel
required_separation_of_personnel(NA) :-
    notifying_authority(NA).

% Paragraph 5: Prohibition on performing conformity assessment activities or commercial consultancy
prohibited_activity(NA, conformity_assessment_body_activities) :-
    notifying_authority(NA).

prohibited_activity(NA, commercial_or_competitive_consultancy) :-
    notifying_authority(NA).

% Paragraph 6: Confidentiality of obtained information
must_safeguard(NA, confidentiality_of_obtained_information) :-
    notifying_authority(NA).

% Paragraph 7: Adequate competent personnel with necessary expertise
must_have(NA, adequate_competent_personnel) :-
    notifying_authority(NA).

% Provenance facts
provenance(must_designate_or_establish/2, 'celex:32024R1689/oj#art_28').
provenance(must_develop/2, 'celex:32024R1689/oj#art_28').
provenance(permitted_assessment_and_monitoring_by/2, 'celex:32024R1689/oj#art_28').
provenance(prohibited_conflict_of_interest/1, 'celex:32024R1689/oj#art_28').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_28').
provenance(required_separation_of_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(prohibited_activity/2, 'celex:32024R1689/oj#art_28').
provenance(must_have/2, 'celex:32024R1689/oj#art_28').

% References
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').
