package com.bumptech.glide;

/* loaded from: classes.dex */
public final class j extends RuntimeException {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j(Class cls, int i10) {
        this(android.support.v4.media.session.a.r("Failed to find result encoder for resource class: ", cls, ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary."));
        switch (i10) {
            case 3:
                this("Failed to find source encoder for data class: " + cls);
                break;
            default:
                break;
        }
    }

    public j(String str) {
        super(str);
    }
}
