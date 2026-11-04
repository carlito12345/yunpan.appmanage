package org.bouncycastle.cms;

/* loaded from: classes3.dex */
interface MACProvider {
    byte[] getMAC();

    void init();
}
