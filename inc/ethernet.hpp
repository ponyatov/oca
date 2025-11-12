#pragma once

__attribute__((packet)) struct Ethernet {
    uint8_t dst_mac[6];
    uint8_t src_mac[6];
    uint16_t type;
    uint8_t payload[0];
};
