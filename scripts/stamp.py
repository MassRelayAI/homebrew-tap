"""Rewrites one platform's url tag and sha256 in the formula. Usage: stamp.py <formula> <platform> <tag> <sha256>."""
import re
import sys

f, platform, tag, digest = sys.argv[1:]
text = open(f).read()
pattern = re.compile(
    r'(url "https://github.com/massrelay-ai/comparegraph/releases/download/)[^/]+'
    r'(/comparegraph-' + re.escape(platform) + r'"\n\s+sha256 ")[0-9a-f]{64}(")'
)
text, n = pattern.subn(lambda m: m.group(1) + tag + m.group(2) + digest + m.group(3), text)
assert n == 1, (platform, n)
open(f, "w").write(text)
