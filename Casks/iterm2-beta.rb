cask 'iterm2-beta' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.1.4.beta.1'
  sha256 'fb33a517c57353a8e6459321368fd4be3691abd5d02413fbe3fece29e63b2d22'

  url "https://iterm2.com/downloads/beta/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/testing3.xml',
          checkpoint: '6b1ffb51444d02edbbcb2d7bf41da2e4d451f86919b084cc32c14f9ba610587e'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'iTerm.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl',
                '~/Library/Caches/com.googlecode.iterm2',
                '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
              ],
      trash:  [
                '~/Library/Application Support/iTerm',
                '~/Library/Application Support/iTerm2',
                '~/Library/Preferences/com.googlecode.iterm2.plist',
              ]
end
