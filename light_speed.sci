function[time, miles] = light_speed(dist)
    l_speed = 300000
    miles_per_km = 1.609
    time = (dist/l_speed) / 60
    miles = dist * miles_per_km
endfunction
