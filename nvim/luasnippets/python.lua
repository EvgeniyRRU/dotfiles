return {
  s({ trig = 'def', name = 'define function' },
    fmt([[
      def {}():
          {}
      ]],
      { i(1), i(2) }
    )
  ),
  s({ trig = 'defp', name = 'define function with params' },
    fmt([[
      def {}({}):
          {}
      ]],
      { i(1), i(2), i(3) }
    )
  ),
  s({ trig = 'cdef', name = 'define class method' },
    fmt([[
      def {}(self):
          {}
      ]],
      { i(1), i(2) }
    )
  ),
  s({ trig = 'cdef', name = 'define class method with param' },
    fmt([[
      def {}(self, {}):
          {}
      ]],
      { i(1), i(2), i(3) }
    )
  ),
  s({ trig = 'adef', name = 'define async function' },
    fmt([[
      async def {}():
          {}
      ]],
      { i(1), i(2) }
    )
  ),
  s({ trig = 'adefp', name = 'define function with params' },
    fmt([[
      async def {}({}):
          {}
      ]],
      { i(1), i(2), i(3) }
    )
  ),
  s({ trig = 'cadef', name = 'define async class method' },
    fmt([[
      async def {}(self):
          {}
      ]],
      { i(1), i(2) }
    )
  ),
  s({ trig = 'cadefp', name = 'define async class method with params' },
    fmt([[
      async def {}(self, {}):
          {}
      ]],
      { i(1), i(2), i(3) }
    )
  ),
}
