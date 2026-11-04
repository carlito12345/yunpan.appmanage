package com.yunpan.appmanage.ui;

import a2.c0;
import a2.w0;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityShell;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import da.g;
import fa.a;
import fa.b0;
import fa.g0;
import fa.h;
import fa.l;
import fa.n0;
import fc.b;
import ha.h3;
import ha.l4;
import ha.lc;
import java.io.File;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import kh.e;
import mc.c;
import org.greenrobot.eventbus.ThreadMode;
import rc.f;
import u9.d;
import ua.g6;
import ua.h6;
import ua.i6;
import ua.l6;
import ua.m6;
import ua.v0;
import x9.j1;
import x9.v4;

/* loaded from: classes.dex */
public class ActivityShell extends g {
    public static final /* synthetic */ int M = 0;
    public EditText C;
    public TextView D;
    public ImageView E;
    public TvRecyclerView F;
    public v4 G;
    public lc H;
    public final SimpleDateFormat I = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    public NestedScrollView K;
    public HorizontalScrollView L;

    public static boolean D(String str) {
        if (str.startsWith("adb tcpip ")) {
            return true;
        }
        return (str.startsWith("adb version") || str.startsWith("adb kill") || str.startsWith("adb devices") || str.startsWith("adb track-devies") || str.startsWith("adb emulator") || str.startsWith("adb transport") || str.startsWith("adb transport-usb") || str.startsWith("adb transport-local") || str.startsWith("adb transport-any") || str.startsWith("adb tcp")) ? false : true;
    }

    public static void x(ActivityShell activityShell, String str) {
        activityShell.getClass();
        if (str.contains("[当前用户]")) {
            DecimalFormat decimalFormat = k.f4034u0;
            str = str.replace("[当前用户]", String.valueOf(j.f4033a.f4060n));
        }
        activityShell.C.setText(str);
        if (g0.f5682a.f()) {
            activityShell.A(0, str);
            return;
        }
        if (h.f5683a.i() || l.f5712a.isConnected()) {
            activityShell.y(1, str);
            return;
        }
        if (n0.f5722a.f5730e != null) {
            activityShell.B(2, str);
        } else if (a.f5646a.f()) {
            activityShell.z(1, str);
        } else {
            activityShell.A(0, str);
        }
    }

