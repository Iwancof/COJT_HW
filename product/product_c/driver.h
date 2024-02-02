typedef union {
    __attribute__((packed)) uint32_t raw;
    struct {
        uint8_t b, g, r, a;
    };
} pixel;
