lifespan -= 1;
y_offset -= 0.5; // floats up

if (lifespan <= 0) {
    instance_destroy();
}
