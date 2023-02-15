local function copy(args)
  return args[1]
end

local function get_component_name(_, parent)
  return string.gsub(parent.env.TM_FILENAME, '.test.tsx', '') or '';
end

return {
  s({ trig = 'ir', name = 'import react'}, t("import React from 'react';")),
  s({ trig = 'impc', name = 'import component' },
    fmt("import {name} from '@components/{path}';",
      {
        path = i(1),
        name = f(copy, 1),
      }
    )
  ),
  s({ trig = 'cn', name = 'className' },
    fmt('className={{classes.{}}}', i(1))
  ),
  s({ trig = 'dcl', name = 'div className' },
    fmt(
      '<div className={classes.()}>()</div>',
      { i(1), i(2) },
      { delimiters = '()' }
    )
  ),
  s({ trig = 'itr', name = 'itr', dscr = 'renders component'},
    fmt([[
      it('renders component', () => {{
        render(<{component_name} {here}/>);
      }});
    ]], { component_name = f(get_component_name), here = i(1) })
  ),
}
