local function copy(args)
  return args[1]
end

return {
  s({ trig = '</', name = 'tag without children' },
    fmt('<{} />', i(1))
  ),
  s({ trig = '<c/', name = 'tag without children with class' },
    fmt('<{} class="{}" />', { i(1), i(2) })
  ),
  s({ trig = '<', name = 'tag' },
    fmt('<{tagBegin}>{tagBody}</{tagEnd}>', 
      {
        tagBegin = i(1),
        tagBody = i(2),
        tagEnd = f(copy, 1)
      }
    )
  ),
  s({ trig = '<c', name = 'tag with class' },
    fmt('<{tagBegin} class="{className}">{tagBody}</{tagEnd}>', 
      {
        tagBegin = i(1),
        className = i(2),
        tagBody = i(3),
        tagEnd = f(copy, 1)
      }
    )
 ),
}
