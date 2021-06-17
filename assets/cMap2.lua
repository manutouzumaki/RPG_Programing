map = {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 12,
  height = 12,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 7,
  nextobjectid = 1,
  properties = {},
  tilesets = {
    [0] = {
      name = "room_tileset",
      firstgid = 1,
      filename = "../../HowToMakeAnRPG_Project/TilesFiles/room_tileset.tsx"
    },
    [1] = {
      name = "collision_graphic",
      firstgid = 133,
      filename = "../../HowToMakeAnRPG_Project/TilesFiles/collision_graphic.tsx"
    }
  },
  layers = {
    [0] = {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 12,
      height = 12,
      id = 1,
      name = "base",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 1, 4, 4, 5, 6, 7, 8, 9, 10, 11, 0,
        0, 12, 15, 15, 16, 17, 18, 19, 20, 21, 22, 0,
        0, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 0,
        0, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 0,
        0, 72, 72, 83, 72, 72, 72, 72, 83, 72, 72, 0,
        0, 72, 72, 72, 72, 1, 7, 11, 72, 72, 72, 0,
        0, 72, 72, 72, 72, 23, 0, 33, 72, 72, 72, 0,
        0, 72, 72, 72, 72, 55, 55, 55, 72, 72, 72, 0,
        0, 72, 72, 83, 72, 72, 72, 72, 83, 72, 72, 0,
        0, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 0,
        0, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 0,
        0, 56, 59, 59, 60, 61, 62, 63, 64, 65, 66, 0
      }
    },
    [1] = {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 12,
      height = 12,
      id = 3,
      name = "decoration",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 30, 31, 0, 0, 32, 0, 0, 0, 0, 0,
        0, 0, 41, 42, 0, 0, 43, 0, 115, 0, 0, 0,
        0, 0, 116, 117, 118, 0, 0, 0, 126, 0, 0, 0,
        0, 0, 127, 128, 129, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 67, 68, 69, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 78, 79, 80, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 114, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 119, 0, 0, 0, 0,
        0, 0, 0, 0, 131, 132, 0, 130, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 126, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 41, 42, 0, 0, 43, 0, 0, 0, 0, 0
      }
    },
    [2] = {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 12,
      height = 12,
      id = 2,
      name = "collition",
      visible = true,
      opacity = 0.4,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133,
        133, 133, 133, 133, 133, 133, 133, 133, 133, 0, 133, 133,
        133, 0, 133, 133, 133, 0, 0, 0, 133, 0, 0, 133,
        133, 0, 133, 133, 133, 0, 0, 0, 0, 0, 0, 133,
        133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133,
        133, 0, 0, 0, 0, 133, 133, 133, 0, 0, 0, 133,
        133, 0, 0, 0, 0, 133, 133, 133, 133, 0, 0, 133,
        133, 0, 0, 0, 0, 133, 133, 133, 0, 0, 0, 133,
        133, 0, 0, 0, 133, 133, 0, 133, 0, 0, 0, 133,
        133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133,
        133, 0, 133, 0, 0, 0, 0, 0, 0, 0, 0, 133,
        133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 133
      }
    },
    [3] = {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 12,
      height = 12,
      id = 6,
      name = "base1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0,
        0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0,
        0, 1, 4, 4, 5, 6, 51, 8, 9, 10, 11, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    [4] = {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 12,
      height = 12,
      id = 5,
      name = "decoration1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 102, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 101, 111, 113, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 103, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 120, 121, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 30, 31, 0, 0, 32, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    [5] = {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 12,
      height = 12,
      id = 4,
      name = "collition",
      visible = true,
      opacity = 0.4,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}
