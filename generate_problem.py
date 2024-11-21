from typing import Dict

header = '(:domain factorio)'
obj    = '(:objects'
init   = '(:init'
goal   = '(:goal (and'


for i in range(12):
    obj += f' plate-{i}'
    init += f' (existing-plate plate-{i})'
obj += ' - plate\n'
for i in range(12):
    obj += f' circuit-{i}'
    init += f' (existing-circuit circuit-{i})'
obj += ' - circuit\n'

for i in range(4):
    obj += f' ybelt-{i}'
    init += f' (possible-ybelt ybelt-{i})'
obj += f' - ybelt\n'

for i in range(1):
    obj += f' ysplitter-{i}'
    init += f' (possible-ysplitter ysplitter-{i})'
obj += f' - ysplitter\n'

for i in range(2):
    obj += f' yunder-{i}'
    init += f' (possible-yunder yunder-{i})'
obj += f' - ysplitter\n'



obj    += ')'
init   += ')'
goal += f'(existing-yunder yunder-{0})'
goal += f'(existing-yunder yunder-{1})'
goal += f'(existing-ysplitter ysplitter-{0})'
goal += f'(existing-ybelt ybelt-{0})'
goal   += '))'

print(f'''(define (problem ylogistic)
    {header}
    {obj}
    {init}
    {goal}
)''')
