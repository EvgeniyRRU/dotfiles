return {
  s({ trig = 'fn', name = 'function', descr = 'Standard Rust function' },
    fmt([[
    fn {}({}) -> {} {{
        {}
    }}
    ]], { i(1), i(2), i(3), i(4) })
  ),
  s({ trig = 'pfn', name = 'pub function', descr = 'Standard Rust function' },
    fmt([[
    pub fn {}({}) -> {} {{
        {}
    }}
    ]], { i(1), i(2), i(3), i(4) })
  ),
  s({ trig = 'psfn', name = 'pub(super) function', descr = 'Standard Rust function' },
    fmt([[
    pub(super) fn {}({}) -> {} {{
        {}
    }}
    ]], { i(1), i(2), i(3), i(4) })
  ),
  s({ trig = 'pcfn', name = 'pub(crate) function', descr = 'Standard Rust function' },
    fmt([[
    pub(crate) fn {}({}) -> {} {{
        {}
    }}
    ]], { i(1), i(2), i(3), i(4) })
  ),
  s({ trig = 'imp', name = 'impl block', descr = 'Struct implement block' },
    fmt([[
    impl {} {{
        {}
    }}
    ]], { i(1), i(2) })
  ),
  s({ trig = 'impf', name = 'trait impl block', descr = 'Trait implementation' },
    fmt([[
    impl {} for {} {{
        {}
    }}
    ]], { i(1), i(2), i(3) })
  ),
  s({ trig = 'bn', name = 'Box::new', descr = 'Box::new' },
    fmt('Box::new({})', i(1))
  )
}
