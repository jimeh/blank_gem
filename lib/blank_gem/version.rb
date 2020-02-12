# frozen_string_literal: true

module BlankGem
  VERSION = File.read(
    File.expand_path(File.join('..', '..', 'VERSION'), __dir__)
  )
end
