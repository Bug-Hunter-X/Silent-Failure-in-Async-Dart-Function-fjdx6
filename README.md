# Silent Failure in Async Dart Function

This repository demonstrates a common error in asynchronous Dart functions: failing to properly handle exceptions, leading to silent failures.  The `fetchData` function makes a network request; however, if an exception occurs, it's only printed to the console without being propagated further. This can make debugging difficult.

The `bug.dart` file contains the buggy code, while `bugSolution.dart` provides a corrected version.

## How to Reproduce
1. Clone this repository.
2. Run `bug.dart`.
3. Observe that any network errors are only printed to the console, and no error is thrown to the calling function.
4. Run `bugSolution.dart`. Observe improved error handling.