#### Pseudocode

1) Iterate thru array elements. Check which of the subsequent values is the largest. Determine index of that large value. So now you have current value, large value, index of current value, and index of large value. Perform large value - current value. Push current index, large index, and the subtracted value into some kind of nested collection; try a hash. Repeat.

the hash would look something like:
{
[index, large_index] => subtracted_value,
[index, large_index] => subtracted_value,
[index, large_index] => subtracted_value
}

2) Return the key of the hash whose value is largest.

Notes: I ended up using a nested array rather than a hash.