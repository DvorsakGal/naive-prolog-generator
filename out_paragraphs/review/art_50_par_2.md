# art_50_par_2

## Text

Providers of AI systems, including general-purpose AI systems, generating synthetic audio, image, video or text content, shall ensure that the outputs of the AI system are marked in a machine-readable format and detectable as artificially generated or manipulated. Providers shall ensure their technical solutions are effective, interoperable, robust and reliable as far as this is technically feasible, taking into account the specificities and limitations of various types of content, the costs of implementation and the generally acknowledged state of the art, as may be reflected in relevant technical standards. This obligation shall not apply to the extent the AI systems perform an assistive function for standard editing or do not substantially alter the input data provided by the deployer or the semantics thereof, or where authorised by law to detect, prevent, investigate or prosecute criminal offences.

## Numbers

| output | loads | module | clauses | preds | inputs | coverage | violations |
|---|---|---|---|---|---|---|---|
| astra/seed_1 | yes | synthetic_content_marking | 26 | 8 | 13 | 0.905 | 0 |
| astra/seed_2 | yes | synthetic_content_marking | 26 | 9 | 13 | 0.841 | 0 |
| astra/seed_3 | yes | synthetic_content_marking | 26 | 7 | 12 | 0.905 | 0 |
| deepseek/seed_1 | NO | ai_output_marking | 12 | 10 | 14 | 0.667 | 14 |
| deepseek/seed_2 | NO | ai_output_marking | 12 | 10 | 16 | 0.603 | 10 |
| deepseek/seed_3 | NO | ai_output_marking | 19 | 9 | 11 | 0.81 | 9 |
| gemini/seed_1 | NO | marking_synthetic_content | 10 | 4 | 14 | 0.714 | 4 |
| gemini/seed_2 | NO | synthetic_content_marking | 7 | 4 | 6 | 0.492 | 4 |
| gemini/seed_3 | NO | marking_synthetic_content | 11 | 5 | 7 | 0.603 | 5 |
| kimi/seed_1 | NO | ai_content_marking | 26 | 17 | 16 | 0.794 | 6 |
| kimi/seed_2 | yes | ai_content_marking | 15 | 7 | 29 | 0.778 | 4 |
| kimi/seed_3 | NO | ai_content_marking | 15 | 8 | 25 | 0.825 | 19 |
| mistral/seed_1 | yes | synthetic_content_marking | 26 | 14 | 26 | 0.825 | 13 |
| mistral/seed_2 | yes | synthetic_content_marking | 29 | 20 | 23 | 0.825 | 18 |
| mistral/seed_3 | yes | synthetic_content_marking | 16 | 8 | 9 | 0.556 | 7 |
| opus/seed_1 | yes | synthetic_content_marking | 14 | 5 | 10 | 0.857 | 1 |
| opus/seed_2 | yes | synthetic_content_marking | 16 | 6 | 14 | 0.714 | 2 |
| opus/seed_3 | yes | synthetic_content_marking | 19 | 8 | 7 | 0.746 | 3 |
| qwen/seed_1 | yes | synthetic_content_marking | 10 | 6 | 14 | 0.714 | 15 |
| qwen/seed_2 | yes | synthetic_content_marking | 15 | 12 | 9 | 0.683 | 8 |
| qwen/seed_3 | yes | ai_content_marking | 13 | 8 | 14 | 0.714 | 14 |

Within-model (3 seeds): astra: J_preds 0.2, J_clauses 0.055, consensus 0.166; deepseek: J_preds 0.095, J_clauses 0.0, consensus 0.0; gemini: J_preds 0.373, J_clauses 0.0, consensus 0.083; kimi: J_preds 0.147, J_clauses 0.0, consensus 0.0; mistral: J_preds 0.246, J_clauses 0.035, consensus 0.033; opus: J_preds 0.381, J_clauses 0.168, consensus 0.218; qwen: J_preds 0.437, J_clauses 0.189, consensus 0.125

## astra seed 1

```prolog
:- module(synthetic_content_marking, [
    content_type_applies/1,
    synthetic_content_obligation_applies/1,
    permitted_exemption/1,
    exempt_synthetic_content_obligation/1,
    must_ensure/2,
    must_take_into_account/2,
    technical_quality_applies/1,
    criminal_offence_purpose_applies/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic performs_assistive_function/2.
:- dynamic does_not_substantially_alter/1.
:- dynamic authorised_by_law/1.
:- dynamic deployer_provided/1.
:- dynamic implements_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.
:- dynamic reflects_state_of_the_art/2.
:- dynamic generally_acknowledged/1.

content_type_applies(audio).
content_type_applies(image).
content_type_applies(video).
content_type_applies(text).

synthetic_content_obligation_applies(scope(System, Extent)) :-
    ai_system(System),
    generates_content(System, synthetic_content(Type, _Output, Extent)),
    content_type_applies(Type),
    \+ permitted_exemption(scope(System, Extent)).

synthetic_content_obligation_applies(scope(System, Extent)) :-
    general_purpose_ai_system(System),
    generates_content(System, synthetic_content(Type, _Output, Extent)),
    content_type_applies(Type),
    \+ permitted_exemption(scope(System, Extent)).

permitted_exemption(scope(System, Extent)) :-
    performs_assistive_function(System, standard_editing(Extent)).

permitted_exemption(scope(System, Extent)) :-
    deployer_provided(input_data(System, Data, Extent)),
    does_not_substantially_alter(input_data(System, Data, Extent)).

permitted_exemption(scope(System, Extent)) :-
    deployer_provided(input_data(System, Data, Extent)),
    does_not_substantially_alter(semantics(System, Data, Extent)).

permitted_exemption(scope(System, Extent)) :-
    authorised_by_law(use(System, Extent, Purpose)),
    criminal_offence_purpose_applies(Purpose).

exempt_synthetic_content_obligation(scope(System, Extent)) :-
    permitted_exemption(scope(System, Extent)).

criminal_offence_purpose_applies(detect(criminal_offence)).
criminal_offence_purpose_applies(prevent(criminal_offence)).
criminal_offence_purpose_applies(investigate(criminal_offence)).
criminal_offence_purpose_applies(prosecute(criminal_offence)).

must_ensure(Provider, marked(Output, machine_readable_format, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    generates_content(System, synthetic_content(Type, Output, Extent)),
    content_type_applies(Type).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    generates_content(System, synthetic_content(Type, Output, Extent)),
    content_type_applies(Type).

technical_quality_applies(effective).
technical_quality_applies(interoperable).
technical_quality_applies(robust).
technical_quality_applies(reliable).

must_ensure(Provider, technical_quality(Solution, Quality, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)),
    technical_quality_applies(Quality),
    technically_feasible(technical_quality(Solution, Quality, Extent)).

must_take_into_account(Provider, specificity_and_limitation(various_content_type, Solution, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)).

must_take_into_account(Provider, implementation_cost(Solution, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)).

must_take_into_account(Provider, generally_acknowledged_state_of_the_art(Solution, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)).

must_take_into_account(Provider, state_of_the_art(Art, reflected_in(Standard), Solution, Extent)) :-
    provides_system(Provider, System),
    synthetic_content_obligation_applies(scope(System, Extent)),
    implements_solution(Provider, marking_solution(System, Solution, Extent)),
    relevant_technical_standard(Standard),
    reflects_state_of_the_art(Standard, Art),
    generally_acknowledged(Art).
```

## astra seed 2

