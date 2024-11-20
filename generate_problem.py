from typing import Dict

header = '(:domain factorio)'
obj    = '(:objects'
init   = '(:init'
goal   = '(:goal (and'


MAX = 15
for i in range(6):
    obj += f' plate-{i}'
    init += f' (existing-plate plate-{i})'
obj += ' - plate\n'
for i in range(2):
    obj += f' circuit-{i}'
    init += f' (existing-circuit circuit-{i})'
obj += ' - circuit\n'

for i in range(5):
    obj += f' ybelt-{i}'
    init += f' (existing-ybelt ybelt-{i})'
obj += f' - ybelt\n'

OBJ = 1
for i in range(2 * OBJ):
    obj += f' yunder-{i}'
    init += f' (possible-yunder yunder-{i})'
obj += f' - yunder\n'

for i in range(OBJ):
    obj += f' ysplitter-{i}'
    init += f' (possible-ysplitter ysplitter-{i})'
obj += f' - ysplitter\n'



obj    += ')'
init   += ')'
goal += f'(existing-yunder yunder-{0})'
goal += f'(existing-yunder yunder-{1})'
goal += f'(existing-ysplitter ysplitter-{0})'
goal += f'(existing-ybelt ybelt-{4})'
goal   += '))'

print(f'''(define (problem ylogistic)
    {header}
    {obj}
    {init}
    {goal}
)''')
