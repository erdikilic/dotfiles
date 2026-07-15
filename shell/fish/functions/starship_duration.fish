function starship_duration
    set -l ms $argv[1]
    set -l s (math "floor($ms / 1000)")
    set -l m (math "floor($s / 60)")
    set -l s (math "$s % 60")

    set -l parts
    test $m -gt 0; and set -a parts {$m}m
    set -a parts {$s}s
    string join ' ' $parts
end