```prolog
:- module(synthetic_content_marking, [
    covered/1,
    synthetic_content_generation_applies/1,
    exempt_output_marking/1,
    permitted_unmarked_output/1,
    criminal_offence_purpose_applies/1,
    must_ensure/2,
    must_take_into_account/2,
    required_technical_quality/1,
    relevant_state_of_the_art_applies/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provides_system/2.
:- dynamic generates_content/2.
:- dynamic output_of_system/2.
:- dynamic performs_function/2.
:- dynamic non_substantial_input_data_alteration_applies/1.
:- dynamic non_substantial_input_semantics_alteration_applies/1.
:- dynamic authorised_by_law/1.
:- dynamic implements_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.
:- dynamic reflects_state_of_the_art/2.

covered(System) :-
    ai_system(System),
    synthetic_content_generation_applies(System).
covered(System) :-
    general_purpose_ai_system(System),
    synthetic_content_generation_applies(System).

synthetic_content_generation_applies(System) :-
    generates_content(System, synthetic(audio)).
synthetic_content_generation_applies(System) :-
    generates_content(System, synthetic(image)).
synthetic_content_generation_applies(System) :-
    generates_content(System, synthetic(video)).
synthetic_content_generation_applies(System) :-
    generates_content(System, synthetic(text)).

% Exceptions are limited to the relevant function or use of the system.
exempt_output_marking(scope(System, Function)) :-
    performs_function(System, Function),
    Function = assistive(standard_editing).
exempt_output_marking(scope(System, Function)) :-
    performs_function(System, Function),
    non_substantial_input_data_alteration_applies(
        scope(System, Function, data_provided_by_deployer)).
exempt_output_marking(scope(System, Function)) :-
    performs_function(System, Function),
    non_substantial_input_semantics_alteration_applies(
        scope(System, Function, data_provided_by_deployer)).
exempt_output_marking(scope(System, Function)) :-
    performs_function(System, Function),
    criminal_offence_purpose_applies(Function),
    authorised_by_law(scope(System, Function)).

criminal_offence_purpose_applies(detect(criminal_offence)).
criminal_offence_purpose_applies(prevent(criminal_offence)).
criminal_offence_purpose_applies(investigate(criminal_offence)).
criminal_offence_purpose_applies(prosecute(criminal_offence)).

permitted_unmarked_output(scope(System, Function)) :-
    exempt_output_marking(scope(System, Function)).

must_ensure(Provider, machine_readable_marking(Output)) :-
    provides_system(Provider, System),
    covered(System),
    output_of_system(Output, scope(System, Function)),
    \+ permitted_unmarked_output(scope(System, Function)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, System),
    covered(System),
    output_of_system(Output, scope(System, Function)),
    \+ permitted_unmarked_output(scope(System, Function)).

required_technical_quality(effective).
required_technical_quality(interoperable).
required_technical_quality(robust).
required_technical_quality(reliable).

must_ensure(Provider, quality(Solution, Quality, FeasibleExtent)) :-
    provides_system(Provider, System),
    covered(System),
    implements_solution(Provider, solution(Solution, scope(System, Function))),
    \+ permitted_unmarked_output(scope(System, Function)),
    required_technical_quality(Quality),
    technically_feasible(quality(Solution, Quality, FeasibleExtent)).

must_take_into_account(Provider, content_type_specificity_and_limitation(Solution)) :-
    provides_system(Provider, System),
    covered(System),
    implements_solution(Provider, solution(Solution, scope(System, Function))),
    \+ permitted_unmarked_output(scope(System, Function)).

must_take_into_account(Provider, implementation_cost(Solution)) :-
    provides_system(Provider, System),
    covered(System),
    implements_solution(Provider, solution(Solution, scope(System, Function))),
    \+ permitted_unmarked_output(scope(System, Function)).

must_take_into_account(Provider, generally_acknowledged_state_of_the_art(Solution)) :-
    provides_system(Provider, System),
    covered(System),
    implements_solution(Provider, solution(Solution, scope(System, Function))),
    \+ permitted_unmarked_output(scope(System, Function)).

relevant_state_of_the_art_applies(reflection(StateOfTheArt, Standard)) :-
    relevant_technical_standard(Standard),
    reflects_state_of_the_art(Standard, StateOfTheArt).
```

## astra seed 3

```prolog
:- module(synthetic_content_marking, [
    synthetic_content_system_applies/1,
    permitted_non_compliance/1,
    exempt_marking_obligation/1,
    must_ensure/2,
    must_take_into_account/2,
    required_technical_quality/1,
    permitted_state_of_the_art_reference/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_content/2.
:- dynamic provides_system/2.
:- dynamic generates_output/2.
:- dynamic performs_function/2.
:- dynamic non_substantial_alteration_applies/1.
:- dynamic authorised_by_law/2.
:- dynamic implements_solution/2.
:- dynamic technically_feasible/1.
:- dynamic relevant_technical_standard/1.
:- dynamic reflects_state_of_the_art/2.

synthetic_content_system_applies(S) :-
    ai_system(S),
    generates_content(S, synthetic(audio)).
synthetic_content_system_applies(S) :-
    ai_system(S),
    generates_content(S, synthetic(image)).
synthetic_content_system_applies(S) :-
    ai_system(S),
    generates_content(S, synthetic(video)).
synthetic_content_system_applies(S) :-
    ai_system(S),
    generates_content(S, synthetic(text)).
synthetic_content_system_applies(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(audio)).
synthetic_content_system_applies(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(image)).
synthetic_content_system_applies(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(video)).
synthetic_content_system_applies(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(text)).

% Exceptions concern only the extent covered by the stated function,
% lack of substantial alteration, or legal authorisation.
permitted_non_compliance(scope(S, Extent)) :-
    performs_function(S, within(Extent, assistive(standard_editing))).
permitted_non_compliance(scope(S, Extent)) :-
    non_substantial_alteration_applies(
        scope(S, Extent, deployer_provided_input_data_and_its_semantics)).
permitted_non_compliance(scope(S, Extent)) :-
    authorised_by_law(S, within(Extent, detect(criminal_offence))).
permitted_non_compliance(scope(S, Extent)) :-
    authorised_by_law(S, within(Extent, prevent(criminal_offence))).
permitted_non_compliance(scope(S, Extent)) :-
    authorised_by_law(S, within(Extent, investigate(criminal_offence))).
permitted_non_compliance(scope(S, Extent)) :-
    authorised_by_law(S, within(Extent, prosecute(criminal_offence))).

exempt_marking_obligation(scope(S, Extent)) :-
    permitted_non_compliance(scope(S, Extent)).

must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    generates_output(S, within(Extent, Output)),
    \+ permitted_non_compliance(scope(S, Extent)).

must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    generates_output(S, within(Extent, Output)),
    \+ permitted_non_compliance(scope(S, Extent)).

required_technical_quality(effective).
required_technical_quality(interoperable).
required_technical_quality(robust).
required_technical_quality(reliable).

must_ensure(Provider, quality(Solution, Quality, within(Extent))) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    implements_solution(Provider, marking_solution(S, Solution, Extent)),
    required_technical_quality(Quality),
    technically_feasible(
        quality(Solution, Quality, within(Extent),
            taking_into_account(
                content_type_specificity_and_limitation,
                implementation_cost,
                generally_acknowledged_state_of_the_art))),
    \+ permitted_non_compliance(scope(S, Extent)).

must_take_into_account(Provider,
    solution(Solution, within(Extent), content_type_specificity_and_limitation)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    implements_solution(Provider, marking_solution(S, Solution, Extent)),
    \+ permitted_non_compliance(scope(S, Extent)).

must_take_into_account(Provider,
    solution(Solution, within(Extent), implementation_cost)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    implements_solution(Provider, marking_solution(S, Solution, Extent)),
    \+ permitted_non_compliance(scope(S, Extent)).

must_take_into_account(Provider,
    solution(Solution, within(Extent), generally_acknowledged_state_of_the_art)) :-
    provides_system(Provider, S),
    synthetic_content_system_applies(S),
    implements_solution(Provider, marking_solution(S, Solution, Extent)),
    \+ permitted_non_compliance(scope(S, Extent)).

permitted_state_of_the_art_reference(Standard) :-
    relevant_technical_standard(Standard),
    reflects_state_of_the_art(Standard, generally_acknowledged_state_of_the_art).
```

## deepseek seed 1

```prolog
:- module(ai_output_marking, [
    must_ensure_marking(Provider, Output),
    must_ensure_technical_solutions(Provider, Solution),
    marking_obligation_applies(Provider),
    exempt_marking_obligation(Provider),
    assistive_editing_function(Output),
    substantially_alters_input(Output),
    authorised_for_criminal_purposes(Provider)
]).

% Core obligation: providers shall ensure outputs are marked and detectable
must_ensure_marking(Provider, Output) :-
    marking_obligation_applies(Provider),
    provider_of_ai_system(Provider, System),
    generates_synthetic_content(System, Output),
    must_be_marked(Output, machine_readable),
    must_be_detectable(Output, artificially_generated_or_manipulated).

% Providers shall ensure technical solutions meet quality criteria
must_ensure_technical_solutions(Provider, Solution) :-
    marking_obligation_applies(Provider),
    provider_of_ai_system(Provider, System),
    technical_solution_for(System, Solution),
    must_be_effective(Solution),
    must_be_interoperable(Solution),
    must_be_robust(Solution),
    must_be_reliable(Solution),
    technically_feasible(Solution, state_of_art).

% The obligation applies unless an exemption holds
marking_obligation_applies(Provider) :-
    provider_of_ai_system(Provider, _),
    \+ exempt_marking_obligation(Provider).

% Exemption: assistive function for standard editing
exempt_marking_obligation(Provider) :-
    provider_of_ai_system(Provider, System),
    performs_assistive_function(System, standard_editing).

% Exemption: does not substantially alter input data or its semantics
exempt_marking_obligation(Provider) :-
    provider_of_ai_system(Provider, System),
    processes_input_data(System, Input),
    \+ substantially_alters_input(Input).

% Exemption: authorised by law for criminal offence purposes
exempt_marking_obligation(Provider) :-
    provider_of_ai_system(Provider, System),
    authorised_by_law(System, purpose(detect_prevent_investigate_prosecute(criminal_offences))).

% Input predicates - facts about the world not settled by this text
:- dynamic provider_of_ai_system/2.
:- dynamic generates_synthetic_content/2.
:- dynamic technical_solution_for/2.
:- dynamic performs_assistive_function/2.
:- dynamic processes_input_data/2.
:- dynamic authorised_by_law/2.
:- dynamic technically_feasible/2.

% Quality criteria for solutions
must_be_effective(Solution) :-
    technical_solution_for(_, Solution),
    effective(Solution).

must_be_interoperable(Solution) :-
    technical_solution_for(_, Solution),
    interoperable(Solution).

must_be_robust(Solution) :-
    technical_solution_for(_, Solution),
    robust(Solution).

must_be_reliable(Solution) :-
    technical_solution_for(_, Solution),
    reliable(Solution).

% Output marking requirements
must_be_marked(Output, machine_readable) :-
    generates_synthetic_content(_, Output),
    marked_in_format(Output, machine_readable).

must_be_detectable(Output, artificially_generated_or_manipulated) :-
    generates_synthetic_content(_, Output),
    detectable_as(Output, artificially_generated_or_manipulated).

% Dynamic predicates for qualities and marking states
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic marked_in_format/2.
:- dynamic detectable_as/2.
:- dynamic substantially_alters_input/1.
```

