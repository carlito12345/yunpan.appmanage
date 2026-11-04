package s;

import android.animation.TimeInterpolator;
import android.graphics.drawable.AnimationDrawable;

/* loaded from: classes.dex */
public final class d implements TimeInterpolator {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f13852a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13853b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13854c;

    public d(AnimationDrawable animationDrawable, boolean z) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        this.f13853b = numberOfFrames;
        int[] iArr = this.f13852a;
        if (iArr == null || iArr.length < numberOfFrames) {
            this.f13852a = new int[numberOfFrames];
        }
        int[] iArr2 = this.f13852a;
        int i10 = 0;
        for (int i11 = 0; i11 < numberOfFrames; i11++) {
            int duration = animationDrawable.getDuration(z ? (numberOfFrames - i11) - 1 : i11);
            iArr2[i11] = duration;
            i10 += duration;
        }
        this.f13854c = i10;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f10) {
        int i10 = (int) ((f10 * this.f13854c) + 0.5f);
        int i11 = this.f13853b;
        int[] iArr = this.f13852a;
        int i12 = 0;
        while (i12 < i11) {
            int i13 = iArr[i12];
            if (i10 < i13) {
                break;
            }
            i10 -= i13;
            i12++;
        }
        return (i12 / i11) + (i12 < i11 ? i10 / this.f13854c : 0.0f);
    }
}
