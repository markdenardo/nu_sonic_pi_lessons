
use_bpm 180

def poop()
  r=rand(0.5)
  use_synth :fm
  play 34
  sleep r
end

def choz()
  sample :bd_808, amp: 10
  sample :bd_808, attack: 10, attack_level: 10
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.06
  sleep 0.5
  sample :bd_808, amp: 10
  sample :snare
  sleep 1
end

with_fx :echo do
  live_loop :rhythm do
    choz()
  end
end

with_fx :reverb do
  live_loop :bass do
    poop()
  end
end



