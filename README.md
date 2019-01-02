# PYNQ_Ball_and_Plate_Sysyem
板球系统，2017年电赛题目，大创课题

[项目报告](https://starrynightzyq.github.io/2018/12/20/%E6%9D%BF%E7%90%83%E7%B3%BB%E7%BB%9F%E6%8A%A5%E5%91%8A/)

- Uart2PC通信格式

  | 0:包头 | 1：包头 | 2：数据号 |
  | ------ | ------- | --------- |
  | 0x55   | 0xaa    | 0x__      |

  | 3:float数据0 | 4    | 5    | 6    |
  | ------------ | ---- | ---- | ---- |
  |              |      |      |      |

  | 7:float数据1 | 8    | 9    | 10   |
  | ------------ | ---- | ---- | ---- |
  |              |      |      |      |

  | 11:float数据2 | 12   | 13   | 14   |
  | ------------- | ---- | ---- | ---- |
  |               |      |      |      |

  | 15：包尾 |
  | -------- |
  | $        |

- Uart2Camera

  | 0:包头0 | 1：包头1 | 2：数据号 |
  | ------- | -------- | --------- |
  | 0x55    | 0xaa     | 0x__      |

  | 3：数据0高8位(16进制) | 4：数据0低8位(16进制) |
  | --------------------- | --------------------- |
  |                       |                       |

  | 5：数据1高8位(16进制) | 6：数据1低8位(16进制) |
  | --------------------- | --------------------- |
  |                       |                       |

  | 7        |
  | -------- |
  | $ (0x24) |

  | 数据号 | 数据0 | 数据1 |
  | ------ | ----- | ----- |
  | 0x01   | x坐标 | y坐标 |
