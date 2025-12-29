function extract_audio
    set -l video_id $argv[1]

    if test -z "$video_id"
        echo "Usage: extract_audio <video_id>"
        return 1
    end

    if not type -q yt-dlp
        echo "yt-dlp not found, attempting to install..."

        if type -q pacman
            sudo pacman -Sy --noconfirm yt-dlp
        else if type -q brew
            brew install yt-dlp
        else if type -q apt
            sudo apt update && sudo apt install -y yt-dlp
        else if type -q dnf
            sudo dnf install -y yt-dlp
        else if type -q pip3
            pip3 install --upgrade yt-dlp
        else
            echo "Error: Could not find a supported package manager (brew, apt, dnf, pacman, pip3)."
            return 1
        end
    end

    yt-dlp --ignore-errors \
        -f bestaudio \
        --extract-audio \
        --no-embed-metadata \
        --sponsorblock-remove all \
        --audio-format mp3 \
        --audio-quality 0 \
        -o "%(title)s.%(ext)s" \
        "https://www.youtube.com/watch?v=$video_id"
end