## deepseek seed 2

```prolog
:- module(ai_output_marking, [
    must_ensure_marking(Provider, Output),
    must_ensure_technical_solution(Provider, Solution),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technically_feasible(Solution),
    marking_obligation_applies(Provider),
    assistive_function(Output),
    standard_editing(Output),
    substantially_alters_input(Output),
    authorised_for_criminal_purposes(Provider)
]).

% Providers of AI systems generating synthetic content shall ensure outputs are marked
must_ensure_marking(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, Output),
    marking_obligation_applies(Provider),
    marked_machine_readable(Output),
    detectable_as_artificial(Output).

% Obligation applies unless an exception holds
marking_obligation_applies(Provider) :-
    provider_of_ai_system(Provider),
    \+ exempt_from_marking(Provider).

exempt_from_marking(Provider) :-
    provider_of_ai_system(Provider),
    assistive_function_for_standard_editing(Provider).

exempt_from_marking(Provider) :-
    provider_of_ai_system(Provider),
    does_not_substantially_alter(Provider).

exempt_from_marking(Provider) :-
    provider_of_ai_system(Provider),
    authorised_for_criminal_purposes(Provider).

assistive_function_for_standard_editing(Provider) :-
    provider_of_ai_system(Provider),
    assistive_function(Output),
    standard_editing(Output),
    generates_synthetic_content(Provider, Output).

does_not_substantially_alter(Provider) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, Output),
    \+ substantially_alters_input(Output).

% Providers shall ensure technical solutions are effective, interoperable, robust, reliable
must_ensure_technical_solution(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _),
    marking_obligation_applies(Provider),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technically_feasible(Solution).

technically_feasible(Solution) :-
    takes_into_account_specificities(Solution),
    takes_into_account_costs(Solution),
    takes_into_account_state_of_art(Solution).

takes_into_account_specificities(Solution) :-
    technical_solution(Solution),
    content_type_specificities(_).

takes_into_account_costs(Solution) :-
    technical_solution(Solution),
    implementation_costs(_).

takes_into_account_state_of_art(Solution) :-
    technical_solution(Solution),
    state_of_art(technical_standards).

% Dynamic predicates for external facts
:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic marked_machine_readable/1.
:- dynamic detectable_as_artificial/1.
:- dynamic assistive_function/1.
:- dynamic standard_editing/1.
:- dynamic substantially_alters_input/1.
:- dynamic authorised_for_criminal_purposes/1.
:- dynamic technical_solution/1.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic content_type_specificities/1.
:- dynamic implementation_costs/1.
:- dynamic state_of_art/1.
```

## deepseek seed 3

```prolog
:- module(ai_output_marking, [
    must_ensure_marking(Provider, Output),
    must_ensure_effectiveness(Provider, TechnicalSolution),
    must_ensure_interoperability(Provider, TechnicalSolution),
    must_ensure_robustness(Provider, TechnicalSolution),
    must_ensure_reliability(Provider, TechnicalSolution),
    technically_feasible(TechnicalSolution),
    exemption_applies(Provider),
    permitted_non_marking(Provider)
]).

% Core obligation
must_ensure_marking(Provider, Output) :-
    provider_of_ai_system(Provider),
    general_purpose_ai_system(Provider),
    generates_synthetic(Provider, Type),
    synthetic_content_type(Type),
    output_of_system(Output, Provider),
    \+ permitted_non_marking(Provider).

synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% Marking requirements
must_ensure_marking(Provider, Output) :-
    must_ensure_marking(Provider, Output),
    marked_in_machine_readable_format(Output).

must_ensure_marking(Provider, Output) :-
    must_ensure_marking(Provider, Output),
    detectable_as_artificial(Output).

% Technical solution quality obligations
must_ensure_effectiveness(Provider, TechnicalSolution) :-
    must_ensure_marking(Provider, _),
    technical_solution(TechnicalSolution, Provider),
    technically_feasible(TechnicalSolution).

must_ensure_interoperability(Provider, TechnicalSolution) :-
    must_ensure_marking(Provider, _),
    technical_solution(TechnicalSolution, Provider),
    technically_feasible(TechnicalSolution).

must_ensure_robustness(Provider, TechnicalSolution) :-
    must_ensure_marking(Provider, _),
    technical_solution(TechnicalSolution, Provider),
    technically_feasible(TechnicalSolution).

must_ensure_reliability(Provider, TechnicalSolution) :-
    must_ensure_marking(Provider, _),
    technical_solution(TechnicalSolution, Provider),
    technically_feasible(TechnicalSolution).

technically_feasible(TechnicalSolution) :-
    technical_solution(TechnicalSolution, _Provider),
    takes_into_account(TechnicalSolution, specificities_of(content_type)),
    takes_into_account(TechnicalSolution, costs_of(implementation)),
    takes_into_account(TechnicalSolution, state_of_art).

% Exemptions
permitted_non_marking(Provider) :-
    provider_of_ai_system(Provider),
    exemption_applies(Provider).

exemption_applies(Provider) :-
    performs_assistive_function(Provider, standard_editing).

exemption_applies(Provider) :-
    does_not_substantially_alter(Provider, input_data_provided_by(deployer)),
    does_not_substantially_alter(Provider, semantics_of(input_data_provided_by(deployer))).

exemption_applies(Provider) :-
    authorised_by_law(Provider, detect_criminal_offences).

exemption_applies(Provider) :-
    authorised_by_law(Provider, prevent_criminal_offences).

exemption_applies(Provider) :-
    authorised_by_law(Provider, investigate_criminal_offences).

exemption_applies(Provider) :-
    authorised_by_law(Provider, prosecute_criminal_offences).

:- dynamic provider_of_ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic/2.
:- dynamic output_of_system/2.
:- dynamic technical_solution/2.
:- dynamic takes_into_account/2.
:- dynamic performs_assistive_function/2.
:- dynamic does_not_substantially_alter/2.
:- dynamic authorised_by_law/2.
:- dynamic marked_in_machine_readable_format/1.
:- dynamic detectable_as_artificial/1.
```

## gemini seed 1

