require 'os_name/version'

# Operating System Name
module OSName
  # Win32 platform version mapping
  WIN32 = {
    '6.4' => '10',
    '6.3' => '8.1',
    '6.2' => '8',
    '6.1' => '7',
    '6.0' => 'Vista',
    '5.1' => 'XP',
    '5.0' => '2000',
    '4.9' => 'ME',
    '4.1' => '98',
    '4.0' => '95'
  }

  # OS X platform version mapping
  OSX = {
    '14' => 'Yosemite',
    '13' => 'Mavericks',
    '12' => 'Mountain Lion',
    '11' => 'Lion',
    '10' => 'Snow Leopard',
    '9'  => 'Leopard',
    '8'  => 'Tiger',
    '7'  => 'Panther',
    '6'  => 'Jaguar',
    '5'  => 'Puma'
  }

  # Return Operating System name with given os and version.
  #
  # @param os [String] Operating System: darwin, linux, win32.
  # @param version [String] version (release): 14.0.0, 3.13.0-24-generic, 5.1.2600.
  # @return [String] the name of operating system.
  #
  # Usage:
  # > os_name 'darwin', '14.0.0'
  # => 'OS X Yosemite'
  # > os_name 'linux', '3.13.0-24-generic'
  # => 'Linux 3.13'
  # os_name 'win32', '5.1.2600'
  # => 'Windows XP'
  # os_name 'win32'
  # => 'Windows'
  def os_name os=nil, version=nil
    if !os && version
      raise ArgumentError, "You can't specify a `version` without specfying `os`"
    end

    os      ||= platform.os
    version ||= platform.version

    case os
    when 'darwin'
      id = OSX.fetch(version.split('.')[0]) { nil }
      "OS X #{id}"
    when 'linux'
      id = version.sub(/^(\d+\.\d+).*/, '\1')
      "Linux #{id}"
    when 'win32'
      id = WIN32.fetch(version.slice(0, 3)) { nil }
      "Windows #{id}"
    end
  end

  private

    # @return [Gem::Platform] Current machine's platform information.
    def platform
      @platform ||= Gem::Platform.local
    end
end
