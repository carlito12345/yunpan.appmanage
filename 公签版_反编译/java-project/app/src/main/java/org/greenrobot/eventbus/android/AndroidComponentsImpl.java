package org.greenrobot.eventbus.android;

import ha.j2;
import ha.l2;
import q4.a;

/* loaded from: classes3.dex */
public class AndroidComponentsImpl {

    /* renamed from: c, reason: collision with root package name */
    public static final AndroidComponentsImpl f12500c;

    /* renamed from: a, reason: collision with root package name */
    public final j2 f12501a;

    /* renamed from: b, reason: collision with root package name */
    public final l2 f12502b;

    static {
        AndroidComponentsImpl androidComponentsImpl = null;
        if (a.C()) {
            try {
                androidComponentsImpl = (AndroidComponentsImpl) AndroidComponentsImpl.class.getConstructor(null).newInstance(null);
            } catch (Throwable unused) {
            }
        }
        f12500c = androidComponentsImpl;
    }

    public AndroidComponentsImpl() {
        j2 j2Var = new j2(18);
        l2 l2Var = new l2(18);
        this.f12501a = j2Var;
        this.f12502b = l2Var;
    }
}
