require 'test_helper'

class OSNameTest < OSName::Test
  def test_os_name_output
    assert os_name.size > 0
  end

  def test_os_name_os_x_yosemite
    assert_equal 'OS X Yosemite', os_name('darwin', '14.0.0')
  end

  def test_os_name_linux_3_13_0_24_generic
    assert_equal 'Linux 3.13', os_name('linux', '3.13.0-24-generic')
  end

  def test_os_name_windows_5_1_2600
    assert_equal 'Windows XP', os_name('win32', '5.1.2600')
  end

  def test_os_name_win32
    assert_equal 'Windows', os_name('win32')
  end
end
