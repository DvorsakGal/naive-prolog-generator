% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 30cb4cd2b114c59fcf0d978a02c19a16275f8bf78f37b614662272cb7be9fc5b
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_69').
:- pred scientific_panel_expert/1, gloss('individual is an expert of the scientific panel'), source('celex:32024R1689/oj#art_69').
:- pred permitted_call_upon_expert/2, gloss('Member State may call upon an expert to support enforcement activities'), source('celex:32024R1689/oj#art_69').
:- pred required_fee_applies/2, gloss('fee requirement applies to a Member State for advice and support by an expert'), source('celex:32024R1689/oj#art_69').
:- pred fee_obligation_established/1, gloss('fee obligation established via implementing act referred to in Article 68(1)'), source('celex:32024R1689/oj#art_69').
:- pred must_pay/2, gloss('Member State must pay fees for advice and support provided by expert'), source('celex:32024R1689/oj#art_69').
:- pred must_facilitate_access/2, gloss('Commission must facilitate timely access to experts for Member States'), source('celex:32024R1689/oj#art_69').
:- pred must_ensure/2, gloss('Commission must ensure efficient organisation of support activities'), source('celex:32024R1689/oj#art_69').

% Paragraph 1: Member States may call upon experts of the scientific panel
% to support their enforcement activities under this Regulation.
permitted_call_upon_expert(MS, Expert) :-
    member_state(MS),
    scientific_panel_expert(Expert).

% Paragraph 2: The Member States may be required to pay fees for the advice
% and support provided by the experts, where established in implementing act.
must_pay(MS, fees(support_from(Expert))) :-
    member_state(MS),
    scientific_panel_expert(Expert),
    fee_obligation_established(implementing_act_art_68_1),
    required_fee_applies(MS, Expert).

% Paragraph 3: The Commission shall facilitate timely access to the experts by
% the Member States, as needed, and ensure efficient combination of support activities.
must_facilitate_access(Comm, access(experts, for(MS))) :-
    commission(Comm),
    member_state(MS).

must_ensure(Comm, efficient_organisation(combination(union_ai_testing_support, scientific_panel_experts))) :-
    commission(Comm).

% Provenance facts
provenance(permitted_call_upon_expert/2, 'celex:32024R1689/oj#art_69').
provenance(must_pay/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_69').

% Ground references
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_69').
