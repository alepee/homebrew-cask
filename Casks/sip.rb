cask 'sip' do
  if MacOS.version <= :sierra
    version '1.2'
    sha256 '93569421eef761ccdd2784d73e5f201d29e5e22ad6814a7a169f459f460bf4ff'
  else
    version '2.2.5'
    sha256 'c1a55a021ff8d4e86cd3087b6513201c5f2e7c5cc22b378f6fe457e19670343e'
  end

  url "https://sipapp.io/updates/v#{version.major}/sip-#{version}.zip"
  appcast "https://sipapp.io/updates/v#{version.major}/sip.xml"
  name 'Sip'
  homepage 'https://sipapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Sip.app'

  zap trash: [
               '~/Library/Application Support/Sip',
               '~/Library/Application Support/io.sipapp.Sip-paddle',
               '~/Library/Application Support/CrashReporter/Sip_*.plist',
               '~/Library/Caches/io.sipapp.Sip-paddle',
               '~/Library/Cookies/io.sipapp.Sip-paddle.binarycookies',
               '~/Library/Preferences/io.sipapp.Sip-paddle.plist',
               '~/Library/Saved Application State/io.sipapp.Sip-paddle.savedState',
             ]
end
