-- TODO: use module M = {}
-- Add new button in the dashboard interface
  -- Vimwiki

local M = {}

local banner = {
  "                ⢀⣀⣤⣤⣤⣶⣶⣶⣶⣶⣶⣤⣤⣤⣀⡀                ",
  "             ⣀⣤⣶⣿⠿⠟⠛⠉⠉⠉⠁⠈⠉⠉⠉⠛⠛⠿⣿⣷⣦⣀             ",
  "          ⢀⣤⣾⡿⠛⠉                ⠉⠛⢿⣷⣤⡀          ",
  "         ⣴⣿⡿⠃                      ⠙⠻⣿⣦         ",
  " ⢀⣠⣤⣤⣤⣤⣤⣾⣿⣉⣀⡀                        ⠙⢻⣷⡄       ",
  "⣼⠋⠁   ⢠⣿⡟ ⠉⠉⠉⠛⠛⠶⠶⣤⣄⣀    ⣀⣀      ⢠⣤⣤⡄   ⢻⣿⣆      ",
  "⢻⡄   ⢰⣿⡟        ⢠⣿⣿⣿⠉⠛⠲⣾⣿⣿⣷    ⢀⣾⣿⣿⠁    ⢻⣿⡆     ",
  " ⠹⣦⡀ ⣿⣿⠁        ⢸⣿⣿⡇   ⠻⣿⣿⠟⠳⠶⣤⣀⣸⣿⣿⠇      ⣿⣷     ",
  "   ⠙⢷⣿⡇         ⣸⣿⣿⠃          ⢸⣿⣿⢷⣤⡀     ⢸⣿⡆    ",
  "    ⢸⣿⠇         ⣿⣿⣿     ⣿⣿⣷  ⢠⣿⣿⡏ ⠈⠙⠳⢦⣄  ⠈⣿⡇    ",
  "    ⢸⣿⡆        ⢸⣿⣿⡇     ⣿⣿⣿ ⢀⣿⣿⡟      ⠈⠙⠷⣤⣿⡇    ",
  "    ⠘⣿⡇        ⣼⣿⣿⠁     ⣿⣿⣿ ⣼⣿⣿⠃         ⢸⣿⠷⣄⡀  ",
  "     ⣿⣿        ⣿⣿⡿      ⣿⣿⣿⢸⣿⣿⠃          ⣾⡿ ⠈⠻⣆ ",
  "     ⠸⣿⣧      ⢸⣿⣿⣇⣀⣀⣀⣀⣀⣀⣸⣿⣿⣿⣿⠇          ⣼⣿⠇   ⠘⣧",
  "      ⠹⣿⣧     ⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏          ⣼⣿⠏    ⣠⡿",
  "       ⠘⢿⣷⣄   ⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉         ⢠⣼⡿⠛⠛⠛⠛⠛⠛⠉ ",
  "         ⠻⣿⣦⣄                      ⣀⣴⣿⠟         ",
  "          ⠈⠛⢿⣶⣤⣀                ⣀⣤⣶⡿⠛⠁          ",
  "             ⠉⠻⢿⣿⣶⣤⣤⣀⣀⡀  ⢀⣀⣀⣠⣤⣶⣿⡿⠟⠋             ",
  "                ⠈⠉⠙⠛⠻⠿⠿⠿⠿⠿⠿⠟⠛⠋⠉⠁                ",
}

M.banner_small = {
  "  ⢀⣀                                                ⣰⣶   ⢀⣤⣄             ",
  "  ⢸⣿                                          ⣀⡀   ⣰⣿⠏   ⠘⠿⠟             ",
  "  ⣿⡟      ⣤⡄   ⣠⣤  ⢠⣤⣀⣤⣤⣤⡀   ⢀⣤⣤⣤⣤⡀   ⢠⣤⢀⣤⣤⣄  ⣿⣿  ⢰⣿⠏  ⣶⣶⣶⣶⡦   ⢠⣶⣦⣴⣦⣠⣴⣦⡀ ",
  " ⢠⣿⡇     ⢠⣿⠇   ⣿⡇  ⣿⡿⠉ ⠈⣿⣧  ⠰⠿⠋  ⢹⣿   ⣿⡿⠋ ⠹⠿  ⢻⣿⡇⢠⣿⡟   ⠈⠉⢹⣿⡇   ⢸⣿⡏⢹⣿⡏⢹⣿⡇ ",
  " ⢸⣿      ⢸⣿   ⢰⣿⠃ ⢠⣿⡇   ⣿⡇  ⣠⣴⡶⠶⠶⣿⣿  ⢠⣿⡇      ⢸⣿⣇⣿⡿      ⣿⣿⠁   ⣿⣿ ⣾⣿ ⣾⣿⠁ ",
  " ⣿⣟      ⢻⣿⡀ ⢀⣼⣿  ⢸⣿   ⢰⣿⠇ ⢰⣿⣇  ⣠⣿⡏  ⢸⣿       ⢸⣿⣿⣿⠁   ⣀⣀⣠⣿⣿⣀⡀ ⢠⣿⡟⢠⣿⡟⢀⣿⡿  ",
  " ⠛⠛⠛⠛⠛⠛⠁ ⠈⠛⠿⠟⠋⠛⠃  ⠛⠛   ⠘⠛   ⠙⠿⠿⠛⠙⠛⠃  ⠚⠛       ⠘⠿⠿⠃    ⠿⠿⠿⠿⠿⠿⠿ ⠸⠿⠇⠸⠿⠇⠸⠿⠇  ",
}

