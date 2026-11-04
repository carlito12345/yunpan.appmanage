package ua;

import com.yunpan.appmanage.ui.ActivityNissanTextGN;
import ha.wd;

/* loaded from: classes.dex */
public final class z4 implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16078a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityNissanTextGN f16079b;

    public /* synthetic */ z4(ActivityNissanTextGN activityNissanTextGN, int i10) {
        this.f16078a = i10;
        this.f16079b = activityNissanTextGN;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f16078a) {
            case 0:
                try {
                    this.f16079b.E.setLoudness(true);
                    break;
                } catch (Exception unused) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            case 1:
                try {
                    this.f16079b.E.setAudioMute(true);
                    break;
                } catch (Exception unused2) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            default:
                try {
                    this.f16079b.E.setNaviMuteState(true);
                    break;
                } catch (Exception unused3) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                }
        }
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f16078a) {
            case 0:
                try {
                    this.f16079b.E.setLoudness(false);
                    break;
                } catch (Exception unused) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            case 1:
                try {
                    this.f16079b.E.setAudioMute(false);
                    break;
                } catch (Exception unused2) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            default:
                try {
                    this.f16079b.E.setNaviMuteState(false);
                    break;
                } catch (Exception unused3) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                }
        }
    }
}
