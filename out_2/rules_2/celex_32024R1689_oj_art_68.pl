% unit       : celex:32024R1689/oj#art_68
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : ff62b68988f9bc7fe1e8e7554ee09487dd129775dbd96c6ddf7db3098424ab4e
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : a906d2abfbeaa1b445e692a4266aa31e1379b9c7fa997f4939b7b2c492e5ef93
% cached     : False
% title      : Scientific panel of independent experts
:- pred must_make_provisions/2, gloss('Commission shall make provisions for scientific panel'), source('celex:32024R1689/oj#art_68').
:- pred required_expert_selection/1, gloss('Scientific panel shall consist of experts selected by the Commission'), source('celex:32024R1689/oj#art_68').
:- pred required_expert_condition/1, gloss('Each expert must meet the required conditions'), source('celex:32024R1689/oj#art_68').
:- pred expertise_in_ai/1, gloss('Expert has up‑to‑date scientific or technical expertise in the field of AI'), source('celex:32024R1689/oj#art_68').
:- pred independent_from_provider/1, gloss('Expert is independent from any provider of AI systems or general‑purpose AI models'), source('celex:32024R1689/oj#art_68').
:- pred ability_to_carry_out_tasks/1, gloss('Expert can carry out activities diligently, accurately and objectively'), source('celex:32024R1689/oj#art_68').
:- pred must_advise/2, gloss('Scientific panel shall advise the AI Office'), source('celex:32024R1689/oj#art_68').
:- pred must_support/2, gloss('Scientific panel shall support the AI Office'), source('celex:32024R1689/oj#art_68').
:- pred required_impartiality/1, gloss('Experts shall act with impartiality'), source('celex:32024R1689/oj#art_68').
:- pred required_objectivity/1, gloss('Experts shall act with objectivity'), source('celex:32024R1689/oj#art_68').
:- pred required_confidentiality/1, gloss('Experts shall ensure confidentiality of information and data'), source('celex:32024R1689/oj#art_68').
:- pred must_not_seek_instructions/2, gloss('Experts shall neither seek nor take instructions from anyone'), source('celex:32024R1689/oj#art_68').
:- pred must_draw_up_declaration_of_interests/2, gloss('Experts shall draw up a declaration of interests'), source('celex:32024R1689/oj#art_68').
:- pred must_establish_systems/2, gloss('AI Office shall establish systems and procedures to manage conflicts of interest'), source('celex:32024R1689/oj#art_68').

must_make_provisions(commission, scientific_panel).

must_adopt(commission, implementing_act).

required_expert_selection(scientific_panel).

required_expert_condition(Expert) :-
    expert(Expert),
    expertise_in_ai(Expert),
    independent_from_provider(Expert),
    ability_to_carry_out_tasks(Expert).

must_advise(scientific_panel, ai_office).

must_support(scientific_panel, ai_office).

required_impartiality(Expert) :-
    expert(Expert).

required_objectivity(Expert) :-
    expert(Expert).

required_confidentiality(Expert) :-
    expert(Expert).

must_not_seek_instructions(Expert, instructions) :-
    expert(Expert).

must_draw_up_declaration_of_interests(Expert, declaration_of_interests) :-
    expert(Expert).

must_make_publicly_available(Expert, declaration_of_interests) :-
    expert(Expert).

must_establish_systems(ai_office, manage_conflicts_of_interest).

provenance(must_make_provisions/2, 'celex:32024R1689/oj#art_68').
provenance(must_adopt/2, 'celex:32024R1689/oj#art_68').
provenance(required_expert_selection/1, 'celex:32024R1689/oj#art_68').
provenance(required_expert_condition/1, 'celex:32024R1689/oj#art_68').
provenance(expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_provider/1, 'celex:32024R1689/oj#art_68').
provenance(ability_to_carry_out_tasks/1, 'celex:32024R1689/oj#art_68').
provenance(must_advise/2, 'celex:32024R1689/oj#art_68').
provenance(must_support/2, 'celex:32024R1689/oj#art_68').
provenance(required_impartiality/1, 'celex:32024R1689/oj#art_68').
provenance(required_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(required_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/2, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/2, 'celex:32024R1689/oj#art_68').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_68').
provenance(must_establish_systems/2, 'celex:32024R1689/oj#art_68').

references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').