M.banner_alt_1 = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣶⣶⣶⣶⣶⣶⣶⣦⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⠿⠛⠛⠉⠉⠉⠉⠉⠉⠉⠙⠛⠻⢿⣿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠒⠈⠉⠉⠉⠉⠉⣹⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡀⠀⠀⠀⠀⠀⠀⣰⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⠀⠀⠀⠀⢰⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⡀⠀⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢺⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠉⠑⠢⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡇⠀⠀⠀⠈⠑⠢⠄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠢⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠉⠐⠢⠄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⡟⠀⠈⠑⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠒⠠⠤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⠁⠀⠀⢀⣼⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠒⠂⠤⠤⠀⣀⡀⠀⠀⠀⣼⣿⠇⠀⠀⢀⣸⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⣿⡟⠀⠀⠀⠀⠀⠀⣤⡄⠀⠀⠀⣠⣤⠀⠀⢠⣭⣀⣤⣤⣤⡀⠀⠀⠀⢀⣤⣤⣤⣤⡀⠀⠀⠀⢠⣤⢀⣤⣤⣄⠀⠀⣿⣿⠀⠉⣹⣿⠏⠉⠉⢱⣶⣶⣶⡦⠀⠀⠀⢠⣶⣦⣴⣦⣠⣴⣦⡀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⢠⣿⡇⠀⠀⠀⠀⠀⢠⣿⠇⠀⠀⠀⣿⡇⠀⠀⣿⡿⠉⠀⠈⣿⣧⠀⠀⠰⠿⠋⠀⠀⢹⣿⠀⠀⠀⣿⡿⠋⠀⠹⠿⠀⠀⢻⣿⡇⢠⣿⡟⠀⠀⠀⠈⠉⢹⣿⡇⠀⠀⠀⢸⣿⡏⢹⣿⡏⢹⣿⡇⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⢰⣿⠃⠀⢠⣿⡇⠀⠀⠀⣿⡇⠀⠀⣠⣴⡶⠶⠶⣿⣿⠀⠀⢠⣿⡇⠀⠀⠀⠀⠀⠀⢸⣿⣇⣿⡿⠀⠀⠀⠀⠀⠀⣿⣿⠁⠀⠀⠀⣿⣿⠀⣾⣿⠀⣾⣿⠁⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⣿⣟⠀⠀⠀⠀⠀⠀⢻⣿⡀⠀⢀⣼⣿⠀⠀⢸⣿⠀⠀⠀⢰⣿⠇⠀⢰⣿⣇⠀⠀⣠⣿⡏⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠁⠀⠀⠀⣀⣀⣠⣿⣿⣀⡀⠀⢠⣿⡟⢠⣿⡟⢀⣿⡿⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠛⠛⠛⠛⠛⠛⠁⠀⠈⠛⠿⠟⠋⠛⠃⠀⠀⠛⠛⠀⠀⠀⠘⠛⠀⠀⠀⠙⠿⠿⠛⠙⠛⠃⠀⠀⠚⠛⠀⠀⠀⠀⠀⠀⠀⠘⠿⠿⠃⠀⠀⠀⠀⠿⠿⠿⠿⠿⠿⠿⠀⠸⠿⠇⠸⠿⠇⠸⠿⠇⠀⠀⠀⠀⠀",
  "                                                                                ",
}

