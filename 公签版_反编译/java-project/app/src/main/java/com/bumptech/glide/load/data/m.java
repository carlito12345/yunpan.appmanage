package com.bumptech.glide.load.data;

import a2.k1;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class m implements f {

    /* renamed from: a, reason: collision with root package name */
    public final k1 f3372a;

    public m(k1 k1Var) {
        this.f3372a = k1Var;
    }

    @Override // com.bumptech.glide.load.data.f
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.f
    public final g b(Object obj) {
        return new i((InputStream) obj, this.f3372a);
    }
}
