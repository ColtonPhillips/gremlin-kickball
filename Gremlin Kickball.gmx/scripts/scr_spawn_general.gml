__delay--;
if (__delay > 0) {return 0;}
__delay = 0;

if (__duration <= 0) return 0;
__duration--;

if (scr_chance(__ch)) {
    if (__radius == 0) {
        instance_create(__x, __y, __obj);
    }
    else {
        instance_create(__x + irandom_range(-__radius, __radius), __y 
        + irandom_range(-__radius, __radius), __obj); 
    }
}
else return 0;
