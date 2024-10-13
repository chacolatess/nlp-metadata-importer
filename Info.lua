return {
  LrSdkVersion = 5.0,
  LrSdkMinimumVersion = 1.3,    -- TODO verify minimum version of APIs used
  LrToolkitIdentifier = 'com.bcc32.lightroom.nlp-metadata-import',
  LrPluginName = "NLP Metadata Import",

  LrLibraryMenuItems = {
    title = "Import NLP metadata (test)",
    file = "import.lua",
  },

  VERSION = { major = 0, minor = 1, revision = 0, },
}
