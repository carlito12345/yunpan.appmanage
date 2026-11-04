package ra;

import com.hsae.autosdk.core.NoConst;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public int f13725a;

    /* renamed from: b, reason: collision with root package name */
    public float f13726b;

    /* renamed from: c, reason: collision with root package name */
    public float f13727c;

    /* renamed from: d, reason: collision with root package name */
    public float f13728d;

    public a() {
        a();
    }

    public final void a() {
        if (this.f13725a == 300) {
            return;
        }
        this.f13725a = NoConst.RECORDING_TIME_INTERVAL;
        float fMax = 1.0f / (Math.max(1, NoConst.RECORDING_TIME_INTERVAL) * 6.2831855f);
        this.f13726b = fMax / ((1.0f / 48000) + fMax);
    }
}