M.banner_alt_2 = {
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⠛⠉⠉⠉⠉⠉⠉⠛⠛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⣀⣤⣴⣶⣶⣾⣿⣿⣷⣶⣶⣦⣤⣀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⠿⠟⠛⠛⠛⠛⠛⠁⠀⠾⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⠁⣴⣾⣿⣿⣿⡟⠀⣰⣿⣶⣶⣶⣤⣤⣉⣉⠛⠛⠿⠿⣿⣿⡿⠿⠿⣿⣿⣿⣿⣿⣿⡟⠛⠛⢛⣿⣿⣿⣆⠀⢻⣿⣿⣿⣿⣿⣿⣿",
  "⣿⡄⠻⣿⣿⣿⡟⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⣦⣤⡈⠀⠀⠀⠈⣿⣿⣿⣿⡿⠁⠀⠀⣾⣿⣿⣿⣿⡄⠀⢻⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣄⠙⠿⣿⠁⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢸⣿⣿⣿⣄⠀⠀⣠⣄⣉⠛⠻⠃⠀⠀⣼⣿⣿⣿⣿⣿⣿⡀⠈⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣷⣦⡈⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠆⠀⠀⡀⠛⠿⣿⣿⣿⣿⣿⡇⠀⢻⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⡇⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⢀⣿⣿⣿⣿⡇⠀⠀⠘⣿⣿⡟⠀⠀⢰⣿⣷⣦⣌⡙⠻⢿⣿⣷⠀⢸⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⡇⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢸⣿⣿⣿⣿⣿⠀⠀⠀⣿⡿⠀⠀⢀⣿⣿⣿⣿⣿⣿⣷⣤⣈⠛⠀⢸⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣧⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⣾⣿⣿⣿⣿⣿⠀⠀⠀⣿⠁⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⡈⠻⢿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⡀⠈⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⢀⣿⣿⣿⣿⣿⣿⠀⠀⠀⠃⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⢀⣿⣶⣄⠙⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣧⠀⠘⣿⣿⣿⣿⣿⣿⡇⠀⠀⠸⠿⠿⠿⠿⠿⠿⠇⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⣼⣿⣿⣿⣦⠘⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣧⠀⠹⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⣼⣿⣿⣿⡿⠟⢀⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠈⢿⣿⣿⣿⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⢀⣤⣤⣤⣤⣤⣴⣶⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⠀⠉⠛⠻⠿⠿⢿⣿⣿⡿⠿⠿⠟⠛⠉⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣤⣀⣀⣀⣀⣀⣀⣤⣤⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
  "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
}

