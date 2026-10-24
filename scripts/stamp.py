"""Rewrites one platform's url tag and sha256 in a formula.

Usage: stamp.py <tool> <formula> <platform> <tag> <sha256>
"""
import re
import sys

tool, f, platform, tag, digest = sys.argv[1:]
text = open(f).read()
pattern = re.compile(
    r'(url "https://github.com/massrelay-ai/' + re.escape(tool) + r'/releases/download/)[^/]+'
    r'(/' + re.escape(tool) + r'-' + re.escape(platform) + r'"\n\s+sha256 ")[0-9a-f]{64}(")'
)
text, n = pattern.subn(lambda m: m.group(1) + tag + m.group(2) + digest + m.group(3), text)
assert n == 1, (tool, platform, n)
open(f, "w").write(text)
