return {
  s({ trig = '?', name = 'PHP tags' },
    fmt('<?php {}; ?>', i(1))
  ),
  s({ trig = '?=', name = 'PHP short echo tag' },
    fmt('<?= {}; ?>', i(1))
  ),
  s({ trig = 'a', name = 'author me' },
    t('@author Evgeniy Chernyshev <EvgeniyRRU@gmail.com>')
  ),
  s({ trig = 't.', '$this in object' }, t('$this->')),
  s({ trig = 'vd', name = 'var_dump' },
    fmt([[
      var_dump({});
      die('here');
    ]], i(1))
  ),
  s({ trig = 'yt', name = 'Yii t wrapper' },
    fmt("<?= Yii::t('app', '{}'); ?>",
      f(function(_, snip)
        return snip.env.TM_SELECTED_TEXT[1] or ''
      end)
  )),
}