```prolog
:- module(marking_synthetic_content, [
    must_ensure(2),
    exempt_synthetic_content_obligation(1),
    generates_synthetic_content(1),
    effective_interoperable_robust_reliable(1)
]).

:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_audio(1).
:- dynamic generates_synthetic_image(1).
:- dynamic generates_synthetic_video(1).
:- dynamic generates_synthetic_text(1).
:- dynamic provides_system/2.
:- dynamic performs_assistive_function_standard_editing(1).
:- dynamic does_not_substantially_alter_input_data_or_semantics(1).
:- dynamic authorised_by_law_criminal_offence_purpose(1).
:- dynamic technically_feasible(1).
:- dynamic takes_into_account_content_specificities(1).
:- dynamic takes_into_account_implementation_costs(1).
:- dynamic takes_into_account_state_of_art(1).

% Content generation qualification
generates_synthetic_content(System) :-
    generates_synthetic_audio(System).
generates_synthetic_content(System) :-
    generates_synthetic_image(System).
generates_synthetic_content(System) :-
    generates_synthetic_video(System).
generates_synthetic_content(System) :-
    generates_synthetic_text(System).

% Exceptions to the obligation
exempt_synthetic_content_obligation(System) :-
    performs_assistive_function_standard_editing(System).
exempt_synthetic_content_obligation(System) :-
    does_not_substantially_alter_input_data_or_semantics(System).
exempt_synthetic_content_obligation(System) :-
    authorised_by_law_criminal_offence_purpose(System).

% Technical solution requirements
effective_interoperable_robust_reliable(System) :-
    technically_feasible(System),
    takes_into_account_content_specificities(System),
    takes_into_account_implementation_costs(System),
    takes_into_account_state_of_art(System).

% Obligation on providers to mark outputs and ensure technical solutions
must_ensure(Provider, marked_and_detectable_output(System)) :-
    provider(Provider),
    provides_system(Provider, System),
    ai_system(System),
    generates_synthetic_content(System),
    \+ exempt_synthetic_content_obligation(System).

must_ensure(Provider, effective_interoperable_robust_reliable_solutions(System)) :-
    provider(Provider),
    provides_system(Provider, System),
    ai_system(System),
    generates_synthetic_content(System),
    effective_interoperable_robust_reliable(System),
    \+ exempt_synthetic_content_obligation(System).
```

## gemini seed 2

```prolog
:- module(synthetic_content_marking, [
    must_ensure(2),
    required_marking(1),
    exempt_synthetic_content_obligation(1)
]).

:- dynamic generates_synthetic_content/2.
:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic authorised_by_law_for_criminal_offence_purpose/1.

% Providers of AI systems (including GPAI) generating synthetic audio, image,
% video or text content shall ensure that outputs are marked and detectable,
% and ensure technical solutions are effective, interoperable, robust and reliable.
must_ensure(Provider, marked_and_detectable_output(System)) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_synthetic_content_obligation(System).

must_ensure(Provider, effective_technical_solution(System)) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_synthetic_content_obligation(System).

% The requirement on the AI system itself
required_marking(System) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_synthetic_content_obligation(System).

% General-purpose AI systems generating synthetic content are AI systems
ai_system(System) :-
    general_purpose_ai_system(System).

% Exceptions where the obligation does not apply:
% 1. Perform an assistive function for standard editing.
exempt_synthetic_content_obligation(System) :-
    performs_assistive_function_for_standard_editing(System).

% 2. Do not substantially alter the input data provided by the deployer or the semantics thereof.
exempt_synthetic_content_obligation(System) :-
    does_not_substantially_alter_input_data(System).

% 3. Authorised by law to detect, prevent, investigate or prosecute criminal offences.
exempt_synthetic_content_obligation(System) :-
    authorised_by_law_for_criminal_offence_purpose(System).
```

## gemini seed 3

```prolog
:- module(marking_synthetic_content, [
    must_ensure(2),
    exempt_synthetic_content_obligation(1),
    effective_interoperable_robust_reliable(1)
]).

:- dynamic provider_of(2).
:- dynamic ai_system(1).
:- dynamic general_purpose_ai_system(1).
:- dynamic generates_synthetic_content(2).
:- dynamic output_of(2, 1).
:- dynamic technically_feasible(1).
:- dynamic assistive_function_standard_editing(1).
:- dynamic substantially_alters_input_data_or_semantics(1).
:- dynamic authorised_by_law_for_criminal_offences(1).

% Providers of AI systems, including general-purpose AI systems, generating
% synthetic audio, image, video or text content, shall ensure that the outputs
% of the AI system are marked in a machine-readable format and detectable as
% artificially generated or manipulated.
must_ensure(Provider, marked_and_detectable(Output)) :-
    provider_of(Provider, System),
    ai_system(System),
    generates_synthetic_content(System, ContentType),
    synthetic_content_type(ContentType),
    output_of(Output, System),
    \+ exempt_synthetic_content_obligation(System).

synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% Providers shall ensure their technical solutions are effective, interoperable,
% robust and reliable as far as this is technically feasible, taking into account
% the specificities and limitations of various types of content, the costs of
% implementation and the generally acknowledged state of the art...
must_ensure(Provider, effective_solutions(System)) :-
    provider_of(Provider, System),
    ai_system(System),
    generates_synthetic_content(System, ContentType),
    synthetic_content_type(ContentType),
    technically_feasible(solution(System)),
    effective_interoperable_robust_reliable(solution(System)),
    \+ exempt_synthetic_content_obligation(System).

effective_interoperable_robust_reliable(solution(System)) :-
    technically_feasible(solution(System)).

% This obligation shall not apply to the extent the AI systems perform an assistive
% function for standard editing or do not substantially alter the input data provided
% by the deployer or the semantics thereof, or where authorised by law to detect,
% prevent, investigate or prosecute criminal offences.
exempt_synthetic_content_obligation(System) :-
    assistive_function_standard_editing(System).

exempt_synthetic_content_obligation(System) :-
    ai_system(System),
    \+ substantially_alters_input_data_or_semantics(System).

exempt_synthetic_content_obligation(System) :-
    authorised_by_law_for_criminal_offences(System).

substantially_alters_input_data_or_semantics(System) :-
    substantially_alters_input_data_or_semantics(System).
```

## kimi seed 1

```prolog
:- module(ai_content_marking, [
    must_ensure_marking/2,
    must_ensure_technical_solutions/2,
    exempt_marking/1,
    assistive_function/1,
    standard_editing/1,
    does_not_substantially_alter/1,
    authorised_by_law/1,
    synthetic_content/1,
    machine_readable_format/1,
    detectable_as_artificial/1,
    effective/1,
    interoperable/1,
    robust/1,
    reliable/1,
    technically_feasible/1,
    specificities_of_content/1,
    limitations_of_content/1,
    implementation_costs/1,
    state_of_the_art/1,
    relevant_technical_standards/1,
    criminal_offence_purpose/1
]).

% Inputs (not in text, assumed from world knowledge)
:- dynamic deployer_provided_input/1.
:- dynamic input_semantics/1.

% Core obligation: marking requirements
must_ensure_marking(Provider, outputs(AiSystem)) :-
    provider(Provider),
    ai_system(AiSystem),
    generates_synthetic_content(AiSystem),
    \+ exempt_marking(AiSystem).

generates_synthetic_content(AiSystem) :-
    generates_synthetic_audio(AiSystem).
generates_synthetic_content(AiSystem) :-
    generates_synthetic_image(AiSystem).
generates_synthetic_content(AiSystem) :-
    generates_synthetic_video(AiSystem).
generates_synthetic_content(AiSystem) :-
    generates_synthetic_text(AiSystem).

% Marking specifications
machine_readable_format(outputs(AiSystem)) :-
    must_ensure_marking(_Provider, outputs(AiSystem)).

detectable_as_artificial(outputs(AiSystem)) :-
    must_ensure_marking(_Provider, outputs(AiSystem)).

% Technical solutions requirements
must_ensure_technical_solutions(Provider, technical_solutions(AiSystem)) :-
    must_ensure_marking(Provider, outputs(AiSystem)).

effective(technical_solutions(AiSystem)) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

interoperable(technical_solutions(AiSystem)) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

robust(technical_solutions(AiSystem)) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

reliable(technical_solutions(AiSystem)) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

% Qualification: as far as technically feasible
technically_feasible(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

% Factors to take into account
specificities_of_content(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

limitations_of_content(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

implementation_costs(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

state_of_the_art(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

relevant_technical_standards(AiSystem) :-
    must_ensure_technical_solutions(_Provider, technical_solutions(AiSystem)).

% Exemptions from marking obligation
exempt_marking(AiSystem) :-
    assistive_function(AiSystem),
    standard_editing(AiSystem).

exempt_marking(AiSystem) :-
    does_not_substantially_alter(AiSystem),
    deployer_provided_input(AiSystem).

exempt_marking(AiSystem) :-
    does_not_substantially_alter(AiSystem),
    input_semantics(AiSystem).

exempt_marking(AiSystem) :-
    authorised_by_law(AiSystem),
    criminal_offence_purpose(AiSystem).

criminal_offence_purpose(AiSystem) :-
    detect_criminal_offence(AiSystem).
criminal_offence_purpose(AiSystem) :-
    prevent_criminal_offence(AiSystem).
criminal_offence_purpose(AiSystem) :-
    investigate_criminal_offence(AiSystem).
criminal_offence_purpose(AiSystem) :-
    prosecute_criminal_offence(AiSystem).

% Types of synthetic content generation (inputs)
:- dynamic generates_synthetic_audio/1.
:- dynamic generates_synthetic_image/1.
:- dynamic generates_synthetic_video/1.
:- dynamic generates_synthetic_text/1.
:- dynamic assistive_function/1.
:- dynamic standard_editing/1.
:- dynamic does_not_substantially_alter/1.
:- dynamic authorised_by_law/1.
:- dynamic detect_criminal_offence/1.
:- dynamic prevent_criminal_offence/1.
:- dynamic investigate_criminal_offence/1.
:- dynamic prosecute_criminal_offence/1.
:- dynamic provider/1.
:- dynamic ai_system/1.
```

