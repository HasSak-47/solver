(define (domain factorio)
    (:requirements :strips)
    (:types plat circ gear belt splt undr)
    (:predicates
        (possible-gear ?x - gear)
        (possible-belt ?x - belt)
        (possible-splt ?x - splt)
        (possible-undr ?x - undr)

        (existing-plat ?x - plat)
        (existing-circ ?x - circ)
        (existing-gear ?x - gear)
        (existing-belt ?x - belt)
        (existing-splt ?x - splt)
        (existing-undr ?x - undr)

        (consumed-plat ?x - plat)
        (consumed-circ ?x - circ)
        (consumed-gear ?x - gear)
        (consumed-belt ?x - belt)
        (consumed-splt ?x - splt)
        (consumed-undr ?x - undr)
    )
    (:action create-gear
        :parameters (?x ?y ?z)
        :precondition( and
            (existing-plat ?x)
            (existing-plat ?y)
            (possible-gear ?z)
        )
        :effect (and 
            (consumed-plat ?x)
            (consumed-plat ?y)
            (existing-gear ?z)
        )
    )
)