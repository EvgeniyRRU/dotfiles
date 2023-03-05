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
  ),
  s({ trig = 'impgg', name = 'import type from generated' },
    fmt("import {{ {} }} from '@generated/graphql';", i(1))
  ),
  s({ trig = 'jm', name = 'jest.Mock' }, t('as jest.Mock;')),
  s({ trig = 'tsi', name = 'ts-ignore' }, t('// @ts-ignore')),
  s({ trig = 'tstry', name = 'try-catch block' },
    fmt([[
      try {{
        {}
      }} catch (err: {}) {{
        {}
      }}
    ]], { i(1), i(2, 'unknown'), i(3) })
  )
}
