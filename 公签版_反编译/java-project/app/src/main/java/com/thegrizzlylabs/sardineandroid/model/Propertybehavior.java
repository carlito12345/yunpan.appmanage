package com.thegrizzlylabs.sardineandroid.model;

import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.Root;

@Namespace(prefix = "D", reference = "DAV:")
@Root
/* loaded from: classes.dex */
public class Propertybehavior {
    private Keepalive keepalive;
    private Omit omit;

    public Keepalive getKeepalive() {
        return this.keepalive;
    }

    public Omit getOmit() {
        return this.omit;
    }

    public void setKeepalive(Keepalive keepalive) {
        this.keepalive = keepalive;
    }

    public void setOmit(Omit omit) {
        this.omit = omit;
    }
}
