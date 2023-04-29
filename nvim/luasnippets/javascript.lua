return {
  s({ trig = 'cl', name = 'console.log', dscr = 'Console log' }, fmt('console.log({});', 
    i(1)
  )),
  s({ trig = 't.', name = 'this', dscr = 'js context' }, {
    t('this.'), i(1)
  }),
  s({ trig = '=>', name = 'arrow function' },
    fmt([[
      ({}) => {{
        {}
      }}
    ]], { i(1), i(2) })
  ),
  s({ trig = '=>(', name = 'short arrow function'},
    fmt('({}) => ({{{}}})', { i(1), i(2) })
  ),
  s({ trig = 'ec', name = 'export const' },
    fmt('export const {} = {};', { i(1), i(2) })
  ),
  s({ trig = 'ecl', name = 'export class' },
    fmt([[
      export class {} {{
        {}
      }}
    ]], { i(1), i(2) })
  ),
  s({ trig = 'ed', name = 'export default' }, t('export default ')),
  s({ trig = 'let', name = 'let assignment' },
    fmt('let {} = {};', { i(1), i(2) })
  ),
  s({ trig = 'var', name = 'var assignment' },
    fmt('var {} = {};', { i(1), i(2) })
  ),
  s({ trig = 'con', name = 'const assignment' },
    fmt('const {} = {};', { i(1), i(2) })
  ),
  s({ trig = 'dqs', name = 'document.querySelector' },
    fmt("document.querySelector('{}')", i(1))
  ),
  s({ trig = 'dqsa', name = 'document.querySelectorAll' },
    fmt("document.querySelectorAll('{}')", i(1))
  ),
  s({ trig = 'if', name = 'if condition' },
    fmt([[
      if ({}) {{
        {}
      }}
    ]], { i(1), i(2) })
  ),
  s({ trig = 'use', name = 'react hook'},
    fmt([[
      use{}(() => {{
        {}
      }}, [{}])
    ]], { i(1), i(2), i(3) })
  ),
  s({ trig = 'ifr', name = 'if single line return' },
    fmt('if ({}) return;', i(1))
  ),
  s({ trig = 'ifl', name = 'if else' },
    fmt([[
      if ({}) {{
        {}
      }} else {{
        {}
      }}
    ]], { i(1), i(2), i(3) })
  ),
  s({ trig = 'con{', name = 'destructive assignment' },
    fmt('const {{{}}} = {};', { i(2), i(1) })
  ),
  s({ trig = 'con[', name = 'destructive assignment array' },
    fmt('const [{}] = {};', { i(2), i(1) })
  ),
  s({ trig = 'imp', name = 'import from', dscr = 'ES module import' },
    fmt("import {{ {} }} from '{}';", { i(2), i(1) })
  ),
  s({ trig = 'impd', name = 'import default from', dscr = 'ES module import' },
    fmt("import {} from '{}';", { i(2), i(1) })
  ),
  s({ trig = 'jf', name = 'jest.fn()' }, t('jest.fn()')),
  s({ trig = 'descr', name = 'describe jest block' },
    fmt([[
      describe('{}', () => {{
        {}
      }});
    ]], { i(1), i(2) })
  ),
  s({ trig = 'it', name = 'it jest block' },
    fmt([[
      it('{}', () => {{
        {}
      }});
    ]], { i(1), i(2) })
  ),
  s({ trig = 'bef', name = 'beforeEach jest block' },
    fmt([[
      beforeEach(() => {{
        {}
      }});
    ]], i(1))
  ),
  s({ trig = 'aft', name = 'afterEach jest block' },
    fmt([[
      afterEach(() => {{
        {}
      }});
    ]], i(1))
  ),
  s({ trig = 'rtl', name = '@testing-library/react'}, t('@testing-library/react')),
  s({ trig = 'tbn', name = 'to be null matcher'}, t('.toBeNull();')),
  s({ trig = 'tbd', name = 'to be in the document matcher'},
    t('.toBeInTheDocument();')
  ),
  s({ trig = 'tha', name = 'to have attribute matcher' },
    fmt('.toHaveAttribute({});', i(1))
  ),
  s({ trig = 'thl', name = 'to have length matcher' },
    fmt('.toHaveLength({});', i(1))
  ),
  s({ trig = 'fc', name = '@front-core' }, t('@front-core/')),
  s({ trig = 'fct', name = '@front-core/typography' },
    t('@front-core/typography')
  ),
  s({ trig = 'ex', name = 'expect jest' },
    fmt('expect({})', i(1))
  ),
  s({ trig = 'try', name = 'try-catch block' },
    fmt([[
      try {{
        {}
      }} catch (err) {{
        {}
      }}
    ]], { i(1), i(2) })
  )
}
