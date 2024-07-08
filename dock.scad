plugD = 6;
plugW = 10;
plugH = 12;

l = 105;
h = 20 + plugH;

w1 = 20;
w2 = 42;

y = 15;

t = 1.0;

difference()
{
    translate([ -l / 2, -y, -plugH ]) cube([ l, w2, h ]);

    translate([ 0, 0, -plugH - .01 ]) cylinder(d = plugD, h = h + .02);
    translate([ -l / 2 - .01, -plugW / 2, -plugH - .01 ]) cube([ l + .02, plugW, plugH ]);

    r = h - plugH;
    hull()
    {
        translate([ r - l / 2, .01 + w2 - y, r + t ]) rotate([ 90, 0, 0 ]) cylinder(r = r, h = w2 + .02);
        translate([ l / 2 - r, .01 + w2 - y, r + t ]) rotate([ 90, 0, 0 ]) cylinder(r = r, h = w2 + .02);
    }
    hull()
    {
        translate([ -l / 2 - .01, w1 / 2, t ]) cube([ l + .02, 0.1, h ]);
        translate([ -l / 2 - .01, w2 - y, -plugH ]) cube([ l + .02, 0.1, h ]);
    }
    hull()
    {
        translate([ -l / 2 - .01, -y-.01, -plugH ]) cube([ l + .02, 0.1, 0.1 ]);
        translate([ -l / 2 - .01, -y, h - plugH ]) cube([ l+.02, y, 0.1 ]);
    }
}
