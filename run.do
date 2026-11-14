# compilation
    vlog clkg_ufdj.v -l comp.log
# elaboration
  vsim -voptargs=+acc clkg_ufdj +freq=250 +duty=35 +jitter=15 
# addwave
  add wave sim:/clkg_ufdj/*
# run
  run -all
