# 本地构建输入

将应用管家 1.9.3（1932）原 APK 放到 `input/应用管家_1.9.3.apk`。用于 R18 的原包为 18,544,438 字节，SHA-256 为 `af02e0ed024ffd270d53c848bca36d853fa6cf6eed57d31c95070365f08357ea`。

按[构建说明](../car-ui/README.md#构建)将此 APK 解码到 `.work/decoded`。签名需要本机的 `platform.pk8`，公钥证书位于 `car-ui/platform.x509.pem`。
