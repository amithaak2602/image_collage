#ifndef FLUTTER_PLUGIN_IMAGECOLLAGE_PLUGIN_H_
#define FLUTTER_PLUGIN_IMAGECOLLAGE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace imagecollage {

class ImagecollagePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ImagecollagePlugin();

  virtual ~ImagecollagePlugin();

  // Disallow copy and assign.
  ImagecollagePlugin(const ImagecollagePlugin&) = delete;
  ImagecollagePlugin& operator=(const ImagecollagePlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace imagecollage

#endif  // FLUTTER_PLUGIN_IMAGECOLLAGE_PLUGIN_H_
