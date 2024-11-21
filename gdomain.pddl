(define (domain factorio)
    (:requirements :strips)
    (:types plate circuit ybelt ysplitter yunder)
    (:predicates
(possible-plate ?x - plate)
(existing-plate ?x - plate)
(consumed-plate ?x - plate)

(possible-circuit ?x - circuit)
(existing-circuit ?x - circuit)
(consumed-circuit ?x - circuit)

(possible-ybelt ?x - ybelt)
(existing-ybelt ?x - ybelt)
(consumed-ybelt ?x - ybelt)

(possible-ysplitter ?x - ysplitter)
(existing-ysplitter ?x - ysplitter)
(consumed-ysplitter ?x - ysplitter)

(possible-yunder ?x - yunder)
(existing-yunder ?x - yunder)
(consumed-yunder ?x - yunder)
)
    
(:action create-ybelt
    :parameters ( ?plate-0 ?ybelt )
    :precondition( and (existing-plate ?plate-0)
        (possible-ybelt ?ybelt)
    )
    :effect (and (consumed-plate ?plate-0) (not(existing-plate ?plate-0))
        (existing-ybelt ?ybelt)
        (not (possible-ybelt ?ybelt))
    )
)

(:action create-ysplitter
    :parameters ( ?plate-0 ?plate-1 ?circuit-0 ?ybelt-0 ?ysplitter )
    :precondition( and (existing-plate ?plate-0) (existing-plate ?plate-1) (existing-circuit ?circuit-0) (existing-ybelt ?ybelt-0)
        (possible-ysplitter ?ysplitter)
    )
    :effect (and (consumed-plate ?plate-0) (not(existing-plate ?plate-0)) (consumed-plate ?plate-1) (not(existing-plate ?plate-1)) (consumed-circuit ?circuit-0) (not(existing-circuit ?circuit-0)) (consumed-ybelt ?ybelt-0) (not(existing-ybelt ?ybelt-0))
        (existing-ysplitter ?ysplitter)
        (not (possible-ysplitter ?ysplitter))
    )
)

(:action create-yunder
    :parameters ( ?plate-0 ?plate-1 ?ybelt-0 ?yunder )
    :precondition( and (existing-plate ?plate-0) (existing-plate ?plate-1) (existing-ybelt ?ybelt-0)
        (possible-yunder ?yunder)
    )
    :effect (and (consumed-plate ?plate-0) (not(existing-plate ?plate-0)) (consumed-plate ?plate-1) (not(existing-plate ?plate-1)) (consumed-ybelt ?ybelt-0) (not(existing-ybelt ?ybelt-0))
        (existing-yunder ?yunder)
        (not (possible-yunder ?yunder))
    )
)

)
