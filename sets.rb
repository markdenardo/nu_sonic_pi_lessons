#sample using if one_in

##| live_loop :tabla_0 do
##|   r=rand(0.1)
##|   sample :tabla_ghe1 if one_in(2)
##|   sleep 1.0
##| end

##| live_loop :tabla_0 do
##|   r=rand(0.1)
##|   sample :tabla_ghe1 if one_in(2)
##|   sleep r
##|   sample :tabla_ghe2 if one_in(1)
##|   sleep r
##|   sample :tabla_ghe3 if one_in(8)
##|   sleep r
##| end

# synth using ruby function

##| def syn(s,sam,n)
##|   live_loop :syn do
##|     use_synth sam
##|     play n
##|     sleep s
##|   end
##| end

##| syn(0.1,:bass_foundation,10)


# drum machine using array.length and rand()
##| live_loop :dr do

##|   d = [:drum_bass_hard,:drum_bass_soft,:drum_cymbal_closed,:drum_heavy_kick]
##|   dr = rand(d.length())
##|   sd = d[dr]

##|   sample sd
##|   sleep 1
##| end

##| live_loop :dr1 do

##|   d = [:drum_bass_hard,:drum_bass_soft,:drum_cymbal_closed,:drum_heavy_kick]
##|   dr = rand(d.length())
##|   sd = d[dr]

##|   sample sd
##|   sleep 1
##| end

##| live_loop :dr3 do

##|   d = [:drum_bass_hard,:drum_bass_soft,:drum_cymbal_closed,:drum_heavy_kick]
##|   dr = rand(d.length())
##|   sd = d[dr]

##|   sample sd
##|   sleep 1
##| end

#refactor w ruby function

##| use_bpm 128

##| d = [:drum_bass_hard,:drum_bass_soft,:drum_cymbal_closed,:drum_heavy_kick]
##| dr = rand(d.length())
##| sd = d[dr]
##| s=rand(dr)

##| def drumz(sd,l,s)
##|   live_loop l do
##|     sample sd
##|     sleep s
##|   end
##| end

##| drumz(d[1],:a,01)
##| drumz(d[2],:b,0.5)
##| drumz(d[3],:c,0.05)

