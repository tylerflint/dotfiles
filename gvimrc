
if has('gui_running')
  "font/theme
  set guifont=Monaco:h14
  highlight ColorColumn guibg=Gray14

  " remove scrollbars
  set go-=T
  set go-=l
  set go-=L
  set go-=r
  set go-=R

  " macvim specific settings
  if has("gui_macvim")
    " Full screen on macvim should fully maxed out
    set fuopt=maxvert,maxhorz
  end

endif
