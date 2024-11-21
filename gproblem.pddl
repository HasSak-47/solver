(define (problem ylogistic)
    (:domain factorio)
    (:objects plate-0 plate-1 plate-2 plate-3 plate-4 plate-5 plate-6 plate-7 plate-8 plate-9 plate-10 plate-11 - plate
 circuit-0 circuit-1 circuit-2 circuit-3 circuit-4 circuit-5 circuit-6 circuit-7 circuit-8 circuit-9 circuit-10 circuit-11 - circuit
 ybelt-0 ybelt-1 ybelt-2 ybelt-3 - ybelt
 ysplitter-0 - ysplitter
 yunder-0 yunder-1 - ysplitter
)
    (:init (existing-plate plate-0) (existing-plate plate-1) (existing-plate plate-2) (existing-plate plate-3) (existing-plate plate-4) (existing-plate plate-5) (existing-plate plate-6) (existing-plate plate-7) (existing-plate plate-8) (existing-plate plate-9) (existing-plate plate-10) (existing-plate plate-11) (existing-circuit circuit-0) (existing-circuit circuit-1) (existing-circuit circuit-2) (existing-circuit circuit-3) (existing-circuit circuit-4) (existing-circuit circuit-5) (existing-circuit circuit-6) (existing-circuit circuit-7) (existing-circuit circuit-8) (existing-circuit circuit-9) (existing-circuit circuit-10) (existing-circuit circuit-11) (possible-ybelt ybelt-0) (possible-ybelt ybelt-1) (possible-ybelt ybelt-2) (possible-ybelt ybelt-3) (possible-ysplitter ysplitter-0) (possible-yunder yunder-0) (possible-yunder yunder-1))
    (:goal (and(existing-yunder yunder-0)(existing-yunder yunder-1)(existing-ysplitter ysplitter-0)(existing-ybelt ybelt-0)))
)
