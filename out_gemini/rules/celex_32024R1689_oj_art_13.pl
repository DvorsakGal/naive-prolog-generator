% unit       : celex:32024R1689/oj#art_13
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : 1d358e923a8c4bc07de673bd7db72ad561d83589aaee2c0c69f3f267ad3f1010
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 438149f6ca1b14c4a28dcb444b4920c247e7c136786283978e4f25146f49612a
% cached     : False
% title      : Transparency and provision of information to deployers
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_13').
:- pred sufficiently_transparent_operation/1, gloss('operation is sufficiently transparent to enable deployers to interpret output and use appropriately'), source('celex:32024R1689/oj#art_13').
:- pred accompanied_by_instructions_for_use/1, gloss('accompanied by instructions for use in an appropriate digital format or otherwise'), source('celex:32024R1689/oj#art_13').
:- pred instructions_include_concise_complete_correct_clear_info/1, gloss('instructions include concise, complete, correct and clear information relevant, accessible and comprehensible to deployers'), source('celex:32024R1689/oj#art_13').
:- pred contains_provider_identity_and_contact/1, gloss('instructions contain identity and contact details of provider and authorised representative'), source('celex:32024R1689/oj#art_13').
:- pred contains_performance_characteristics_and_limitations/1, gloss('instructions contain characteristics, capabilities and limitations of performance'), source('celex:32024R1689/oj#art_13').
:- pred contains_predetermined_changes/1, gloss('instructions contain pre-determined changes to the system and performance from initial conformity assessment'), source('celex:32024R1689/oj#art_13').
:- pred contains_human_oversight_measures/1, gloss('instructions contain human oversight measures and technical measures facilitating interpretation'), source('celex:32024R1689/oj#art_13').
:- pred contains_computational_hardware_and_maintenance_info/1, gloss('instructions contain computational and hardware resources, expected lifetime, and maintenance measures'), source('celex:32024R1689/oj#art_13').
:- pred contains_log_mechanisms_description/1, gloss('instructions contain description of mechanisms to collect, store and interpret logs'), source('celex:32024R1689/oj#art_13').
:- pred compliant_instructions_for_use/1, gloss('instructions for use satisfy content requirements of Article 13(3)'), source('celex:32024R1689/oj#art_13').
:- pred required_transparency/1, gloss('requirement of transparency and provision of information under Article 13 is met'), source('celex:32024R1689/oj#art_13').

% Article 13(3) minimal required content for instructions for use
compliant_instructions_for_use(I) :-
    instructions_for_use(I),
    contains_provider_identity_and_contact(I),
    contains_performance_characteristics_and_limitations(I),
    contains_predetermined_changes(I),
    contains_human_oversight_measures(I),
    contains_computational_hardware_and_maintenance_info(I),
    contains_log_mechanisms_description(I).

% Article 13(1) and 13(2) requirements for high-risk AI systems
required_transparency(S) :-
    high_risk_ai_system(S),
    sufficiently_transparent_operation(S),
    accompanied_by_instructions_for_use(S),
    instructions_include_concise_complete_correct_clear_info(S).

% Provenance facts
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_13').
provenance(sufficiently_transparent_operation/1, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_include_concise_complete_correct_clear_info/1, 'celex:32024R1689/oj#art_13').
provenance(contains_provider_identity_and_contact/1, 'celex:32024R1689/oj#art_13').
provenance(contains_performance_characteristics_and_limitations/1, 'celex:32024R1689/oj#art_13').
provenance(contains_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(contains_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(contains_computational_hardware_and_maintenance_info/1, 'celex:32024R1689/oj#art_13').
provenance(contains_log_mechanisms_description/1, 'celex:32024R1689/oj#art_13').
provenance(compliant_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(required_transparency/1, 'celex:32024R1689/oj#art_13').

% Cross-references
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').
