local db = require('dashboard')



db.custom_header = {
[[    )         )          (       *     ]],
[[ ( /(      ( /(          )\ )  (  `    ]],
[[ )\()) (   )\()) (   (  (()/(  )\))(   ]],
[[((_)\  )\ ((_)\  )\  )\  /(_))((_)()\  ]],
[[ _((_)((_)  ((_)((_)((_)(_))  (_()((_) ]],
[[| \| || __|/ _ \\ \ / / |_ _| |  \/  | ]],
[[| .` || _|| (_) |\ V /   | |  | |\/| | ]],
[[|_|\_||___|\___/  \_/   |___| |_|  |_| ]]
}



db.custom_center = {
    {icon = '  ',
    desc = 'New File                  ',
    action =  'DashboardNewFile',
    shortcut = 'SPC f h'},
    {icon = '  ',
    desc = 'Recently opened files     ',
    action =  'Telescope oldfiles',
    shortcut = 'SPC f h'},
    {icon = '  ',
    desc = 'Find Files                ',
    shortcut = 'SPC f f',
    action = 'Telescope find_files'},
    {icon = '  ',
    desc ='File Browser               ',
    action =  'Telescope file_browser',
    shortcut = 'SPC f b'}
}
