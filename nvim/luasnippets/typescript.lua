return {
  s({ trig = 'tcon', name = 'typed constant', },
    fmt('const {}: {} = {};', { i(1), i(2, 'any'), i(3) })
  ),
  s({ trig = 'tlet', name = 'typed let', },
    fmt('let {}: {} = {};', { i(1), i(2, 'any'), i(3) })
  ),
  s({ trig = 'tvar', name = 'typed var', },
    fmt('var {}: {} = {};', { i(1), i(2, 'any'), i(3) })
  ),
  s({ trig = 'et', name = 'export type' },
    fmt('export type {} = {};', { i(1), i(2) })
  )
}
