# genera un dominio y lo escribe al stdout
from typing import Dict


# los materiales disponibles a crear o que se pueden crear
objects : Dict[str, Dict[str, int]] = {
    'plate'   : {},  # material primitivo,
    'circuit' : {},
    'ybelt'   : {    # material compuesto
        'plate' : 1, # ingrediente y cantidad
    },
    'ysplitter' : {
        'plate' : 2,
        'circuit' : 1,
        'ybelt': 1
    },
    'yunder'  : {
        'plate' : 2,
        'ybelt': 1,
    },
}

# define la creacion de elementos
def generate_creation(name: str, items: Dict[str, int]):
    preconditions = []
    effect = []
    parameters = []
    for ( iname, icount )in items.items():
        for i in range(icount):
            parameters.append(f'?{iname}-{i}')
            preconditions.append(f'(existing-{iname} ?{iname}-{i})')

            effect.append(f'(consumed-{iname} ?{iname}-{i})')
            effect.append(f'(not(existing-{iname} ?{iname}-{i}))')
        pass

    return f"""
(:action create-{name}
    :parameters ( {' '.join(parameters)} ?{name} )
    :precondition( and {' '.join(preconditions)}
        (possible-{name} ?{name})
    )
    :effect (and {' '.join(effect)}
        (existing-{name} ?{name})
        (not (possible-{name} ?{name}))
    )
)
"""

# cosas que el lisp necesita
header = '(:requirements :strips)'
types = '(:types'
predicates = '(:predicates'
for name, recipes in objects.items():
    types += f' {name}'
    predicates += f'''
(possible-{name} ?x - {name})
(existing-{name} ?x - {name})
(consumed-{name} ?x - {name})
'''
    pass
types += ')'
predicates  += ')'

actions = ''
for name, recipes in objects.items():
    if len(recipes) == 0:
        continue
    actions += (generate_creation(name, recipes))


print(f'''(define (domain factorio)
    {header}
    {types}
    {predicates}
    {actions}
)''')
