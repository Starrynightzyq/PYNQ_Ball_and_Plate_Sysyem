# Ball Locator

- 寄存器分配

  - reg0 (w/r)

    | 31 - 8   | 7 - 0     |
    | -------- | --------- |
    | reserved | threshold |

  - reg1 (r)

    | 31 - 28  | 27 - 16  | 15 - 12  | 11 - 0  |
    | -------- | -------- | -------- | ------- |
    | reserved | coord_x_ | reserved | coord_y |
