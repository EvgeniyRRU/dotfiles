return {
  config = {
    adapters = {
      require('neotest-jest'),
      require("neotest-rspec"),
      require("neotest-rust"),
      require("neotest-haskell")
    },
  },
}
