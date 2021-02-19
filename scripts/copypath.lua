function copy_path()
  local path = mp.get_property("path")
  os.execute("echo "..path.." | tr -d '\n' | xclip -selection clipboard")
  mp.osd_message("Path Copied: "..path)
end

mp.add_key_binding("ctrl+c", "copy_path", copy_path)