position = -0.5;
velocity = 0.0;

positions = [];
velocities = [];
score = 0;
while (position < 0.6)
    action = sign(velocity);
    [reward, position, velocity] = mountain_car_update(position, velocity, action);
    score = score + reward;

    positions(end + 1) = position;
    velocities(end + 1) = velocity;
end
score


plot(-1.2:0.1:0.6, sin(3*(-1.2:0.1:0.6)));
hold on;
p = plot(positions(1), sin(3*positions(1)),'o','MarkerFaceColor','red');
hold off
axis manual
for i = (2:length(positions))
  figure(1);
  plot(-1.2:0.1:0.6, sin(3*(-1.2:0.1:0.6)));
  hold on;
  scatter(positions(i), sin(3*positions(i)));
  hold off;
  pause(0.1);
end
