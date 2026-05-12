local function current_selection(_, snip)
  return snip.env.TM_SELECTED_TEXT[1] or ''
end

local function copy(args)
  return args[1]
end

return {
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
  s({ trig = 'dc', name = 'described_class' },
    t('described_class')
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
  s({ trig = 'aft', name = 'RSpec after block' },
    fmt([[
      after do
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
  s({ trig = 'FBb', name = 'FactoryBot.build' },
    fmt('FactoryBot.build(:{})', i(1))
  ),
  s({ trig = 'FBcm', name = 'FactoryBot.create multiline' },
    fmt([[
      FactoryBot.create(
        :{}
      )
    ]], i(1))
  ),
  s({ trig = 'FBbm', name = 'FactoryBot.build multiline' },
    fmt([[
      FactoryBot.build(
        :{}
      )
    ]], i(1))
  ),
}
