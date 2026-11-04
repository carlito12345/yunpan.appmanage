package com.rapid7.client.dcerpc;

/* loaded from: classes.dex */
public enum Interface {
    WINREG_V1_0("winreg interface", "338cd001-2244-31f1-aaaa-900038001003:v1.0"),
    SRVSVC_V3_0("srvsvc interface", "4b324fc8-1670-01d3-1278-5a47bf6ee188:v3.0"),
    LSASVC_V0_0("lsarpc interface", "12345778-1234-ABCD-EF00-0123456789AB:v0.0"),
    SAMSVC_V1_0("samr interface", "12345778-1234-ABCD-EF00-0123456789AC:v1.0"),
    SVCCTL_V2_0("svcctl_interface", "367abb81-9844-35f1-ad32-98f038001003:v2.0"),
    NDR_32BIT_V2("NDR transfer syntax identifier", "8a885d04-1ceb-11c9-9fe8-08002b104860:v2.0");

    private final short majorVersion;
    private final short minorVersion;
    private final String name;
    private final String repr;
    private final byte[] uuid = new byte[16];

    Interface(String str, String str2) {
        this.name = str;
        this.repr = str2;
        String[] strArrSplit = str2.split(":", 2);
        String[] strArrSplit2 = strArrSplit[0].split("-", 5);
        String[] strArr = {strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]};
        String[] strArr2 = {strArrSplit2[3], strArrSplit2[4]};
        int i10 = 0;
        int i11 = 0;
        int i12 = 4;
        for (int i13 = 3; i10 < i13; i13 = 3) {
            String str3 = strArr[i10];
            byte[] bytes = str3.getBytes();
            for (int length = str3.length() - 2; length >= 0; length -= 2) {
                for (int i14 = length; i14 < length + 2; i14++) {
                    byte b10 = bytes[i14];
                    byte[] bArr = this.uuid;
                    bArr[i11] = (byte) (bArr[i11] | ((byte) (Character.digit(b10, 16) << i12)));
                    if (i12 == 0) {
                        i11++;
                        i12 = 4;
                    } else {
                        i12 = 0;
                    }
                }
            }
            i10++;
        }
        for (int i15 = 0; i15 < 2; i15++) {
            for (byte b11 : strArr2[i15].getBytes()) {
                byte[] bArr2 = this.uuid;
                bArr2[i11] = (byte) (((byte) (Character.digit(b11, 16) << i12)) | bArr2[i11]);
                if (i12 == 0) {
                    i11++;
                    i12 = 4;
                } else {
                    i12 = 0;
                }
            }
        }
        String[] strArrSplit3 = strArrSplit[1].split("\\.", 2);
        this.majorVersion = Short.valueOf(strArrSplit3[0].substring(1)).shortValue();
        this.minorVersion = Short.valueOf(strArrSplit3[1]).shortValue();
    }

    public short getMajorVersion() {
        return this.majorVersion;
    }

    public short getMinorVersion() {
        return this.minorVersion;
    }

    public String getName() {
        return this.name;
    }

    public String getRepr() {
        return this.repr;
    }

    public byte[] getUUID() {
        return this.uuid;
    }
}
