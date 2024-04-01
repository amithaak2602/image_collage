#include "include/imagecollage/imagecollage_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "imagecollage_plugin.h"

void ImagecollagePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  imagecollage::ImagecollagePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
