# Dart: Handling Exceptions in Asynchronous Network Requests
This example demonstrates a common error in Dart applications involving asynchronous network requests and how to properly handle exceptions.

The `bug.dart` file shows an example where the exception is not properly handled, leading to potential silent failures. The `bugSolution.dart` file shows the improved version with proper exception handling and rethrowing for higher-level management.

## Common Issues:

- Silent failures due to unhandled exceptions.
- Difficulty in debugging asynchronous code.

## Solution:

- Use `try-catch` blocks to handle potential exceptions.
- Log errors for debugging purposes.
- Consider rethrowing exceptions to be handled at a higher level in the call stack.
- Provide informative error messages.
