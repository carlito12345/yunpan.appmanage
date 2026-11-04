package ha;

import android.provider.Settings;
import com.yunpan.appmanage.ui.ActivitySystemAnimator;

/* loaded from: classes.dex */
public final /* synthetic */ class e8 implements ea.e, n1, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6962a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6963b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6964c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6965d;

    public /* synthetic */ e8(int i10, int i11, ea.e eVar, int i12) {
        this.f6962a = i12;
        this.f6963b = i10;
        this.f6964c = i11;
        this.f6965d = eVar;
    }

    @Override // ha.n1
    public void e(String str, String str2, String str3, String str4) {
        int i10 = this.f6963b;
        int i11 = this.f6964c;
        ea.e eVar = (ea.e) this.f6965d;
        try {
            z7.s sVar = new z7.s();
            sVar.l("keyType", Integer.valueOf(i10));
            sVar.l("gnType", Integer.valueOf(i11));
            sVar.m("name", "(" + str2 + ") settings put " + str.toLowerCase() + " " + str3 + " " + str4);
            sVar.m("type1", str);
            sVar.m("type2", str2);
            sVar.m("key", str3);
            sVar.m("value", str4);
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        String str;
        float f10;
        boolean zPutFloat;
        int i10 = ActivitySystemAnimator.K;
        ActivitySystemAnimator activitySystemAnimator = (ActivitySystemAnimator) this.f6965d;
        activitySystemAnimator.getClass();
        int i11 = this.f6963b;
        if (i11 == 0) {
            str = "window_animation_scale";
        } else if (i11 == 1) {
            str = "transition_animation_scale";
        } else if (i11 != 2) {
            return;
        } else {
            str = "animator_duration_scale";
        }
        switch (this.f6964c) {
            case 0:
                f10 = 0.0f;
                break;
            case 1:
                f10 = 0.25f;
                break;
            case 2:
                f10 = 0.5f;
                break;
            case 3:
                f10 = 0.75f;
                break;
            case 4:
                f10 = 1.0f;
                break;
            case 5:
                f10 = 1.25f;
                break;
            case 6:
                f10 = 1.5f;
                break;
            default:
                return;
        }
        try {
            zPutFloat = Settings.Global.putFloat(activitySystemAnimator.A.getContentResolver(), str, f10);
        } catch (Exception e7) {
            e7.printStackTrace();
            zPutFloat = false;
        }
        if (!zPutFloat) {
            String str2 = "settings put global " + str + " " + f10;
            fa.b0.f5652a.getClass();
            zPutFloat = a2.w0.h(str2).f5648a == 0;
        }
        if (zPutFloat) {
            bVar.b();
        } else {
            android.support.v4.media.session.a.B("修改失败", bVar);
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        switch (this.f6962a) {
            case 0:
                sVar.l("keyType", Integer.valueOf(this.f6963b));
                sVar.l("gnType", Integer.valueOf(this.f6964c));
                ((ea.e) this.f6965d).k(sVar);
                break;
            case 1:
            case 2:
            default:
                sVar.l("keyType", Integer.valueOf(this.f6963b));
                sVar.l("gnType", Integer.valueOf(this.f6964c));
                ((ea.e) this.f6965d).k(sVar);
                break;
            case 3:
                sVar.l("keyType", Integer.valueOf(this.f6963b));
                sVar.l("gnType", Integer.valueOf(this.f6964c));
                ((ea.e) this.f6965d).k(sVar);
                break;
            case 4:
                int i10 = this.f6963b;
                int i11 = this.f6964c;
                ea.e eVar = (ea.e) this.f6965d;
                try {
                    sVar.l("keyType", Integer.valueOf(i10));
                    sVar.l("gnType", Integer.valueOf(i11));
                    eVar.k(sVar);
                    break;
                } catch (Exception unused) {
                    return;
                }
        }
    }

    public /* synthetic */ e8(ActivitySystemAnimator activitySystemAnimator, int i10, int i11) {
        this.f6962a = 6;
        this.f6965d = activitySystemAnimator;
        this.f6963b = i10;
        this.f6964c = i11;
    }
}