## kimi seed 2

```prolog
:- module(ai_content_marking, [
    must_ensure_marking/2,
    must_ensure_technical_solutions/2,
    exempt_marking/1
]).

% Inputs: predicates about the world the text does not settle
:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic output/2.
:- dynamic machine_readable_format/1.
:- dynamic detectable_as_artificial/1.
:- dynamic assistive_function/2.
:- dynamic standard_editing/1.
:- dynamic substantially_alters_input/1.
:- dynamic alters_semantics/1.
:- dynamic input_data/2.
:- dynamic deployer/1.
:- dynamic authorised_by_law/2.
:- dynamic detect_criminal_offence/1.
:- dynamic prevent_criminal_offence/1.
:- dynamic investigate_criminal_offence/1.
:- dynamic prosecute_criminal_offence/1.
:- dynamic technical_feasibility_applies/1.
:- dynamic specificities_of_content/2.
:- dynamic limitations_of_content/2.
:- dynamic implementation_cost/2.
:- dynamic state_of_the_art/2.
:- dynamic relevant_technical_standard/2.

% Core obligations

must_ensure_marking(Provider, marking(output(AiSystem), Format, Detectable)) :-
    provider(Provider),
    ai_system(AiSystem),
    (general_purpose_ai_system(AiSystem); ai_system(AiSystem)),
    generates_synthetic_content(AiSystem, ContentType),
    content_type(ContentType),
    output(AiSystem, Output),
    machine_readable_format(Format),
    detectable_as_artificial(Detectable),
    \+ exempt_marking(AiSystem).

must_ensure_technical_solutions(Provider, technical_solution(Solution, effective, interoperable, robust, reliable)) :-
    provider(Provider),
    ai_system(AiSystem),
    (general_purpose_ai_system(AiSystem); ai_system(AiSystem)),
    generates_synthetic_content(AiSystem, ContentType),
    content_type(ContentType),
    technical_feasibility_applies(AiSystem),
    technical_solution_properties(AiSystem, Solution),
    \+ exempt_marking(AiSystem).

% Technical solution properties with feasibility considerations

technical_solution_properties(AiSystem, Solution) :-
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technical_feasibility(AiSystem, Solution).

technical_feasibility(AiSystem, Solution) :-
    technical_feasibility_applies(AiSystem),
    specificities_of_content(AiSystem, Specificities),
    limitations_of_content(AiSystem, Limitations),
    implementation_cost(Solution, Cost),
    state_of_the_art(Solution, StateOfArt),
    relevant_technical_standard(Solution, Standard).

% Exemption conditions

exempt_marking(AiSystem) :-
    ai_system(AiSystem),
    assistive_function(AiSystem, standard_editing(Editing)),
    standard_editing(Editing).

exempt_marking(AiSystem) :-
    ai_system(AiSystem),
    input_data(AiSystem, Data),
    deployer(Deployer),
    provides_input(Deployer, Data),
    \+ substantially_alters_input(AiSystem),
    \+ alters_semantics(AiSystem).

exempt_marking(AiSystem) :-
    ai_system(AiSystem),
    authorised_by_law(AiSystem, Purpose),
    criminal_offence_purpose(Purpose).

% Helper predicates for content types

content_type(audio).
content_type(image).
content_type(video).
content_type(text).

% Helper predicates for criminal offence purposes

criminal_offence_purpose(detect(Crime)) :- detect_criminal_offence(Crime).
criminal_offence_purpose(prevent(Crime)) :- prevent_criminal_offence(Crime).
criminal_offence_purpose(investigate(Crime)) :- investigate_criminal_offence(Crime).
criminal_offence_purpose(prosecute(Crime)) :- prosecute_criminal_offence(Crime).

% Additional input predicates
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic provides_input/2.
```

## kimi seed 3

```prolog
:- module(ai_content_marking, [
    must_ensure_marked/2,
    must_ensure_technical_solutions/2,
    exempt_marking/1,
    synthetic_content/1,
    machine_readable_format/1,
    detectable_as_artificial/1,
    effective/1,
    interoperable/1,
    robust/1,
    reliable/1,
    assistive_function/1,
    standard_editing/1,
    substantially_alters/2,
    alters_semantics/2,
    authorised_by_law/1,
    detect_criminal_offence/1,
    prevent_criminal_offence/1,
    investigate_criminal_offence/1,
    prosecute_criminal_offence/1
]).

% Input predicates - facts about the world the text does not settle
:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates/2.
:- dynamic output/2.
:- dynamic technical_solution/2.
:- dynamic technically_feasible/1.
:- dynamic specificities_of_content/2.
:- dynamic limitations_of_content/2.
:- dynamic implementation_cost/2.
:- dynamic state_of_the_art/1.
:- dynamic reflected_in_technical_standard/2.
:- dynamic input_data/2.
:- dynamic deployer_provided/2.
:- dynamic semantics/2.

% Core obligation: providers must ensure outputs are marked and detectable
must_ensure_marked(Provider, output(System, Content)) :-
    provider(Provider),
    ai_system(System),
    (ai_system(System); general_purpose_ai_system(System)),
    generates(System, Content),
    synthetic_content(Content),
    \+ exempt_marking(System).

must_ensure_marked(Provider, machine_readable_format(output(System, Content))) :-
    provider(Provider),
    ai_system(System),
    (ai_system(System); general_purpose_ai_system(System)),
    generates(System, Content),
    synthetic_content(Content),
    \+ exempt_marking(System).

must_ensure_marked(Provider, detectable_as_artificial(output(System, Content))) :-
    provider(Provider),
    ai_system(System),
    (ai_system(System); general_purpose_ai_system(System)),
    generates(System, Content),
    synthetic_content(Content),
    \+ exempt_marking(System).

% Technical solution requirements
must_ensure_technical_solutions(Provider, technical_solution(System, Solution)) :-
    provider(Provider),
    ai_system(System),
    (ai_system(System); general_purpose_ai_system(System)),
    generates(System, Content),
    synthetic_content(Content),
    \+ exempt_marking(System),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technically_feasible(Solution),
    takes_into_account_specificities(Solution, Content),
    takes_into_account_limitations(Solution, Content),
    takes_into_account_costs(Solution, Content),
    takes_into_account_state_of_the_art(Solution).

% Helper predicates for technical solution conditions
takes_into_account_specificities(Solution, Content) :-
    specificities_of_content(Content, _Specificities).

takes_into_account_limitations(Solution, Content) :-
    limitations_of_content(Content, _Limitations).

takes_into_account_costs(Solution, Content) :-
    implementation_cost(Content, _Cost).

takes_into_account_state_of_the_art(Solution) :-
    state_of_the_art(State),
    reflected_in_technical_standard(State, _Standard).

% Exemptions from marking obligation
exempt_marking(System) :-
    ai_system(System),
    assistive_function(System),
    standard_editing(System).

exempt_marking(System) :-
    ai_system(System),
    generates(System, Content),
    input_data(System, Data),
    deployer_provided(System, Data),
    \+ substantially_alters(System, Data),
    \+ alters_semantics(System, Data).

exempt_marking(System) :-
    ai_system(System),
    authorised_by_law(System),
    (detect_criminal_offence(System); prevent_criminal_offence(System); investigate_criminal_offence(System); prosecute_criminal_offence(System)).

% Content types covered by the obligation
synthetic_content(audio).
synthetic_content(image).
synthetic_content(video).
synthetic_content(text).
```

## mistral seed 1

