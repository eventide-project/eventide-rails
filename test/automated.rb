require_relative './test_init'

TestBench::CLI.(
  exclude_file_pattern: %r{/_|sketch|(_init\.rb|_tests\.rb)\z}
)
