% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 62c23bee3bd6bdb44fe4d5e301fd3e4b6cc3815f2e5dfe7b6c1342c4f2bd0830
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred member_state/1, gloss('Member State of the European Union'), source('celex:32024R1689/oj#art_69').
:- pred scientific_panel_expert/1, gloss('expert of the scientific panel established under the AI Act'), source('celex:32024R1689/oj#art_69').
:- pred enforcement_activity/2, gloss('enforcement activity carried out by an actor under the AI Act'), source('celex:32024R1689/oj#art_69').
:- pred permitted_call_upon/2, gloss('an entity is permitted to call upon another to support activities'), source('celex:32024R1689/oj#art_69').
:- pred fee_requirement_applies/2, gloss('requirement to pay fees applies to an actor for received advice/support'), source('celex:32024R1689/oj#art_69').
:- pred fees_set_in_implementing_act/1, gloss('fees for advice/support are established in the implementing act under Article 68(1)'), source('celex:32024R1689/oj#art_69').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_69').
:- pred must_facilitate_access/2, gloss('actor must facilitate timely access of a party to designated experts'), source('celex:32024R1689/oj#art_69').
:- pred must_ensure_efficient_organisation/2, gloss('actor must ensure combination of support activities is efficiently organised'), source('celex:32024R1689/oj#art_69').

% Paragraph 1: Member States may call upon experts of the scientific panel
% to support their enforcement activities under this Regulation.
permitted_call_upon(MS, support(Expert, Activity)) :-
    member_state(MS),
    scientific_panel_expert(Expert),
    enforcement_activity(MS, Activity).

% Paragraph 2: Member States may be required to pay fees for the advice
% and support provided by the experts, as set out in implementing act.
fee_requirement_applies(MS, advice_and_support(Expert)) :-
    member_state(MS),
    scientific_panel_expert(Expert),
    fees_set_in_implementing_act(advice_and_support(Expert)).

% Paragraph 3: The Commission shall facilitate timely access to the experts
% by the Member States, as needed.
must_facilitate_access(Comm, access(MS, Expert)) :-
    commission(Comm),
    member_state(MS),
    scientific_panel_expert(Expert).

% Paragraph 3: The Commission shall ensure that the combination of support activities
% carried out by Union AI testing support and experts is efficiently organised.
must_ensure_efficient_organisation(Comm, combined_support(testing_support_art_84, expert_support_art_69)) :-
    commission(Comm).

% Provenance facts
provenance(permitted_call_upon/2, 'celex:32024R1689/oj#art_69').
provenance(fee_requirement_applies/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').

% References
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_69').
