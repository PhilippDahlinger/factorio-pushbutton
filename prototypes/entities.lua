local util = require("util")
local p = table.deepcopy(data.raw["constant-combinator"]["constant-combinator"])
p.name = "huge_pushbutton"
p.minable.result = "huge_pushbutton"

p.pulse_duration = 1

-- Update sprite to 4x4 size
p.icon = "__huge_pushbutton__/graphics/pushbutton-icon.png"
p.icon_size = 64
p.sprites =
  make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__huge_pushbutton__/graphics/pushbutton.png",
        width = 256,  -- 4 tiles of 64px width
        height = 256,  -- 4 tiles of 64px height
        shift = util.by_pixel(0, 0),
        scale = 0.5,
      },
      {
        filename = "__huge_pushbutton__/graphics/pushbuttonsh.png",
        width = 384,  -- shadow for 4 tiles width
        height = 256,  -- shadow for 4 tiles height
        shift = util.by_pixel(8, 0),
        draw_as_shadow = true,
        scale = 0.5,
      },
    }
  })

-- Set collision box to match the 4x4 size
p.collision_box = {{-1.5, -1.5}, {1.5, 1.5}}  -- 4x4 tiles collision box
p.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}  -- 4x4 tiles selection box
local activity_led_light_offset = {0, 0}
p.activity_led_sprites =
{
  north = {
    filename = "__huge_pushbutton__/graphics/buttonled.1.png",
    width = 256,
    height = 256,
    draw_as_glow = true,
    scale = 0.5,
  },
  east = {
    filename = "__huge_pushbutton__/graphics/buttonled.2.png",
    width = 256,
    height = 256,
    draw_as_glow = true,
    scale = 0.5,
  },
  south = {
    filename = "__huge_pushbutton__/graphics/buttonled.3.png",
    width = 256,
    height = 256,
    draw_as_glow = true,
    scale = 0.5,
  },
  west = {
    filename = "__huge_pushbutton__/graphics/buttonled.4.png",
    width = 256,
    height = 256,
    draw_as_glow = true,
    scale = 0.5,
  },
}

activity_led_light =
{
  intensity = 0.8,
  size = 1,
}


p.activity_led_light_offsets =
{
  activity_led_light_offset,
  activity_led_light_offset,
  activity_led_light_offset,
  activity_led_light_offset,
}

p.circuit_wire_connection_points =
{
  {
    shadow =
    {
      red = util.by_pixel_hr(41*4, -6*4),
      green = util.by_pixel_hr(20*4, -6*4)
    },
    wire =
    {
      red = util.by_pixel_hr(10*4, -27*4),
      green = util.by_pixel_hr(-10*4, -27*4)
    }
  },
  {
    shadow =
    {
      red = util.by_pixel_hr(50*4, 16*4),
      green = util.by_pixel_hr(50*4, 2*4)
    },
    wire =
    {
      red = util.by_pixel_hr(22*4, -4*4),
      green = util.by_pixel_hr(22*4, -18*4)
    }
  },
  {
    shadow =
    {
      red = util.by_pixel_hr(20*4, 25*4),
      green = util.by_pixel_hr(36*4, 25*4)
    },
    wire =
    {
      red = util.by_pixel_hr(-10*4, 5*4),
      green = util.by_pixel_hr(10*4, 5*4)
    }
  },
  {
    shadow =
    {
      red = util.by_pixel_hr(2*4, -5*4),
      green = util.by_pixel_hr(2*4, 10*4)
    },
    wire =
    {
      red = util.by_pixel_hr(-22*4, -18*4),
      green = util.by_pixel_hr(-22*4, -4*4)
    }
  }
}

data:extend{p}