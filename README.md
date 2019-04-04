# LogGen

Simple script to generate lots of logs. Accepts two arguments, how much data to
process every second, and how many seconds to run before exiting.

The script runs in a loop and sends /dev/urandom to be base64 encoded in 1024
block chunks (the number of blocks being the first argument).

This is useful for testing out log retention and forwarding tools.

## Example usage

```
docker run -d -n loggen sudobmitch/loggen 100 300
```

This will process 100*1024 bytes from /dev/urandom through base64 every second
for 300 seconds (5 minutes) before exiting.

