$dictionary = 'cyber', 'node', 'bit', 'byte', 'pixel', 'flux', 'unit', 'shift'
$dictionary += 'anima', 'impulse', 'oracle', 'mindful', 'cerebrum', 'thought'
$dictionary += 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven'
$dictionary += 'eight', 'nine', 'sample', 'intra', 'machina', 'zen', 'colossus'
$dictionary += 'alpha', 'beta', 'gamma', 'delta', 'epsilon', 'zeta', 'eta'
$dictionary += 'theta', 'iota', 'kappa', 'lambda', 'mu', 'nu', 'xi', 'omicron'
$dictionary += 'pi', 'rho', 'sigma', 'tau', 'upsilon', 'phi', 'chi', 'psi'
$dictionary += 'omega', 'system', 'tec', 'codex', 'synergy', 'optix', 'harmony'
$dictionary += 'matrix', 'central', 'watcher', 'cosmos', 'wave', 'signal'
$dictionary += 'hex', 'synapse', 'data', 'nerve', 'code', 'spark', 'center'

$prefix = Get-Random -InputObject $dictionary
$suffix = Get-Random -InputObject $dictionary

Write-Output "$prefix-$suffix"
