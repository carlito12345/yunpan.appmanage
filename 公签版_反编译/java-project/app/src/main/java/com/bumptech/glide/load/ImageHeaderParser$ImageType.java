package com.bumptech.glide.load;

import f5.d;

/* loaded from: classes.dex */
public enum ImageHeaderParser$ImageType {
    GIF(true),
    JPEG(false),
    RAW(false),
    PNG_A(true),
    PNG(false),
    WEBP_A(true),
    WEBP(false),
    ANIMATED_WEBP(true),
    AVIF(true),
    ANIMATED_AVIF(true),
    UNKNOWN(false);


    /* renamed from: a, reason: collision with root package name */
    public final boolean f3347a;

    ImageHeaderParser$ImageType(boolean z) {
        this.f3347a = z;
    }

    public boolean hasAlpha() {
        return this.f3347a;
    }

    public boolean isWebp() {
        int i10 = d.f5617a[ordinal()];
        return i10 == 1 || i10 == 2 || i10 == 3;
    }
}
