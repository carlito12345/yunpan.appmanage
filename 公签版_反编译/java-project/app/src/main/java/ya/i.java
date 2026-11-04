package ya;

import android.hardware.input.IInputManager;
import android.os.Looper;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import b8.n;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.service.AccService;
import j$.util.Map;
import java.util.HashMap;
import ua.g8;
import z7.s;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final AccService f19078a;

    /* renamed from: b, reason: collision with root package name */
    public final s f19079b;

    /* renamed from: c, reason: collision with root package name */
    public WindowManager f19080c;

    /* renamed from: d, reason: collision with root package name */
    public View f19081d;

    /* renamed from: e, reason: collision with root package name */
    public ImageView f19082e;

    /* renamed from: h, reason: collision with root package name */
    public int f19085h;

    /* renamed from: i, reason: collision with root package name */
    public int f19086i;

    /* renamed from: j, reason: collision with root package name */
    public int f19087j;

    /* renamed from: k, reason: collision with root package name */
    public final int f19088k;
    public final boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f19089m;

    /* renamed from: s, reason: collision with root package name */
    public final u f19094s;

    /* renamed from: f, reason: collision with root package name */
    public float f19083f = 500.0f;

    /* renamed from: g, reason: collision with root package name */
    public float f19084g = 500.0f;

    /* renamed from: n, reason: collision with root package name */
    public IInputManager f19090n = null;

    /* renamed from: o, reason: collision with root package name */
    public final HashMap f19091o = new HashMap();

    /* renamed from: p, reason: collision with root package name */
    public final HashMap f19092p = new HashMap();

    /* renamed from: q, reason: collision with root package name */
    public final HashMap f19093q = new HashMap();
    public int r = 0;

    public i(AccService accService, s sVar) {
        this.f19088k = -1;
        this.l = false;
        this.f19089m = false;
        u uVar = new u(this, Looper.getMainLooper(), 26);
        this.f19094s = uVar;
        this.f19078a = accService;
        this.f19079b = sVar;
        this.f19089m = sVar.o("isAutoHideCursor").b();
        n nVar = sVar.f19480a;
        if (nVar.containsKey("isChannelSwitchToDownUp")) {
            this.l = sVar.o("isChannelSwitchToDownUp").b();
        }
        if (nVar.containsKey("cursor_close_key_code")) {
            this.f19088k = sVar.o("cursor_close_key_code").e();
        }
        uVar.sendEmptyMessage(-1);
    }

    public static void a(i iVar, int i10) {
        HashMap map = iVar.f19092p;
        int iIntValue = ((Integer) Map.EL.getOrDefault(map, Integer.valueOf(i10), 0)).intValue() + 1;
        HashMap map2 = iVar.f19091o;
        if (iIntValue == 3) {
            map2.put(Integer.valueOf(i10), Integer.valueOf(iVar.f19087j));
        } else if (iIntValue == 6) {
            map2.put(Integer.valueOf(i10), Integer.valueOf(iVar.f19087j * 2));
        }
        map.put(Integer.valueOf(i10), Integer.valueOf(iIntValue));
        iVar.f19094s.sendEmptyMessageDelayed(i10, iIntValue == 1 ? 300L : 50L);
    }

    public static void b(i iVar, int i10, int i11) {
        float f10 = iVar.f19083f + i10;
        float f11 = iVar.f19084g + i11;
        float fMax = Math.max(0.0f, Math.min(iVar.f19085h - iVar.f19082e.getWidth(), f10));
        float fMax2 = Math.max(0.0f, Math.min(iVar.f19086i - iVar.f19082e.getHeight(), f11));
        iVar.f19082e.setTranslationX(fMax);
        iVar.f19082e.setTranslationY(fMax2);
        iVar.f19083f = fMax;
        iVar.f19084g = fMax2;
    }

    public final void c() {
        this.f19080c.removeView(this.f19081d);
        this.f19094s.removeCallbacksAndMessages(null);
        this.f19078a.V = null;
        Toaster.show((CharSequence) "光标已关闭");
    }

    public final void d() {
        this.f19082e.animate().scaleX(1.3f).scaleY(1.3f).setDuration(50L).withEndAction(new g8(14, this)).start();
    }
}
