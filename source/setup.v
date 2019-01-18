


.define x $1

.define y $2

.define ans $3

.define geo $4

.define ball $5

.define paddle $6

.define width 100

.define r 1.1

int x

int y

int ans

float geo

phys ball

phys paddle

    store x, 3

    store y, 14

    mul ans, y, width

    add ans, ans, x  # ans now contains y * width + x

    store geo, r

    new ball, 1.0, 0.0, 0.0 

    new paddle, 2.0, 4.0, 4.0

    force ball, 1.0, 1.0

    force paddle, 2.0, 2.0

