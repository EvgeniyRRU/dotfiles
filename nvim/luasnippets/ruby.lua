local function current_selection(_, snip)
  return snip.env.TM_SELECTED_TEXT[1] or ''
end

local function copy(args)
  return args[1]
end

return {
  s({ trig = 'tod', name = 'todo comment' },
    t('# TODO: ')
  ),
  s({ trig = 'bp', name = 'binding.pry' },
    t('binding.pry')
  ),
  s({ trig = 'def', name = 'def method' },
    fmt([[
      def {}
        {}
      end
    ]], { i(1), i(2) })
  ),
  s({ trig = 'defp', name = 'def method with param' },
    fmt([[
      def {}({})
        {}
      end
    ]], { i(1), i(2), i(3) })
  ),
  s({ trig = 'bls', name = 'single line block' },
    fmt('{{ {} }}', i(1))
  ),
  s({ trig = 'blsp', name = 'single line block with param' },
    fmt('{{ |{}| {} }}', { i(1), i(2) })
  ),
  s({ trig = 'blm', name = 'multiline block' },
    fmt([[
      do
        {}
      end
    ]], i(1))
  ),
  s({ trig = 'blmp', name = 'multiline block with param' },
    fmt([[
      do |{}|
        {}
      end
    ]], { i(1), i(2) })
  ),
  s({ trig = 'rspec', name = 'RSpec test template' },
    fmt([[
      # frozen_string_literal: true

      require 'rails_helper'

      RSpec.describe {} do
        subject(:{}) {{ {} }}

        {}
      end
    ]], { i(1), i(2), i(3), i(4) })
  ),
  s({ trig = 'let', name = 'RSpec let single line' },
    fmt('let(:{}) {{ {} }}', { i(1), i(2) })
  ),
  s({ trig = 'letm', name = 'RSpec let multiline' },
    fmt([[
      let(:{}) do
        {}
      end
    ]], { i(1), i(2) })
  ),
  s({ trig = 'descr', name = 'RSpec describe block'},
    fmt([[
      describe '{}' do
        {}
      end
    ]], { i(1), i(2) })
  ),
  s({ trig = 'cont', name = 'RSpec context block' },
    fmt([[
      context '{}' do
        {}
      end
    ]], { i(1), i(2) })
  ),
  s({ trig = 'it', name = 'RSpec it test' },
    fmt([[
      it '{}' do
        {}
      end
    ]], { i(1), i(2) })
  ),
  s({ trig = 'bef', name = 'RSpec before block' },
    fmt([[
      before do
        {}
      end
    ]], i(1))
  ),
  s({ trig = 'she', name = 'shared examples' },
    fmt([[
      shared_examples '{}' do
        {}
      end
    ]], { i(1), i(2) })
  ),
  s({ trig = 'ex', name = 'expect matcher' },
    fmt([[
      expect({}).to {}
    ]], { i(1), i(2) })
  ),
  s({ trig = 'FB', name = 'FactoryBot' }, t('FactoryBot')),
  s({ trig = 'FBc', name = 'FactoryBot.create' },
    fmt('FactoryBot.create(:{})', i(1))
  ),
  s({ trig = 'FBcm', name = 'FactoryBot.create multiline' },
    fmt([[
      FactoryBot.create(
        :{}
      )
    ]], i(1))
  ),
  s({ trig = 'fsl', name = 'frozen_string_literal' },
    fmt([[
      # frozen_string_literal: true

      {}
    ]], i(1))
  ),
  s({ trig = '#', name = 'Ruby string interpolation'},
    fmt('#{{{}}}', i(1))
  ),
  s({ trig = 'sap', name = 'Super awesome print' },
    fmt([[
      {var}
      sap({sap_var})
    ]], {
      var = f(current_selection),
      sap_var = f(current_selection)
    })
  ),
  s({ trig = 'rbd', name = 'Rubocop disable' },
    fmt([[
      # rubocop:disable {rule}
    ]], {
      rule = i(1)
    })
  ),
  s({ trig = 'rbe', name = 'Rubocop enable' },
    fmt([[
      # rubocop:enable {rule}
    ]], {
      rule = i(1)
    })
  ),
}
