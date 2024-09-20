#### Equivalent States

If:\
λ(P, X) = λ(Q, X)\
δ(P, X) = δ(Q, X)\
λ() = Output Function\
δ() = Next State Function\
P = Q\

Then they are equivalent states.

| PS  | NS X=0 | NS X=1 | O/P |
| --- | ------ | ------ | --- |
| a   | d      | c      | 0   |
| b   | f      | h      | 0   |
| c   | e      | d      | 1   |
| d   | a      | e      | 0   |
| e   | c      | a      | 1   |
| f   | f      | b      | 1   |
| g   | b      | h      | 0   |
| h   | c      | g      | 1   |

Start by knocking out the non-equivalent states and taking what's left

| b   | d=f<br>c=h |            |            |            |            |            |       |
| --- | ---------- | ---------- | ---------- | ---------- | ---------- | ---------- | ----- |
| c   | **X**      | **X**<br>  |            |            |            |            | <br>  |
| d   | c=e        | a=f<br>e=h | **X**      |            |            |            |       |
| e   | **X**      | **X**      | a=d        | **X**      |            |            |       |
| f   | **X**      | **X**      | e=f<br>b=d | **X**      | a=b<br>c=f |            |       |
| g   | b=d<br>c=h | b=f        | **X**      | a=b<br>e=h | **X**      | **X**      |       |
| h   | **X**      | **X**      | c=e<br>d=g | **X**      | a=g        | c=f<br>b=g | **X** |
|     | a          | b          | c          | d          | e          | f          | g     |
|     |            |            |            |            |            |            |       |

Now we check each condition a check off until there are non left

| b   | ~~**X**~~  |           |            |           |           |           |       |
| --- | ---------- | --------- | ---------- | --------- | --------- | --------- | ----- |
| c   | **X**      | **X**<br> |            |           |           |           | <br>  |
| d   | c=e        | ~~**X**~~ | **X**      |           |           |           |       |
| e   | **X**      | **X**     | a=d        | **X**     |           |           |       |
| f   | **X**      | **X**     | ~~**X**~~  | **X**     | ~~**X**~~ |           |       |
| g   | b=d<br>c=h | ~~**X**~~ | **X**      | ~~**X**~~ | **X**     | **X**     |       |
| h   | **X**      | **X**     | c=e<br>d=g | **X**     | a=g       | ~~**X**~~ | **X** |
|     | a          | b         | c          | d         | e         | f         | g     |

And again

| b   | **X**     |           |           |       |           |       |       |
| --- | --------- | --------- | --------- | ----- | --------- | ----- | ----- |
| c   | **X**     | **X**<br> |           |       |           |       | <br>  |
| d   | c=e       | **X**     | **X**     |       |           |       |       |
| e   | **X**     | **X**     | a=d       | **X** |           |       |       |
| f   | **X**     | **X**     | **X**     | **X** | **X**     |       |       |
| g   | ~~**X**~~ | **X**     | **X**     | **X** | **X**     | **X** |       |
| h   | **X**     | **X**     | ~~**X**~~ | **X** | ~~**X**~~ | **X** | **X** |
|     | a         | b         | c         | d     | e         | f     | g     |

So finally, we get:

| b   | X         |       |           |     |     |     |      |
| --- | --------- | ----- | --------- | --- | --- | --- | ---- |
| c   | X         | X<br> |           |     |     |     | <br> |
| d   | ***c=e*** | X     | X         |     |     |     |      |
| e   | X         | X     | ***a=d*** | X   |     |     |      |
| f   | X         | X     | X         | X   | X   |     |      |
| g   | X         | X     | X         | X   | X   | X   |      |
| h   | X         | X     | X         | X   | X   | X   | X    |
|     | a         | b     | c         | d   | e   | f   | g    |

So now we go back to the original table a replace the states

| PS    | NS X=0 | NS X=1 | O/P   |
| ----- | ------ | ------ | ----- |
| a     | a      | c      | 0     |
| b     | f      | h      | 0     |
| c     | c      | a      | 1     |
| ~~d~~ | ~~a~~  | ~~c~~  | ~~0~~ |
| ~~e~~ | ~~c~~  | ~~a~~  | ~~1~~ |
| f     | f      | b      | 1     |
| g     | b      | h      | 0     |
| h     | c      | g      | 1     |

And finally, the reduced state table:

| PS    | NS X=0 | NS X=1 | O/P   |
| ----- | ------ | ------ | ----- |
| a     | a      | c      | 0     |
| b     | f      | h      | 0     |
| c     | c      | a      | 1     |
| f     | f      | b      | 1     |
| g     | b      | h      | 0     |
| h     | c      | g      | 1     |
