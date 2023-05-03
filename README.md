Reproduces about 90% of the time

```
docker-compose up
docker-compose down
```

```
fluent-bit-test_1  | [2023/05/02 23:38:43] [engine] caught signal (SIGSEGV)
fluent-bit-test_1  | #0  0x7fb5de4612f2      in  ???() at ???:0
fluent-bit-test_1  | #1  0x555d3ef6c6b7      in  msgpack_sbuffer_write() at lib/msgpack-c/include/msgpack/sbuffer.h:88
fluent-bit-test_1  | #2  0x555d3ef6c4fd      in  msgpack_pack_str_body() at lib/msgpack-c/include/msgpack/pack_template.h:784
fluent-bit-test_1  | #3  0x555d3ef6cab1      in  flb_log_event_encoder_emit_raw_record() at src/flb_log_event_encoder.c:132
fluent-bit-test_1  | #4  0x555d3f39d97a      in  cb_lua_filter() at plugins/filter_lua/lua.c:607
fluent-bit-test_1  | #5  0x555d3ee7d8af      in  flb_filter_do() at src/flb_filter.c:160
fluent-bit-test_1  | #6  0x555d3ee73779      in  input_chunk_append_raw() at src/flb_input_chunk.c:1714
fluent-bit-test_1  | #7  0x555d3ee73f36      in  flb_input_chunk_append_raw() at src/flb_input_chunk.c:1989
fluent-bit-test_1  | #8  0x555d3ef54a29      in  input_log_append() at src/flb_input_log.c:65
fluent-bit-test_1  | #9  0x555d3ef54afa      in  flb_input_log_append_records() at src/flb_input_log.c:97
fluent-bit-test_1  | #10 0x555d3f054d74      in  process_content() at plugins/in_tail/tail_file.c:603
fluent-bit-test_1  | #11 0x555d3f0575ad      in  flb_tail_file_chunk() at plugins/in_tail/tail_file.c:1413
fluent-bit-test_1  | #12 0x555d3f040e28      in  in_tail_collect_static() at plugins/in_tail/tail.c:188
fluent-bit-test_1  | #13 0x555d3ee6ca14      in  flb_input_collector_fd() at src/flb_input.c:1918
fluent-bit-test_1  | #14 0x555d3eea9b9a      in  flb_engine_handle_event() at src/flb_engine.c:503
fluent-bit-test_1  | #15 0x555d3eea9b9a      in  flb_engine_start() at src/flb_engine.c:866
fluent-bit-test_1  | #16 0x555d3ee4e531      in  flb_lib_worker() at src/flb_lib.c:638
fluent-bit-test_1  | #17 0x7fb5deb49ea6      in  ???() at ???:0
fluent-bit-test_1  | #18 0x7fb5de3fca2e      in  ???() at ???:0
fluent-bit-test_1  | #19 0xffffffffffffffff  in  ???() at ???:0
```