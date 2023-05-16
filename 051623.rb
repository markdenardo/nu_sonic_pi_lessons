se_bpm 180

##| live_loop :aw do
##|   sample :loop_amen_full
##|   sleep rand(6...7)
##|   sample :loop_mika
##|   sleep rand(7...8)
##|   sample :loop_breakbeat
##|   sleep rand(1...2)
##|   sample :loop_tabla, amp: 6
##|   sleep rand(8...9)
##|   sample :loop_mika
##|   sleep rand(6...7)
##|   sample :loop_safari,amp: 3
##|   sleep rand(7...8)
##| end

a =  :loop_amen_full
d = sample_duration a
sl = 32
with_fx :echo do

  live_loop :people do

    3.times do
      sample a, slice: rand(9), num_slices: sl if one_in(2)
      sleep d/sl

      sample a, slice: rand(7), num_slices: sl if one_in(1)
      sleep d/sl

      sample a, slice: 1, num_slices: sl if one_in(3)
      sleep d/sl

    end


    2.times do
      sample a, slice: 9, num_slices: sl if one_in(1)
      sleep d/sl

    end

    1.times do
      sample a, slice: rand(12), num_slices: sl
      sleep d/sl
      sample a, slice: rand(12), num_slices: sl
      sleep d/sl
    end

  end

  ##| live_loop :people1 do
  ##|   sample people, slice: 19, num_slices: sl/2 if one_in(8)
  ##|   sleep d/sl
  ##| end


end
