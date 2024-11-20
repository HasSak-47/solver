(define (problem red_logistic)
    (:domain factorio)
    (:objects
        p1 p2 - plat
        g1 - gear
    )
    (:init
        (existing-plat p1)
        (existing-plat p2)
        (possible-gear g1)
    )
    (:goal 
        (and
            (existing-gear g1)
        )
    )
)
