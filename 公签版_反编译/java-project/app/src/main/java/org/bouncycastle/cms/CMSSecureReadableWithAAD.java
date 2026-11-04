package org.bouncycastle.cms;

import java.io.OutputStream;

/* loaded from: classes3.dex */
interface CMSSecureReadableWithAAD extends CMSSecureReadable {
    OutputStream getAADStream();

    byte[] getMAC();

    void setAADStream(OutputStream outputStream);
}
