function grep --wraps=ug --description 'grep via ugrep when available'
  if type -q ug
      command ug -G $argv
  else
      command /usr/bin/grep $argv
  end
end
