(define (problem red_logistic)
    (:domain factorio)
    (:objects
        p1 p2 - plate
        g1 - gear
    )
    (:init
        (existing-plate p1)
        (existing-plate p2)
        (possible-gear g1)
    )
    (:goal 
        (and
            (existing-gear g1)
        )
    )
)
