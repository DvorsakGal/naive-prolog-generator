% Reference schema for AI Act Article 11(1) -- a sketch, not a complete legal model.
% Layers: inputs (facts) -> norms (obligation/permission) -> evaluation (violation/status).
:- module(art11_reference, [obligation/3, permission/2, violation/2, status/3]).

% ---------- Inputs: every non-derived predicate is declared; no stubs ----------
:- dynamic high_risk_ai_system/1, provider/2, sme/1, start_up/1, national_competent_authority/1,
           happens/2,                    % happens(Event, Time)
           technical_documentation/2,    % technical_documentation(System, Doc)
           contains/2,                   % contains(Doc, annex_iv_elements)
           finding/4,                    % finding(Doc, Criterion, Assessor, met|not_met)
           opts_for_simplified/2,        % opts_for_simplified(Provider, System)
           submitted_using/2,            % submitted_using(Doc, Form)
           notified_body/1, assesses/2,  % assesses(NotifiedBody, System)
           rejected_for_form/2.          % rejected_for_form(NotifiedBody, Doc)

% Background knowledge the paragraph does not state.
the_form(commission_simplified_form).                 % one identity for sentences 5-7
eligible_sme(P) :- sme(P).                            % start-ups qualify only if they are SMEs
recipient(R) :- national_competent_authority(R).           % recipients are entities
recipient(R) :- notified_body(R).
first_entry(S, T) :-                                  % earlier of the two events
    aggregate_all(min(X), ( happens(placed_on_market(S), X)
                          ; happens(put_into_service(S), X) ), T).

% Purposes are annotations, never conditions.
norm_purpose(provide_information(_, _), assess_compliance(chapter_iii_section_2)).
norm_purpose(accept(_, _), conformity_assessment).

% ---------- Norms ----------
duty_bearer(P, S) :- high_risk_ai_system(S), provider(P, S).

obligation(P, draw_up(S), before(first_entry(S)))      :- duty_bearer(P, S).
obligation(P, keep_up_to_date(S), after_each_change)   :- duty_bearer(P, S).
obligation(P, demonstrate_compliance(S), ongoing)      :- duty_bearer(P, S).
obligation(P, provide_information(S, R), ongoing)      :- duty_bearer(P, S), recipient(R).
obligation(P, include_annex_iv(S), at_minimum)         :- duty_bearer(P, S).
obligation(P, use_form(S, F), when_opted)              :-
    permission(P, simplify_annex_iv(S)), opts_for_simplified(P, S), the_form(F).
obligation(commission, establish(F), unconditional)    :- the_form(F).
obligation(NB, accept(Doc, F), in_assessment)          :-
    notified_body(NB), assesses(NB, S), technical_documentation(S, Doc),
    the_form(F), submitted_using(Doc, F).

permission(P, simplify_annex_iv(S)) :- duty_bearer(P, S), eligible_sme(P).

% ---------- Evaluation: breaches are derived, never assumed ----------
violation(P, draw_up(S)) :-
    obligation(P, draw_up(S), _), first_entry(S, T),
    \+ ( happens(documentation_drawn_up(S), T1), T1 < T ).
violation(P, keep_up_to_date(S)) :-
    obligation(P, keep_up_to_date(S), _), happens(system_changed(S), Tc),
    \+ ( happens(documentation_updated(S), Tu), Tu >= Tc ).
violation(P, include_annex_iv(S)) :-
    obligation(P, include_annex_iv(S), _), first_entry(S, _),
    \+ ( technical_documentation(S, D), contains(D, annex_iv_elements) ).
violation(P, A) :-                                    % open-textured: only an assessor's finding
    open_textured(A, S, Criterion), obligation(P, A, _),
    technical_documentation(S, D), finding(D, Criterion, _, not_met).
violation(P, use_form(S, F)) :-
    obligation(P, use_form(S, F), _), technical_documentation(S, D),
    submitted_using(D, Other), Other \== F.
violation(NB, accept(D, F)) :-
    obligation(NB, accept(D, F), _), rejected_for_form(NB, D).

open_textured(demonstrate_compliance(S), S, demonstrates_compliance).
open_textured(provide_information(S, _), S, clear_and_comprehensive).

% status(Bearer, Action, breached | met | undetermined)
status(B, A, breached)     :- obligation(B, A, _), violation(B, A), !.
status(B, A, undetermined) :- obligation(B, A, _), open_textured(A, S, C),
    \+ ( technical_documentation(S, D), finding(D, C, _, met) ), !.
status(B, A, met)          :- obligation(B, A, _).