```prolog
:- module(synthetic_content_marking, [
    must_mark_output/2,
    must_ensure_technical_solution/2,
    exempt_assistive_editing/2,
    exempt_non_substantial_alteration/2,
    exempt_criminal_offence_detection/2
]).

% Providers of AI systems generating synthetic audio, image, video or text content
% shall ensure outputs are marked in a machine-readable format and detectable as
% artificially generated or manipulated.

must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, ContentType),
    synthetic_content_type(ContentType),
    output_of_ai_system(Output, Provider),
    marked_machine_readable(Output),
    detectable_artificially_generated(Output).

generates_synthetic_content(Provider, audio) :-
    provider_of_ai_system(Provider),
    generates_synthetic_audio(Provider).
generates_synthetic_content(Provider, image) :-
    provider_of_ai_system(Provider),
    generates_synthetic_image(Provider).
generates_synthetic_content(Provider, video) :-
    provider_of_ai_system(Provider),
    generates_synthetic_video(Provider).
generates_synthetic_content(Provider, text) :-
    provider_of_ai_system(Provider),
    generates_synthetic_text(Provider).

synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% Providers shall ensure their technical solutions are effective, interoperable,
% robust and reliable as far as this is technically feasible, taking into account
% the specificities and limitations of various types of content, the costs of
% implementation and the generally acknowledged state of the art, as may be
% reflected in relevant technical standards.

must_ensure_technical_solution(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _ContentType),
    technical_solution(Provider, Solution),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution),
    technically_feasible(Solution, Provider),
    takes_into_account_specificities(Solution),
    takes_into_account_limitations(Solution),
    takes_into_account_costs(Solution),
    takes_into_account_state_of_the_art(Solution).

technically_feasible(Solution, Provider) :-
    technical_solution(Provider, Solution),
    feasible_given_constraints(Solution, Provider).

takes_into_account_specificities(Solution) :-
    considers_content_specificities(Solution).

takes_into_account_limitations(Solution) :-
    considers_content_limitations(Solution).

takes_into_account_costs(Solution) :-
    considers_implementation_costs(Solution).

takes_into_account_state_of_the_art(Solution) :-
    reflects_state_of_the_art(Solution),
    may_reflect_technical_standards(Solution).

% This obligation shall not apply to the extent the AI systems perform an
% assistive function for standard editing...

exempt_assistive_editing(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    performs_assistive_function(System, standard_editing).

% ...or do not substantially alter the input data provided by the deployer
% or the semantics thereof...

exempt_non_substantial_alteration(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    deployer(Deployer, System),
    input_data(Data, Deployer, System),
    \+ substantially_alters(System, Data),
    \+ substantially_alters_semantics(System, Data).

% ...or where authorised by law to detect, prevent, investigate or prosecute
% criminal offences.

exempt_criminal_offence_detection(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System, Purpose),
    criminal_offence_purpose(Purpose).

criminal_offence_purpose(detect_criminal_offences).
criminal_offence_purpose(prevent_criminal_offences).
criminal_offence_purpose(investigate_criminal_offences).
criminal_offence_purpose(prosecute_criminal_offences).

% The marking obligation does not apply where an exemption holds.

must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _ContentType),
    output_of_ai_system(Output, Provider),
    \+ exempt_marking(Provider, Output).

exempt_marking(Provider, Output) :-
    ai_system(Provider, System),
    output_of_ai_system(Output, System),
    exempt_assistive_editing(Provider, System).
exempt_marking(Provider, Output) :-
    ai_system(Provider, System),
    output_of_ai_system(Output, System),
    exempt_non_substantial_alteration(Provider, System).
exempt_marking(Provider, Output) :-
    ai_system(Provider, System),
    output_of_ai_system(Output, System),
    exempt_criminal_offence_detection(Provider, System).

% Inputs: facts about the world the text does not settle.

:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_audio/1.
:- dynamic generates_synthetic_image/1.
:- dynamic generates_synthetic_video/1.
:- dynamic generates_synthetic_text/1.
:- dynamic output_of_ai_system/2.
:- dynamic marked_machine_readable/1.
:- dynamic detectable_artificially_generated/1.
:- dynamic technical_solution/2.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic feasible_given_constraints/2.
:- dynamic considers_content_specificities/1.
:- dynamic considers_content_limitations/1.
:- dynamic considers_implementation_costs/1.
:- dynamic reflects_state_of_the_art/1.
:- dynamic may_reflect_technical_standards/1.
:- dynamic ai_system/2.
:- dynamic performs_assistive_function/2.
:- dynamic standard_editing/1.
:- dynamic deployer/2.
:- dynamic input_data/3.
:- dynamic substantially_alters/2.
:- dynamic substantially_alters_semantics/2.
:- dynamic authorised_by_law/2.
```

## mistral seed 2

```prolog
:- module(synthetic_content_marking, [
    must_mark_output/2,
    must_ensure_technical_solution/2,
    exempt_assistive_editing/2,
    exempt_non_substantial_alteration/2,
    exempt_criminal_justice/2
]).

% Providers of AI systems generating synthetic audio, image, video or text content
% shall ensure outputs are marked in a machine-readable format and detectable as
% artificially generated or manipulated.

must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider),
    ai_output(Output, Provider),
    synthetic_content_type(Output).

generates_synthetic_content(Provider) :-
    generates_synthetic_audio(Provider).
generates_synthetic_content(Provider) :-
    generates_synthetic_image(Provider).
generates_synthetic_content(Provider) :-
    generates_synthetic_video(Provider).
generates_synthetic_content(Provider) :-
    generates_synthetic_text(Provider).

synthetic_content_type(Output) :-
    synthetic_audio(Output).
synthetic_content_type(Output) :-
    synthetic_image(Output).
synthetic_content_type(Output) :-
    synthetic_video(Output).
synthetic_content_type(Output) :-
    synthetic_text(Output).

% The marking must be machine-readable and detectable as artificially generated or manipulated.

marked_machine_readable(Output) :-
    must_mark_output(_Provider, Output).

detectable_as_artificial(Output) :-
    must_mark_output(_Provider, Output).

% Providers shall ensure their technical solutions are effective, interoperable,
% robust and reliable as far as this is technically feasible, taking into account
% the specificities and limitations of various types of content, the costs of
% implementation and the generally acknowledged state of the art, as may be
% reflected in relevant technical standards.

must_ensure_technical_solution(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider),
    technical_solution(Provider, Solution),
    solution_for_marking(Solution).

effective(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

interoperable(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

robust(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

reliable(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

technically_feasible(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

considers_content_specificities(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

considers_content_limitations(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

considers_implementation_costs(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

reflects_state_of_the_art(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

reflects_technical_standards(Solution) :-
    must_ensure_technical_solution(_Provider, Solution).

% Exemption: assistive function for standard editing

exempt_assistive_editing(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    performs_assistive_function(System),
    standard_editing(System).

% Exemption: does not substantially alter the input data provided by the deployer
% or the semantics thereof

exempt_non_substantial_alteration(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    deployer_provides_input(System, Deployer, InputData),
    does_not_substantially_alter(System, InputData),
    does_not_substantially_alter_semantics(System, InputData).

% Exemption: authorised by law to detect, prevent, investigate or prosecute
% criminal offences

exempt_criminal_justice(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System),
    purpose_detect_criminal_offences(System).
exempt_criminal_justice(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System),
    purpose_prevent_criminal_offences(System).
exempt_criminal_justice(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System),
    purpose_investigate_criminal_offences(System).
exempt_criminal_justice(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    authorised_by_law(System),
    purpose_prosecute_criminal_offences(System).

% The obligation does not apply where any exemption holds

obligation_applies(Provider, System) :-
    provider_of_ai_system(Provider),
    ai_system(Provider, System),
    generates_synthetic_content(Provider),
    \+ exempt_assistive_editing(Provider, System),
    \+ exempt_non_substantial_alteration(Provider, System),
    \+ exempt_criminal_justice(Provider, System).

% Input predicates: facts about the world the text does not settle

:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_audio/1.
:- dynamic generates_synthetic_image/1.
:- dynamic generates_synthetic_video/1.
:- dynamic generates_synthetic_text/1.
:- dynamic ai_output/2.
:- dynamic synthetic_audio/1.
:- dynamic synthetic_image/1.
:- dynamic synthetic_video/1.
:- dynamic synthetic_text/1.
:- dynamic technical_solution/2.
:- dynamic solution_for_marking/1.
:- dynamic ai_system/2.
:- dynamic performs_assistive_function/1.
:- dynamic standard_editing/1.
:- dynamic deployer_provides_input/3.
:- dynamic does_not_substantially_alter/2.
:- dynamic does_not_substantially_alter_semantics/2.
:- dynamic authorised_by_law/1.
:- dynamic purpose_detect_criminal_offences/1.
:- dynamic purpose_prevent_criminal_offences/1.
:- dynamic purpose_investigate_criminal_offences/1.
:- dynamic purpose_prosecute_criminal_offences/1.
```

## mistral seed 3

