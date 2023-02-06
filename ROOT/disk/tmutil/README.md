# tmutil cleanup

clean up disk space by del. snapshots

```bash
for SNAPSHOT in $(tmutil listlocalsnapshots / | egrep '[0-9]{4}\-[0-9]{2}\-[0-9]{2}\-[0-9]{6}' -o | tail -r); do tmutil deletelocalsnapshots $SNAPSHOT; done
```

## example

```bash
$ for SNAPSHOT in $(tmutil listlocalsnapshots / | egrep '[0-9]{4}\-[0-9]{2}\-[0-9]{2}\-[0-9]{6}' -o | tail -r); do tmutil deletelocalsnapshots $SNAPSHOT; done
Deleted local snapshot '2023-02-06-103227'
Deleted local snapshot '2023-02-06-093146'
Deleted local snapshot '2023-02-06-050502'
Deleted local snapshot '2023-02-06-040524'
Deleted local snapshot '2023-02-06-011604'
Deleted local snapshot '2023-02-05-230926'
Deleted local snapshot '2023-02-05-220908'
Deleted local snapshot '2023-02-05-210734'
Deleted local snapshot '2023-02-05-195745'
Deleted local snapshot '2023-02-05-185051'
Deleted local snapshot '2023-02-05-171848'
Deleted local snapshot '2023-02-05-161739'
```
