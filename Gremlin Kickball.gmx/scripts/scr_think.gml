__timer++;
if (__timer < __delay) return 0;
__duration--;
if (__duration <= 0) return 0;
if (scr_chance(__freq) && scr_chance(__ch)) {
    text = instance_create(x + __off_x, y + __off_y, obj_text);
    with (text) {
        __string = other.__i[irandom_range(0,-1 + array_length_1d(other.__i))];
        __font = other.__font;
    }
}


