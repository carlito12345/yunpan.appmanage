package ua;

import com.hsae.autosdk.reverse.Reverse;
import com.yunpan.appmanage.ui.ActivityNissanTextReverse;

/* loaded from: classes.dex */
public final class d5 implements Reverse.AvmListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityNissanTextReverse f15637a;

    public d5(ActivityNissanTextReverse activityNissanTextReverse) {
        this.f15637a = activityNissanTextReverse;
    }

    @Override // com.hsae.autosdk.reverse.Reverse.AvmListener
    public final void onAVMStatusAndRequestResponseNoIPA(final byte b10, final byte b11) {
        this.f15637a.runOnUiThread(new Runnable() { // from class: ua.b5
            @Override // java.lang.Runnable
            public final void run() {
                this.f15585a.f15637a.F.setText("onAVMStatusAndRequestResponseNoIPA：" + ((int) b10) + " " + ((int) b11));
            }
        });
    }

    @Override // com.hsae.autosdk.reverse.Reverse.AvmListener
    public final void onAVMStatusAndRequestResponseWithIPA(final byte b10, final byte b11, final byte b12, final byte b13, final byte b14, final byte b15, final byte b16, final byte b17) {
        this.f15637a.runOnUiThread(new Runnable() { // from class: ua.c5
            @Override // java.lang.Runnable
            public final void run() {
                this.f15606a.f15637a.E.setText("onAVMStatusAndRequestResponseWithIPA：" + ((int) b10) + " " + ((int) b11) + " " + ((int) b12) + " " + ((int) b13) + " " + ((int) b14) + " " + ((int) b15) + " " + ((int) b16) + " " + ((int) b17));
            }
        });
    }
}
