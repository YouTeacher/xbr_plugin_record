## 使用Flutter实现 仿微信录音的插件 
该插件原插件地址为[flutter_plugin_record](https://pub.dev/packages/flutter_plugin_record)
原插件在flutter升级后无法使用，修复与改进如下：

## 修复与改进
- 支持flutter 3.0.0
- 安卓端播放音频不申请麦克风权限。
- 修复安卓Native AndroidAudioConverter 无法引入问题。
- 修复新版本flutter安卓 namespace 问题
- 修复新版本jdk kotlin  {jvmToolchain(8)} 问题
- 修复新版本flutter 插件 Registry 问题
- 目前测试最高可支持到flutter3.32.x版本

## 目前维护方
本插件目前由 [易林物流 小镖人研发团队](https://www.yilinwuliu.com/) 长期维护。

如果您有物流软件开发需求，欢迎使用我们的产品。