```prolog
:- module(synthetic_content_marking, [
    must_mark_output/2,
    must_ensure_technical_solution/2,
    exempt_assistive_editing/2,
    exempt_non_substantial_alteration/2,
    exempt_criminal_justice/2
]).

% Providers of AI systems generating synthetic audio, image, video or text content
% shall ensure outputs are marked in a machine-readable format and detectable as
% artificially generated or manipulated.

must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, ContentType),
    synthetic_content_type(ContentType),
    output_of_ai_system(Output, Provider),
    \+ exempt_from_marking(Provider, Output).

synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% Providers shall ensure their technical solutions are effective, interoperable,
% robust and reliable as far as this is technically feasible, taking into account
% the specificities and limitations of various types of content, the costs of
% implementation and the generally acknowledged state of the art, as may be
% reflected in relevant technical standards.

must_ensure_technical_solution(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _ContentType),
    technical_solution(Solution, Provider),
    \+ exempt_from_marking(Provider, _Output).

% Exemption: AI systems perform an assistive function for standard editing

exempt_assistive_editing(Provider, Output) :-
    provider_of_ai_system(Provider),
    output_of_ai_system(Output, Provider),
    performs_assistive_function(Provider, standard_editing).

% Exemption: do not substantially alter the input data provided by the deployer
% or the semantics thereof

exempt_non_substantial_alteration(Provider, Output) :-
    provider_of_ai_system(Provider),
    output_of_ai_system(Output, Provider),
    input_data_provided_by_deployer(InputData, Provider),
    output_derived_from_input(Output, InputData),
    \+ substantially_alters(Provider, InputData).

% Exemption: authorised by law to detect, prevent, investigate or prosecute
% criminal offences

exempt_criminal_justice(Provider, Output) :-
    provider_of_ai_system(Provider),
    output_of_ai_system(Output, Provider),
    authorised_by_law(Provider, criminal_justice_purpose(Purpose)),
    criminal_justice_purpose(Purpose).

criminal_justice_purpose(detect).
criminal_justice_purpose(prevent).
criminal_justice_purpose(investigate).
criminal_justice_purpose(prosecute).

% Combined exemption check

exempt_from_marking(Provider, Output) :-
    exempt_assistive_editing(Provider, Output).
exempt_from_marking(Provider, Output) :-
    exempt_non_substantial_alteration(Provider, Output).
exempt_from_marking(Provider, Output) :-
    exempt_criminal_justice(Provider, Output).

% Input predicates: facts about the world the text does not settle

:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic output_of_ai_system/2.
:- dynamic technical_solution/2.
:- dynamic performs_assistive_function/2.
:- dynamic input_data_provided_by_deployer/2.
:- dynamic output_derived_from_input/2.
:- dynamic substantially_alters/2.
:- dynamic authorised_by_law/2.
```

## opus seed 1

```prolog
:- module(synthetic_content_marking, [
    generates_synthetic_content/1,
    must_ensure/2,
    exempt_output_marking/1,
    synthetic_content_type/1
]).

:- dynamic provider_of/2.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_content/2.
:- dynamic performs_assistive_function/2.
:- dynamic substantially_alters/2.
:- dynamic authorised_by_law/2.
:- dynamic technically_feasible/1.
:- dynamic output_of/2.
:- dynamic technical_solution_of/2.

% Types of synthetic content
synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% AI systems, including general-purpose AI systems, generating synthetic content
generates_synthetic_content(S) :-
    ai_system(S),
    generates_content(S, synthetic(Type)),
    synthetic_content_type(Type).
generates_synthetic_content(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(Type)),
    synthetic_content_type(Type).

% Duty to mark outputs machine-readably and detectably
must_ensure(Provider, marked(Output, machine_readable_format)) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    output_of(Output, S),
    \+ exempt_output_marking(S).
must_ensure(Provider, detectable(Output, artificially_generated_or_manipulated)) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    output_of(Output, S),
    \+ exempt_output_marking(S).

% Duty that technical solutions are effective, interoperable, robust and reliable,
% as far as technically feasible, considering content specificities and limitations,
% implementation costs and the generally acknowledged state of the art
must_ensure(Provider, quality(Solution, [effective, interoperable, robust, reliable],
        taking_into_account([content_specificities_and_limitations,
                             implementation_costs,
                             state_of_the_art(technical_standards)]))) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    technical_solution_of(Solution, S),
    technically_feasible(Solution),
    \+ exempt_output_marking(S).

% Exemptions
exempt_output_marking(S) :-
    performs_assistive_function(S, standard_editing).
exempt_output_marking(S) :-
    ai_system(S),
    \+ alters_input_substantially(S).
exempt_output_marking(S) :-
    authorised_by_law(S, detect_prevent_investigate_prosecute(criminal_offence)).

alters_input_substantially(S) :-
    substantially_alters(S, input_data(deployer)).
alters_input_substantially(S) :-
    substantially_alters(S, semantics(input_data(deployer))).
```

## opus seed 2

```prolog
:- module(synthetic_content_marking, [
    generates_synthetic_content/1,
    must_ensure/2,
    exempt_output_marking/1,
    technical_solution_standard_met/1
]).

:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic provider_of/2.
:- dynamic generates_content/2.
:- dynamic synthetic_content_type/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic substantially_alters_input_data/1.
:- dynamic substantially_alters_input_semantics/1.
:- dynamic authorised_by_law_for_criminal_offence/1.
:- dynamic technically_feasible/1.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic technical_solution_of/2.

% Synthetic content types
synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

generates_synthetic_content(S) :-
    ai_system(S),
    generates_content(S, Type),
    synthetic_content_type(Type).
generates_synthetic_content(S) :-
    general_purpose_ai_system(S),
    generates_content(S, Type),
    synthetic_content_type(Type).

% Exemptions
exempt_output_marking(S) :-
    performs_assistive_function_for_standard_editing(S).
exempt_output_marking(S) :-
    generates_synthetic_content(S),
    \+ alters_input(S).
exempt_output_marking(S) :-
    authorised_by_law_for_criminal_offence(S).

alters_input(S) :- substantially_alters_input_data(S).
alters_input(S) :- substantially_alters_input_semantics(S).

% Marking obligation
must_ensure(Provider, output_marked(S, machine_readable_format)) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    \+ exempt_output_marking(S).
must_ensure(Provider, output_detectable(S, artificially_generated_or_manipulated)) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    \+ exempt_output_marking(S).

% Quality of technical solutions, as far as technically feasible, taking into
% account content specificities, implementation costs and state of the art
must_ensure(Provider, technical_solution_quality(T, considering(content_specificity, implementation_cost, state_of_the_art))) :-
    provider_of(Provider, S),
    generates_synthetic_content(S),
    technical_solution_of(T, S),
    technically_feasible(T).

technical_solution_standard_met(T) :-
    effective(T),
    interoperable(T),
    robust(T),
    reliable(T).

alters_input(_) :- fail.
```

## opus seed 3

```prolog
:- module(synthetic_content_marking, [
    generates_synthetic_content/1,
    must_ensure/2,
    exempt_marking_obligation/1,
    marking_obligation_applies/1,
    synthetic_content_type/1
]).

:- dynamic provider_of/2.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_content/2.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic substantially_alters_input_data/1.
:- dynamic substantially_alters_input_semantics/1.
:- dynamic authorised_by_law_for_criminal_offence_purpose/1.
:- dynamic technically_feasible/1.

% Types of synthetic content
synthetic_content_type(audio).
synthetic_content_type(image).
synthetic_content_type(video).
synthetic_content_type(text).

% AI systems, including general-purpose AI systems, generating synthetic content
generates_synthetic_content(S) :-
    ai_system(S),
    generates_content(S, synthetic(T)),
    synthetic_content_type(T).
generates_synthetic_content(S) :-
    general_purpose_ai_system(S),
    generates_content(S, synthetic(T)),
    synthetic_content_type(T).

% Exceptions to the obligation
exempt_marking_obligation(S) :-
    performs_assistive_function_for_standard_editing(S).
exempt_marking_obligation(S) :-
    generates_synthetic_content(S),
    \+ substantially_alters_input_data(S),
    \+ substantially_alters_input_semantics(S).
exempt_marking_obligation(S) :-
    authorised_by_law_for_criminal_offence_purpose(S).

substantially_alters_input_data(_) :- fail.
substantially_alters_input_semantics(_) :- fail.

marking_obligation_applies(S) :-
    generates_synthetic_content(S),
    \+ exempt_marking_obligation(S).

% Outputs marked machine-readably and detectable as artificially generated or manipulated
must_ensure(P, marked(output(S), machine_readable_format)) :-
    provider_of(P, S),
    marking_obligation_applies(S).
must_ensure(P, detectable(output(S), artificially_generated_or_manipulated)) :-
    provider_of(P, S),
    marking_obligation_applies(S).

% Technical solutions effective, interoperable, robust, reliable as far as feasible,
% taking into account content specificities and limitations, implementation costs,
% and generally acknowledged state of the art (as reflected in technical standards)
must_ensure(P, technical_solution(S, Quality, considering([content_specificities_and_limitations, implementation_cost, state_of_the_art(technical_standard)]))) :-
    provider_of(P, S),
    marking_obligation_applies(S),
    technically_feasible(S),
    member_quality(Quality).

member_quality(effective).
member_quality(interoperable).
member_quality(robust).
member_quality(reliable).
```

