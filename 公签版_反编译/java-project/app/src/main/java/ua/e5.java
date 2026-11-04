package ua;

import android.widget.TextView;
import com.hsae.autosdk.reverse.Reverse;
import com.yunpan.appmanage.ui.ActivityNissanTextReverse;

/* loaded from: classes.dex */
public final class e5 implements Reverse.ReverseListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityNissanTextReverse f15656a;

    public e5(ActivityNissanTextReverse activityNissanTextReverse) {
        this.f15656a = activityNissanTextReverse;
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAVMChangeDAFrameResponse(byte b10) {
        ta.q.s("onAVMChangeDAFrameResponse：", b10, this.f15656a.G);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAVMCheckLanguageResponse() {
        this.f15656a.H.setText("onAVMCheckLanguageResponse");
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAVMCheckViewStateResponse() {
        this.f15656a.I.setText("onAVMCheckViewStateResponse");
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAVMHardwareVersionResponse(String str) {
        this.f15656a.K.setText("onAVMHardwareVersionResponse：" + str);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAVMReverseStateResponse(byte b10) {
        ta.q.s("onAVMReverseStateResponse：", b10, this.f15656a.L);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAVMSettingInfoResponse(byte b10, byte b11, byte b12) {
        TextView textView = this.f15656a.M;
        StringBuilder sbO = ta.q.o(b10, b11, "onAVMSettingInfoResponse：", " ", " ");
        sbO.append((int) b12);
        textView.setText(sbO.toString());
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAVMSoftwareVersionResponse(String str) {
        this.f15656a.N.setText("onAVMSoftwareVersionResponse：" + str);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAVMStartResponse() {
        this.f15656a.O.setText("onAVMStartResponse");
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAVMVINResponse(String str) {
        this.f15656a.P.setText("onAVMVINResponse：" + str);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onAvmBeepSoundResponse(byte b10) {
        ta.q.s("onAvmBeepSoundResponse：", b10, this.f15656a.R);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onButtonEnableStatusResponse(byte b10) {
        ta.q.s("onButtonEnableStatusResponse：", b10, this.f15656a.S);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onCarTypeResponse(byte b10) {
        ta.q.s("onCarTypeResponse：", b10, this.f15656a.T);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onDistanceResponse(byte b10) {
        ta.q.s("onDistanceResponse：", b10, this.f15656a.V);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onFrCenterResponse(byte b10) {
        ta.q.s("onFrCenterResponse：", b10, this.f15656a.X);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onFrLeftResponse(byte b10) {
        ta.q.s("onFrLeftResponse：", b10, this.f15656a.Y);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onFrRightResponse(byte b10) {
        ta.q.s("onFrRightResponse：", b10, this.f15656a.Z);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onFrameResponse(byte b10) {
        ta.q.s("onFrameResponse：", b10, this.f15656a.f3983h0);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onLightsStatusResponse(byte b10) {
        ta.q.s("onLightsStatusResponse：", b10, this.f15656a.f3984t0);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onRrCenterResponse(byte b10) {
        ta.q.s("onRrCenterResponse：", b10, this.f15656a.M0);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onRrLeftResponse(byte b10) {
        ta.q.s("onRrLeftResponse：", b10, this.f15656a.N0);
    }

    @Override // com.hsae.autosdk.reverse.Reverse.ReverseListener
    public final void onRrRightResponse(byte b10) {
        ta.q.s("onRrRightResponse：", b10, this.f15656a.O0);
    }
}
