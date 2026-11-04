package com.hierynomus.smbfs;

import java.util.function.IntFunction;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements IntFunction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3746a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f3747b;

    public /* synthetic */ a(int i10, Object obj) {
        this.f3746a = i10;
        this.f3747b = obj;
    }

    @Override // java.util.function.IntFunction
    public final Object apply(int i10) {
        switch (this.f3746a) {
            case 0:
                return ((SmbPath) this.f3747b).lambda$iterator$0(i10);
            default:
                return Integer.valueOf(((int[]) this.f3747b)[i10]);
        }
    }
}
