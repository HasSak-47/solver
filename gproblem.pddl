(define (problem ylogistic)
    (:domain factorio)
    (:objects plate-0 plate-1 plate-2 plate-3 plate-4 plate-5 - plate
 circuit-0 circuit-1 - circuit
 ybelt-0 ybelt-1 ybelt-2 ybelt-3 ybelt-4 - ybelt
 yunder-0 yunder-1 - yunder
 ysplitter-0 - ysplitter
)
    (:init (existing-plate plate-0) (existing-plate plate-1) (existing-plate plate-2) (existing-plate plate-3) (existing-plate plate-4) (existing-plate plate-5) (existing-circuit circuit-0) (existing-circuit circuit-1) (existing-ybelt ybelt-0) (existing-ybelt ybelt-1) (existing-ybelt ybelt-2) (existing-ybelt ybelt-3) (existing-ybelt ybelt-4) (possible-yunder yunder-0) (possible-yunder yunder-1) (possible-ysplitter ysplitter-0))
    (:goal (and(existing-yunder yunder-0)(existing-yunder yunder-1)(existing-ysplitter ysplitter-0)(existing-ybelt ybelt-4)))
)
