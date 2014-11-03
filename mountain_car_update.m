function [ reward, position, velocity ] = mountain_car_update( position, velocity, action )
  velocity = velocity + action * 0.001 + cos(3 * position) * -0.0025;
  velocity = min(velocity, 0.07);
  velocity = max(velocity, -0.07);

  position = position + velocity;
  position = min(position, 0.6);
  position = max(position, -1.2);
  
  reward = -1;
end
