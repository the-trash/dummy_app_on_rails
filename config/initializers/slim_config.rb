Slim::Engine.set_default_options(pretty: true,
  sort_attrs: false,
  shortcut: {
    '@' => { :attr => 'data-role' },
    '#' => { :attr => 'id'    },
    '.' => { :attr => 'class' }
  }
)
