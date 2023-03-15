use_bpm 128
with_fx :compressor do
  
  with_fx :reverb do
    live_loop :rhythm do
      
      r = rand(0.5)
      sample :bd_808, amp: 10
      sample :bd_808, attack: 10, attack_level: 10
      sleep 1
      sample :bd_808, amp: 10
      sample :elec_filt_snare, amp: r, pitch_stretch: r
      sleep 1
    end
  end
  
  with_fx :reverb do
    live_loop :chords do
      r=rand(0.50)
      4.times do
        with_synth :kalimba do
          play chord(:A3, :minor),amp: r, release: 0.2, pan: 1 if one_in(3)
          play chord(:D2, :minor),amp: r, release: 0.2, pan: -1 if one_in(2)
          play chord(:D2, :minor),amp: r, release: 0.2, pan: 1 if one_in(3)
          play chord(:A3, :minor),amp: r, release: 0.2, pan: -1 if one_in(4)
          sleep 0.25
        end
      end
    end
  end
end


live_loop :chaz do
  r=rand(0.50)
  4.times do
    play chord(:A3, :minor),amp: 0.31, release: 0.2, pan: 1 if one_in(3)
    play chord(:D2, :minor),amp: 0.32, release: 0.2, pan: -1 if one_in(2)
    play chord(:D2, :minor),amp: 0.25, release: 0.2, pan: 1 if one_in(3)
    play chord(:A3, :minor),amp: 0.12, release: 0.2, pan: -1 if one_in(4)
    sleep 0.25
  end
end

with_fx :echo  do
  live_loop :rhythm1 do
    r = rand(24)
    sleep 0.5
    sample :perc_snap, amp: 0.4, pan: 1, pitch: 10
    sleep 0.5
    sample :perc_snap, amp: 0.4, pan: -1, pitch: 10
    sleep 0.5
  end
end
