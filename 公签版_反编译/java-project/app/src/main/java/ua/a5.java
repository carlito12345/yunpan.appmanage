package ua;

import com.hsae.autosdk.reverse.Reverse;
import com.yunpan.appmanage.ui.ActivityNissanTextReverse;

/* loaded from: classes.dex */
public final class a5 implements Reverse.ReverseStateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityNissanTextReverse f15565a;

    public a5(ActivityNissanTextReverse activityNissanTextReverse) {
        this.f15565a = activityNissanTextReverse;
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseStateListener
    public final void onReverseStateChanged(boolean z) {
        this.f15565a.runOnUiThread(new a2.f0(this, z, 1));
    }
}
