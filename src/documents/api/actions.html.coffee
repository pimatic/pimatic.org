###
layout: default
###
h1 -> "Actions"

div -> text 'Read about the usage of the api in the <a href="/guide/api">guide</a>.'

capitalize = (s) -> s[0].toUpperCase() + s.slice(1);

for sec in ['framework', 'rules', 'variables', 'devices', 'groups', 'pages', 'plugins', 'database']
  h2 -> capitalize sec
  div ->
    text @renderActionApi(sec)