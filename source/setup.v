


.define x $1

.define y $2

.define ans $3

.define geo $4

.define width 100

.define r 1.1

int x

int y

int ans

float geo

    store x, 3

    store y, 14

    mul ans, y, width

    add ans, ans, x  # ans now contains y * width + x

    store geo, r