    public final void A(int i10, String str) {
        String strTrim = str.trim();
        boolean zEquals = strTrim.equals("adb shell");
        SimpleDateFormat simpleDateFormat = this.I;
        if (zEquals) {
            this.D.setText("本身就是shell会话当中\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
            return;
        }
        if (!D(strTrim)) {
            this.D.setText("不支持此指令，如有需要请用超级终端（termux）\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
            return;
        }
        String strR = w0.r(strTrim);
        if (!strR.startsWith("adb ")) {
            this.G.D(i10, new j1("执行中"));
            d.r(strR).e0(new i6(this, i10));
        } else {
            this.D.setText("本机执行不支持执行此adb指令，仅支持adb shell会话指令\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
        }
    }

    public final void B(int i10, String str) {
        if (n0.f5722a.f5730e != null) {
            C(i10, str);
        } else {
            new c(0, new v0(29)).d(f.f13757b).a(b.a()).b(new l4(this, i10, str, 4));
        }
    }

    public final void C(int i10, String str) {
        String strTrim = str.trim();
        boolean zEquals = strTrim.equals("adb shell");
        SimpleDateFormat simpleDateFormat = this.I;
        if (zEquals) {
            this.D.setText("本身就是shell会话当中\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
            return;
        }
        if (!D(strTrim)) {
            this.D.setText("不支持此指令，如有需要请用超级终端（termux）\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
            return;
        }
        String strR = w0.r(strTrim);
        if (!strR.startsWith("adb ")) {
            this.G.D(i10, new j1("执行中"));
            new c(0, new b8.a(strR, 15)).d(f.f13757b).a(b.a()).b(new l6(this, i10, 2));
        } else {
            this.D.setText("不支持执行此adb指令，仅支持shell指令\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
        }
    }

    @Override // q.i, m0.k, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 23 && this.C.isFocused()) {
            if (keyEvent.getAction() == 1) {
                InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
                if (inputMethodManager != null) {
                    inputMethodManager.showSoftInput(this.C, 0);
                }
            }
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // da.g, androidx.fragment.app.j0, androidx.activity.m, m0.k, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        e.b().j(this);
        ArrayList arrayList = new ArrayList();
        new c(0, new g6(this, 0, arrayList)).d(f.f13757b).a(b.a()).b(new h3(this, 16, arrayList));
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        DecimalFormat decimalFormat = k.f4034u0;
        j.f4033a.f4048g0.submit(new com.gj.server.a(6));
        e.b().l(this);
        super.onDestroy();
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(ja.a aVar) {
        if (aVar.f9813a == 3) {
            this.E.setVisibility(8);
            String strTrim = ((String) aVar.f9814b).trim();
            if (strTrim.isEmpty()) {
                return;
            }
            int iIntValue = Integer.valueOf(strTrim.substring(0, 1)).intValue();
            this.F.setSelection(iIntValue);
            String strTrim2 = strTrim.substring(1).trim();
            if (strTrim2.startsWith("adb shell ")) {
                strTrim2 = strTrim2.substring(10);
            }
            this.C.setText(strTrim2);
            if (iIntValue == 0) {
                A(iIntValue, strTrim2);
                return;
            }
            if (iIntValue == 1) {
                y(iIntValue, strTrim2);
            } else if (h.f5683a.i() || l.f5712a.isConnected()) {
                y(1, strTrim2);
            } else {
                A(0, strTrim2);
            }
        }
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_shell;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0123  */
    @Override // da.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void u() {
        final int i10 = 0;
        this.E = (ImageView) findViewById(R.id.v_qrCode);
        String str = this.A.getFilesDir().getPath() + "/qrCode_cmd";
        if (new File(str).exists()) {
            this.E.setImageURI(Uri.parse("file://" + str));
        }
        this.C = (EditText) findViewById(R.id.v_edit_cmd);
        this.D = (TextView) findViewById(R.id.v_output);
        this.F = (TvRecyclerView) findViewById(R.id.v_list_btn);
        this.C.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.j6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityShell f15771b;

            {
                this.f15771b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                ActivityShell activityShell = this.f15771b;
                switch (i10) {
                    case 0:
                        int i12 = ActivityShell.M;
                        activityShell.getClass();
                        if (keyEvent.getAction() == 0 && i11 == 20) {
                            activityShell.F.requestFocus();
                            break;
                        }
                        break;
                    default:
                        int i13 = ActivityShell.M;
                        activityShell.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i11 != 19) {
                                if (i11 != 20) {
                                    if (i11 != 21) {
                                        if (i11 == 22) {
                                            activityShell.L.smoothScrollBy(50, 0);
                                            break;
                                        }
                                    } else {
                                        activityShell.L.smoothScrollBy(-50, 0);
                                        break;
                                    }
                                } else {
                                    activityShell.K.v(0, 50, 250, false);
                                    break;
                                }
                            } else if (activityShell.K.getScrollY() != 0) {
                                activityShell.K.v(0, -50, 250, false);
                                break;
                            } else {
                                activityShell.F.requestFocus();
                                break;
                            }
                        }
                        break;
                }
                return true;
            }
        });
        this.K = (NestedScrollView) findViewById(R.id.v_scrollView);
        this.L = (HorizontalScrollView) findViewById(R.id.v_hScrollView);
        this.D.setText("输入要执行的命令,无需输入前缀(adb shell)\n\n如果您已连接adb的则点击 [adb执行]\n\n如果你root已授权 或者 没连接adb，请点击 [本机执行] 即可\n\n\n\n注：只支持简单的shell命令，不支持文件编辑命令 或 流式命令 或 监听刷新命令！如需执行高级的命令，请用超级终端(termux)\n比如读取日志命令，你需要这样写(只看最新500条)：logcat -d -t 500\n比如top，需这样写(仅刷新一次)：top -n 1");
        final int i11 = 1;
        this.D.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.j6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityShell f15771b;

            {
                this.f15771b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                ActivityShell activityShell = this.f15771b;
                switch (i11) {
                    case 0:
                        int i12 = ActivityShell.M;
                        activityShell.getClass();
                        if (keyEvent.getAction() == 0 && i112 == 20) {
                            activityShell.F.requestFocus();
                            break;
                        }
                        break;
                    default:
                        int i13 = ActivityShell.M;
                        activityShell.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 19) {
                                if (i112 != 20) {
                                    if (i112 != 21) {
                                        if (i112 == 22) {
                                            activityShell.L.smoothScrollBy(50, 0);
                                            break;
                                        }
                                    } else {
                                        activityShell.L.smoothScrollBy(-50, 0);
                                        break;
                                    }
                                } else {
                                    activityShell.K.v(0, 50, 250, false);
                                    break;
                                }
                            } else if (activityShell.K.getScrollY() != 0) {
                                activityShell.K.v(0, -50, 250, false);
                                break;
                            } else {
                                activityShell.F.requestFocus();
                                break;
                            }
                        }
                        break;
                }
                return true;
            }
        });
        this.F.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        v4 v4Var = new v4();
        this.G = v4Var;
        this.F.setAdapter(v4Var);
        this.G.q(new j1("本机执行"));
        this.G.q(new j1("adb执行"));
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 23) {
            this.G.q(new j1("雫执行"));
        }
        this.G.q(new j1("快捷指令"));
        if (!v.f4106a.f4119g.isEmpty()) {
            this.G.q(new j1("推送"));
        }
        this.G.q(new j1("扫码输入"));
        if (i12 >= 21) {
            b0.f5652a.getClass();
            if (!w0.P()) {
                DecimalFormat decimalFormat = k.f4034u0;
                if (j.f4033a.f4055k) {
                    if (!g0.f5682a.d().isEmpty()) {
                        this.G.q(new j1("激活第三方"));
                    }
                }
            }
        }
        this.G.q(new j1("粘贴"));
        this.G.q(new j1("清空"));
        this.G.q(new j1("导出"));
        this.G.q(new j1("返回"));
        this.F.requestFocus();
        this.G.f2881e = new h6(this, 3);
        this.F.setOnItemListener(new m6(this));
        this.F.setOnInBorderKeyEventListener(new h6(this, 4));
    }

    public final void y(int i10, String str) {
        String strTrim = str.trim();
        boolean zEquals = strTrim.equals("adb shell");
        SimpleDateFormat simpleDateFormat = this.I;
        if (zEquals) {
            this.D.setText("无需执行adb shell，本身已在shell会话当中\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
            return;
        }
        if (!D(strTrim)) {
            this.D.setText("不支持此指令，如有需要请用超级终端（termux）\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
            return;
        }
        if (strTrim.equals("adb install ")) {
            this.D.setText("不支持adb install，请用pm install\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
            return;
        }
        this.G.D(i10, new j1("执行中"));
        String strR = w0.r(strTrim);
        if (l.f5712a.isConnected()) {
            new c(0, new b8.a(strR, 16)).d(f.f13757b).a(b.a()).b(new l6(this, i10, 1));
        } else {
            fa.j jVar = h.f5683a;
            jVar.f5695a = new i6(this, i10);
            d.f15554a.execute(new c0(jVar, 21, strR));
        }
    }

    public final void z(int i10, String str) {
        String strTrim = str.trim();
        boolean zEquals = strTrim.equals("adb shell");
        SimpleDateFormat simpleDateFormat = this.I;
        if (zEquals) {
            this.D.setText("本身就是shell会话当中\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
            return;
        }
        if (!D(strTrim)) {
            this.D.setText("不支持此指令，如有需要请用超级终端（termux）\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
            return;
        }
        String strR = w0.r(strTrim);
        if (!strR.startsWith("adb ")) {
            this.G.D(i10, new j1("执行中"));
            new c(0, new b8.a(strR, 14)).d(f.f13757b).a(b.a()).b(new l6(this, i10, 0));
        } else {
            this.D.setText("仅支持adb shell会话指令\n\n" + simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())));
        }
    }
}
