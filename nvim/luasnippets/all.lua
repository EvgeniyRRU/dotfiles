return {
  s({ trig = 'ymd', name = 'Current date', dscr = "Insert the current date" }, {
    p(os.date, "%Y-%m-%d")
  }),
  s({ trig = 'tod', name = 'todo comment' }, {
    t('// TODO: '),
    i(1),
  })
}
