This testsuite passes on ACF

This testsuite fails on Lucee with error

```
The function [tmp_getStack_114AF87F15C7E8BB4A7D478069B633D5] has an invalid return value , [Cannot cast Object type [Array] to a value of type [string]]
```

It appears that Lucee is reporting the incorrect metadata for synthesized functions
