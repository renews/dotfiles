function compress_audio --description 'Compress audio recursively (wav, ogg, mp3, wmv) into OGG'
  set -l out_dir_name "compressed"
  set -l out_ext "ogg"

  if test (count $argv) -eq 0
    set in_dir (pwd)
  else if test "$argv[1]" = "."
    set in_dir (pwd)
  else
    set in_dir "$argv[1]"
  end

  set -l out_dir "$in_dir/$out_dir_name"

  if string match -q "$out_dir_name" (path basename -- "$in_dir")
    echo "Refusing: you are inside '$out_dir_name'. cd to the parent folder."
    return 1
  end

  mkdir -p -- "$out_dir"

  set -l count 0

  begin
    command find "$in_dir" \
      -type d -name "$out_dir_name" -prune -o \
      -type f \( -iname '*.wav' -o -iname '*.ogg' -o -iname '*.mp3' -o -iname '*.wmv' \) \
      -print0
  end | while read -lz f
      set count (math $count + 1)

      set -l rel (string replace -- "$in_dir/" "" "$f")
      set -l rel_dir (path dirname -- "$rel")

      # Get base name from the REAL path, then sanitize leading junk
      set -l base (path change-extension '' -- (path basename -- "$f"))
      set base (string replace -r '^[\s-]+' '' -- "$base")

      set -l out_path "$out_dir/$rel_dir/$base.$out_ext"

      mkdir -p -- (path dirname -- "$out_path")

      if test -f "$out_path"
        echo "[$count] SKIP   $rel"
        continue
      end

      echo "[$count] ENCODE $rel, BASE $base"
      command ffmpeg -nostdin -y -loglevel error \
        -i "$f" -map 0:a:0? -vn \
        -c:a libvorbis -q:a 4 \
        "$out_path"

      if test $status -ne 0
        echo "[$count] FAIL   $rel"
        command rm -f -- "$out_path"
      end
  end
end