function M.get_sections()
  local header = {
    type = "text",
    val = function()
      local alpha_wins = vim.tbl_filter(function(win)
        local buf = vim.api.nvim_win_get_buf(win)
        return vim.api.nvim_buf_get_option(buf, "filetype") == "alpha"
      end, vim.api.nvim_list_wins())

      if vim.api.nvim_win_get_height(alpha_wins[#alpha_wins]) < 36 then
        return M.banner_small
      end
      return banner
    end,
    opts = {
      position = "center",
      hl = "Label",
    },
  }

  local text = require "lvim.interface.text"
  local lvim_version = require("lvim.utils.git").get_lvim_version()

  local footer = {
    type = "text",
    val = text.align_center({ width = 0 }, {
      "",
      "lunarvim.org",
      lvim_version,
    }, 0.5),
    opts = {
      position = "center",
      hl = "Number",
    },
  }

  local buttons = {
    opts = {
      hl_shortcut = "Include",
      spacing = 1,
    },
    entries = {
      { "f", lvim.icons.ui.FindFile .. "  Find File", "<CMD>Telescope find_files<CR>" },
      { "n", lvim.icons.ui.NewFile .. "  New File", "<CMD>ene!<CR>" },
      { "p", lvim.icons.ui.Project .. "  Projects ", "<CMD>Telescope projects<CR>" },
      { "r", lvim.icons.ui.History .. "  Recent files", ":Telescope oldfiles <CR>" },
      { "t", lvim.icons.ui.FindText .. "  Find Text", "<CMD>Telescope live_grep<CR>" },
      {
        "c",
        lvim.icons.ui.Gear .. "  Configuration",
        "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. " <CR>",
      },
      { "q", lvim.icons.ui.Close .. "  Quit", "<CMD>quit<CR>" },
      -- { "w", lvim.icons.ui.Folder .. "  Vimwiki", "<CMD>edit ~/vimwiki/<CR>" },
    },
  }
  return {
    header = header,
    buttons = buttons,
    footer = footer,
  }
end

-- local dashboard_opts = require("user.dashboard").get_sections()
lvim.builtin.alpha = {
  active = true,
  dashboard = {
    config = {},
    section = M.get_sections(),
    opts = { autostart = true },
  },
  mode = "dashboard",
}

-- lvim.builtin.alpha.mode = "custom"
-- local alpha_opts = require("user.dashboard").config()
-- lvim.builtin.alpha["custom"] = { config = alpha_opts }

-- M.config = function()
--   local kind = require "user.lsp_kind"

--   local header = {
--     type = "text",
--     val = require("user.banners").dashboard(),
--     opts = {
--       position = "center",
--       hl = "Comment",
--     },
--   }

--   local plugins = ""
--   local date = os.date "%a %d %b"
--   if vim.fn.has "linux" == 1 or vim.fn.has "mac" == 1 then
--     local handle = io.popen 'fd -d 2 . $HOME"/.local/share/lunarvim/site/pack/packer" | grep pack | wc -l | tr -d "\n" '
--     plugins = handle:read "*a"
--     handle:close()

--     plugins = plugins:gsub("^%s*(.-)%s*$", "%1")
--   else
--     plugins = "N/A"
--   end

--   local plugin_count = {
--     type = "text",
--     val = "└─ "
--       .. kind.cmp_kind.Module
--       .. " "
--       .. string.format("% 4d", plugins)
--       .. " plugins  "
--       .. vim.version().major
--       .. "."
--       .. vim.version().minor
--       .. "."
--       .. vim.version().patch
--       .. " ─┘",
--     opts = {
--       position = "center",
--       hl = "String",
--     },
--   }

--   local heading = {
--     type = "text",
--     val = "┌─ " .. kind.icons.calendar .. " Today is " .. date .. " ─┐",
--     opts = {
--       position = "center",
--       hl = "String",
--     },
--   }

--   local fortune = require "alpha.fortune"()
--   -- fortune = fortune:gsub("^%s+", ""):gsub("%s+$", "")
--   local footer = {
--     type = "text",
--     val = fortune,
--     opts = {
--       position = "center",
--       hl = "Comment",
--       hl_shortcut = "Comment",
--     },
--   }

--   local function button(sc, txt, keybind)
--     local sc_ = sc:gsub("%s", ""):gsub("SPC", "<leader>")

--     local opts = {
--       position = "center",
--       text = txt,
--       shortcut = sc,
--       cursor = 5,
--       width = 24,
--       align_shortcut = "right",
--       hl_shortcut = "Number",
--       hl = "Function",
--     }
--     if keybind then
--       opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
--     end

--     return {
--       type = "button",
--       val = txt,
--       on_press = function()
--         local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
--         vim.api.nvim_feedkeys(key, "normal", false)
--       end,
--       opts = opts,
--     }
--   end

--   local buttons = {
--     type = "group",
--     val = {
--       button(
--         "f",
--         " " .. kind.cmp_kind.Folder .. " Explore",
--         "<cmd>lua require('user.telescope').find_project_files()<CR>"
--       ),
--       button("e", " " .. kind.cmp_kind.File .. " New file", ":ene <BAR> startinsert <CR>"),
--       button("s", " " .. kind.icons.magic .. " Restore", ":lua require('persistence').load()<cr>"),
--       button("g", " " .. kind.icons.git .. " Git Status", ":lua require 'lvim.core.terminal'.lazygit_toggle()<CR>"),
--       button("r", " " .. kind.icons.clock .. " Recents", ":Telescope oldfiles<CR>"),
--       button("c", " " .. kind.icons.settings .. " Config", ":e ~/.config/lvim/config.lua<CR>"),
--       button("q", " " .. kind.icons.exit .. " Quit", ":q<CR>"),
--     },
--     opts = {
--       spacing = 1,
--     },
--   }

--   local section = {
--     header = header,
--     buttons = buttons,
--     plugin_count = plugin_count,
--     heading = heading,
--     footer = footer,
--   }

--   local opts = {
--     layout = {
--       { type = "padding", val = 1 },
--       section.header,
--       { type = "padding", val = 2 },
--       section.heading,
--       section.plugin_count,
--       { type = "padding", val = 1 },
--       -- section.top_bar,
--       section.buttons,
--       -- section.bot_bar,
--       -- { type = "padding", val = 1 },
--       section.footer,
--     },
--     opts = {
--       margin = 5,
--     },
--   }
--   return opts
-- end

-- return M
