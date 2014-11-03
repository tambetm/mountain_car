position = -0.5;
velocity = 0.0;

score = 0;
while (position < 0.6)
    action = sign(velocity);
    [reward, position, velocity] = mountain_car_update(position, velocity, action);
    score = score + reward;
end