## qwen seed 1

```prolog
:- module(synthetic_content_marking, [
    provider_of_ai_system/1,
    general_purpose_ai_system/1,
    generates_synthetic_content/2,
    must_mark_output/2,
    machine_readable_format/1,
    detectable_as_artificially_generated/1,
    must_ensure_technical_solution_properties/2,
    effective/1,
    interoperable/1,
    robust/1,
    reliable/1,
    technically_feasible/1,
    takes_into_account_content_specificities/1,
    takes_into_account_implementation_costs/1,
    takes_into_account_state_of_the_art/1,
    reflected_in_relevant_technical_standards/1,
    exempt_marking_obligation/1,
    performs_assistive_function_for_standard_editing/1,
    does_not_substantially_alter_input_data/1,
    does_not_substantially_alter_semantics/1,
    authorised_by_law_for_criminal_offences/1
]).

% Input predicates for world knowledge
:- dynamic provider_of_ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic machine_readable_format/1.
:- dynamic detectable_as_artificially_generated/1.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic technically_feasible/1.
:- dynamic reflected_in_relevant_technical_standards/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic does_not_substantially_alter_semantics/1.
:- dynamic authorised_by_law_for_criminal_offences/1.

% Providers of AI systems generating synthetic content must mark outputs
must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, Output),
    \+ exempt_marking_obligation(Provider).

% Marking must be in machine-readable format and detectable as artificial
must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, Output),
    machine_readable_format(Output),
    detectable_as_artificially_generated(Output).

% Technical solutions must have required properties when feasible
must_ensure_technical_solution_properties(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _Output),
    technically_feasible(Solution),
    effective(Solution),
    interoperable(Solution),
    robust(Solution),
    reliable(Solution).

% Considerations for technical feasibility
takes_into_account_content_specificities(Solution) :-
    technically_feasible(Solution).

takes_into_account_implementation_costs(Solution) :-
    technically_feasible(Solution).

takes_into_account_state_of_the_art(Solution) :-
    technically_feasible(Solution),
    reflected_in_relevant_technical_standards(Solution).

% Exemptions from marking obligation
exempt_marking_obligation(Provider) :-
    performs_assistive_function_for_standard_editing(Provider).

exempt_marking_obligation(Provider) :-
    does_not_substantially_alter_input_data(Provider).

exempt_marking_obligation(Provider) :-
    does_not_substantially_alter_semantics(Provider).

exempt_marking_obligation(Provider) :-
    authorised_by_law_for_criminal_offences(Provider).
```

## qwen seed 2

```prolog
:- module(synthetic_content_marking, [
    provider_of_ai_system/1,
    generates_synthetic_content/2,
    must_mark_output/2,
    machine_readable_format/1,
    detectable_as_artificially_generated/1,
    must_ensure_technical_solution_properties/2,
    effective/1,
    interoperable/1,
    robust/1,
    reliable/1,
    technically_feasible/1,
    takes_into_account_content_specificities/1,
    takes_into_account_implementation_costs/1,
    takes_into_account_state_of_the_art/1,
    reflected_in_relevant_technical_standards/1,
    exempt_marking_obligation/1,
    performs_assistive_function_for_standard_editing/1,
    does_not_substantially_alter_input_data/1,
    does_not_substantially_alter_semantics/1,
    authorised_by_law_for_criminal_offences/1
]).

% Input predicates for facts not defined in this text
:- dynamic provider_of_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic technically_feasible/1.
:- dynamic reflected_in_relevant_technical_standards/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic does_not_substantially_alter_semantics/1.
:- dynamic authorised_by_law_for_criminal_offences/1.

% Providers generating synthetic content must mark outputs
must_mark_output(Provider, Output) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _ContentType),
    \+ exempt_marking_obligation(Provider),
    output_of(Provider, Output).

% Marking requirements
machine_readable_format(Output) :-
    must_mark_output(_Provider, Output).

detectable_as_artificially_generated(Output) :-
    must_mark_output(_Provider, Output).

% Technical solution properties obligation
must_ensure_technical_solution_properties(Provider, Solution) :-
    provider_of_ai_system(Provider),
    generates_synthetic_content(Provider, _ContentType),
    \+ exempt_marking_obligation(Provider),
    technical_solution_for_marking(Provider, Solution),
    technically_feasible(Solution),
    takes_into_account_content_specificities(Solution),
    takes_into_account_implementation_costs(Solution),
    takes_into_account_state_of_the_art(Solution).

% Required properties of technical solutions
effective(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

interoperable(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

robust(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

reliable(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

% Considerations for technical feasibility
takes_into_account_content_specificities(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

takes_into_account_implementation_costs(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

takes_into_account_state_of_the_art(Solution) :-
    must_ensure_technical_solution_properties(_Provider, Solution).

% Exemptions from marking obligation
exempt_marking_obligation(Provider) :-
    performs_assistive_function_for_standard_editing(Provider).

exempt_marking_obligation(Provider) :-
    does_not_substantially_alter_input_data(Provider).

exempt_marking_obligation(Provider) :-
    does_not_substantially_alter_semantics(Provider).

exempt_marking_obligation(Provider) :-
    authorised_by_law_for_criminal_offences(Provider).
```

## qwen seed 3

```prolog
:- module(ai_content_marking, [
    provider/1,
    ai_system/1,
    general_purpose_ai_system/1,
    generates_synthetic_content/2,
    must_mark_output/2,
    machine_readable_format/1,
    detectable_as_artificially_generated/1,
    must_ensure_technical_solution_properties/2,
    effective/1,
    interoperable/1,
    robust/1,
    reliable/1,
    technically_feasible/1,
    takes_into_account_content_specificities/1,
    takes_into_account_implementation_costs/1,
    takes_into_account_state_of_the_art/1,
    reflected_in_relevant_technical_standards/1,
    exempt_marking_obligation/1,
    performs_assistive_function_for_standard_editing/1,
    does_not_substantially_alter_input_data/1,
    does_not_substantially_alter_semantics/1,
    authorised_by_law_for_criminal_offences/1
]).

% Inputs: facts about the world not settled by this text
:- dynamic provider/1.
:- dynamic ai_system/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_synthetic_content/2.
:- dynamic machine_readable_format/1.
:- dynamic detectable_as_artificially_generated/1.
:- dynamic effective/1.
:- dynamic interoperable/1.
:- dynamic robust/1.
:- dynamic reliable/1.
:- dynamic technically_feasible/1.
:- dynamic takes_into_account_content_specificities/1.
:- dynamic takes_into_account_implementation_costs/1.
:- dynamic takes_into_account_state_of_the_art/1.
:- dynamic reflected_in_relevant_technical_standards/1.
:- dynamic performs_assistive_function_for_standard_editing/1.
:- dynamic does_not_substantially_alter_input_data/1.
:- dynamic does_not_substantially_alter_semantics/1.
:- dynamic authorised_by_law_for_criminal_offences/1.

% Providers of AI systems generating synthetic content must mark outputs
must_mark_output(Provider, System) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_marking_obligation(System).

% General-purpose AI systems are included
must_mark_output(Provider, System) :-
    provider(Provider),
    general_purpose_ai_system(System),
    generates_synthetic_content(System, _Content),
    \+ exempt_marking_obligation(System).

% Marking requirements
must_mark_output(_Provider, output(System, Format)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    machine_readable_format(Format),
    detectable_as_artificially_generated(output(System, Format)).

% Technical solution properties obligation
must_ensure_technical_solution_properties(Provider, System) :-
    provider(Provider),
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System),
    takes_into_account_content_specificities(System),
    takes_into_account_implementation_costs(System),
    takes_into_account_state_of_the_art(System).

% Technical solutions must be effective, interoperable, robust and reliable
effective(solution(System)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System).

interoperable(solution(System)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System).

robust(solution(System)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System).

reliable(solution(System)) :-
    ai_system(System),
    generates_synthetic_content(System, _Content),
    technically_feasible(System).

% State of the art may be reflected in relevant technical standards
reflected_in_relevant_technical_standards(state_of_the_art) :-
    takes_into_account_state_of_the_art(_System).

% Exemptions from marking obligation
exempt_marking_obligation(System) :-
    performs_assistive_function_for_standard_editing(System).

exempt_marking_obligation(System) :-
    does_not_substantially_alter_input_data(System).

exempt_marking_obligation(System) :-
    does_not_substantially_alter_semantics(System).

exempt_marking_obligation(System) :-
    authorised_by_law_for_criminal_offences(System).
```
