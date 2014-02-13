/*
**  Usage:
**      intercept_course(origin,target,speed)
**
**  Given:
**      origin      instance with position (x,y)
**      target      instance with position (x,y) and (speed)
**      speed       speed of the projectile
**
**  Returns:
**      course direction required to intercept
**      a moving target at a given speed,
**      or (-1) if no solution found
**
**  GMLscripts.com
*/
{
    var origin,target,pspeed,dir,alpha,phi,beta;
    origin = argument0;
    target = argument1;
    pspeed = argument2;
    dir = point_direction(origin.x,origin.y,target.x,target.y);
    alpha = target.speed / pspeed;
    phi = degtorad(target.direction - dir);
    beta = alpha * sin(phi);
    if (abs(beta) >= 1) {
        return (-1);
    }
    dir += radtodeg(arcsin(beta));
    return dir;
}
