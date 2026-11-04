package tb;

import a2.w0;
import android.text.Editable;
import android.text.Selection;
import android.view.View;
import com.hjq.permissions.OnPermissionCallback;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import com.yunpan.appmanage.ui.ActivityAdb;
import com.yunpan.appmanage.ui.ActivityAppBatch;
import com.yunpan.appmanage.ui.ActivityAppDetailHistoryLog;
import com.yunpan.appmanage.ui.ActivityAppHistoryLog;
import com.yunpan.appmanage.ui.ActivityAppInstallTime;
import com.yunpan.appmanage.ui.ActivityAppStorage;
import com.yunpan.appmanage.ui.ActivityAppTraffic;
import com.yunpan.appmanage.ui.ActivityApps;
import com.yunpan.appmanage.ui.ActivityBootStartTask;
import com.yunpan.appmanage.util.a0;
import fa.b0;
import ha.e6;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import x9.n3;

/* loaded from: classes.dex */
public final /* synthetic */ class v implements te.p, TvRecyclerView.OnInBorderKeyEventListener, ec.d, OnPermissionCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15037a;

    public /* synthetic */ v(int i10) {
        this.f15037a = i10;
    }

    private final void a(List list, List list2) {
    }

    @Override // te.p
    public Object f(Object obj, Object obj2) {
        long jG;
        long jG2;
        CodeEditor codeEditor = (CodeEditor) obj;
        mb.b bVar = (mb.b) obj2;
        switch (this.f15037a) {
            case 0:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                wb.c cVar = codeEditor.f8719j;
                int iL = cVar.l(bVar.f11056a);
                int iB = sb.h.b(iL - ((int) Math.ceil(codeEditor.getHeight() / codeEditor.getRowHeight())), cVar.a() - 1);
                int i10 = bVar.f11058c - cVar.q(iL).f17797d;
                wb.h hVarQ = cVar.q(iB);
                int i11 = hVarQ.f17794a;
                int i12 = hVarQ.f17797d;
                return codeEditor.getText().n().A(i11, sb.h.b(i10, hVarQ.f17798e - i12) + i12);
            case 1:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                wb.c cVar2 = codeEditor.f8719j;
                int iL2 = cVar2.l(bVar.f11056a);
                int iB2 = sb.h.b(((int) Math.ceil(codeEditor.getHeight() / codeEditor.getRowHeight())) + iL2, cVar2.a() - 1);
                int i13 = bVar.f11058c - cVar2.q(iL2).f17797d;
                wb.h hVarQ2 = cVar2.q(iB2);
                int i14 = hVarQ2.f17794a;
                int i15 = hVarQ2.f17797d;
                return codeEditor.getText().n().A(i14, sb.h.b(i13, hVarQ2.f17798e - i15) + i15);
            case 2:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                wb.c cVar3 = codeEditor.f8719j;
                int i16 = bVar.f11058c - cVar3.q(cVar3.l(bVar.f11056a)).f17797d;
                wb.h hVarQ3 = cVar3.q(codeEditor.getFirstVisibleRow());
                int i17 = hVarQ3.f17794a;
                int i18 = hVarQ3.f17797d;
                return codeEditor.getText().n().A(i17, sb.h.b(i16, hVarQ3.f17798e - i18) + i18);
            case 3:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                wb.c cVar4 = codeEditor.f8719j;
                int i19 = bVar.f11058c - cVar4.q(cVar4.l(bVar.f11056a)).f17797d;
                wb.h hVarQ4 = cVar4.q(codeEditor.getLastVisibleRow());
                int i20 = hVarQ4.f17794a;
                int i21 = hVarQ4.f17797d;
                return codeEditor.getText().n().A(i20, sb.h.b(i19, hVarQ4.f17798e - i21) + i21);
            case 4:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                if (!codeEditor.getProps().f14929x) {
                    return codeEditor.getText().n().A(bVar.f11057b, 0);
                }
                mb.h hVarO = codeEditor.getText().o(bVar.f11057b);
                int iC = (int) (mb.k.c(hVarO, 0, hVarO.f11076c) >> 32);
                return (bVar.f11058c == iC || iC == codeEditor.getText().o(bVar.f11057b).f11076c) ? codeEditor.getText().n().A(bVar.f11057b, 0) : codeEditor.getText().n().A(bVar.f11057b, iC);
            case 5:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                int i22 = codeEditor.getText().o(bVar.f11057b).f11076c;
                if (!codeEditor.getProps().f14929x) {
                    return codeEditor.getText().n().A(bVar.f11057b, i22);
                }
                mb.h hVarO2 = codeEditor.getText().o(bVar.f11057b);
                int iC2 = (int) (mb.k.c(hVarO2, 0, hVarO2.f11076c) & 4294967295L);
                return bVar.f11058c != iC2 ? codeEditor.getText().n().A(bVar.f11057b, iC2) : codeEditor.getText().n().A(bVar.f11057b, i22);
            case 6:
                ue.d.e(codeEditor, "<unused var>");
                ue.d.e(bVar, "<unused var>");
                mb.b bVar2 = new mb.b();
                bVar2.f11058c = 0;
                bVar2.f11057b = 0;
                bVar2.f11056a = 0;
                return bVar2;
            case 7:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "<unused var>");
                return codeEditor.getText().n().z(codeEditor.getText().f11067d);
            case 8:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                wb.c cVar5 = codeEditor.f8719j;
                int iL3 = cVar5.l(bVar.f11056a);
                wb.h hVarQ5 = cVar5.q(iL3);
                int i23 = iL3 + 1;
                int i24 = (i23 == cVar5.a() || cVar5.q(i23).f17794a != hVarQ5.f17794a) ? hVarQ5.f17798e : hVarQ5.f17798e - 1;
                if (!codeEditor.getProps().f14929x) {
                    return codeEditor.getText().n().A(hVarQ5.f17794a, hVarQ5.f17797d);
                }
                int iC3 = (int) (mb.k.c(codeEditor.getText().o(bVar.f11057b), hVarQ5.f17797d, i24) >> 32);
                return (bVar.f11058c == iC3 || iC3 == i24) ? codeEditor.getText().n().A(bVar.f11057b, hVarQ5.f17797d) : codeEditor.getText().n().A(bVar.f11057b, iC3);
            case 9:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                wb.c cVar6 = codeEditor.f8719j;
                int iL4 = cVar6.l(bVar.f11056a);
                wb.h hVarQ6 = cVar6.q(iL4);
                int i25 = iL4 + 1;
                int i26 = (i25 == cVar6.a() || cVar6.q(i25).f17794a != hVarQ6.f17794a) ? hVarQ6.f17798e : hVarQ6.f17798e - 1;
                if (!codeEditor.getProps().f14929x) {
                    return codeEditor.getText().n().A(hVarQ6.f17794a, i26);
                }
                int iC4 = (int) (mb.k.c(codeEditor.getText().o(bVar.f11057b), hVarQ6.f17797d, i26) & 4294967295L);
                return bVar.f11058c != iC4 ? codeEditor.getText().n().A(bVar.f11057b, iC4) : codeEditor.getText().n().A(bVar.f11057b, i26);
            case 10:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                long jG3 = codeEditor.f8719j.g(bVar.f11057b, bVar.f11058c);
                return codeEditor.getText().n().A((int) (jG3 >> 32), (int) (jG3 & 4294967295L));
            case 11:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                mb.j cursor = codeEditor.getCursor();
                long jG4 = sb.h.g(bVar.f11057b, bVar.f11058c);
                cursor.getClass();
                int i27 = (int) (jG4 >> 32);
                int i28 = (int) (jG4 & 4294967295L);
                mb.n nVarA = mb.n.a();
                mb.g gVar = cursor.f11079a;
                int iB3 = nVarA.b(i28, gVar.o(i27));
                if (iB3 != i28 || i28 != 0) {
                    jG = sb.h.g(i27, iB3);
                } else if (i27 == 0) {
                    jG = 0;
                } else {
                    int i29 = i27 - 1;
                    jG = sb.h.g(i29, gVar.o(i29).f11076c);
                }
                return codeEditor.getText().n().A((int) (jG >> 32), (int) (jG & 4294967295L));
            default:
                ue.d.e(codeEditor, "editor");
                ue.d.e(bVar, "pos");
                mb.j cursor2 = codeEditor.getCursor();
                long jG5 = sb.h.g(bVar.f11057b, bVar.f11058c);
                int i30 = (int) (jG5 >> 32);
                int i31 = (int) (jG5 & 4294967295L);
                mb.g gVar2 = cursor2.f11079a;
                int i32 = gVar2.o(i30).f11076c;
                mb.n nVarA2 = mb.n.a();
                mb.h hVarO3 = gVar2.o(i30);
                int iMax = Math.max(0, i31 - 64);
                int iMin = Math.min(hVarO3.f11076c, i31 + 65);
                Editable editable = nVarA2.f11100a;
                editable.append((CharSequence) hVarO3, iMax, iMin);
                Selection.setSelection(editable, Math.min(i31 - iMax, editable.length()));
                Selection.moveRight(editable, nVarA2.f11101b);
                int selectionStart = Selection.getSelectionStart(editable);
                editable.clear();
                Selection.removeSelection(editable);
                int i33 = selectionStart + iMax;
                if (i33 == i32 && i31 == i33) {
                    int i34 = i30 + 1;
                    jG2 = i34 == gVar2.f11064a.size() ? sb.h.g(i30, i32) : sb.h.g(i34, 0);
                } else {
                    jG2 = sb.h.g(i30, i33);
                }
                return codeEditor.getText().n().A((int) (jG2 >> 32), (int) (jG2 & 4294967295L));
        }
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        switch (this.f15037a) {
            case 14:
                int i10 = ActivityAdb.G;
                b0.f5652a.getClass();
                if (w0.m("setprop service.adb.tcp.port 5555").f5648a != 0) {
                    android.support.v4.media.session.a.B("修改失败", bVar);
                    break;
                } else {
                    w0.m("setprop sys.connect.adb.wiress 5555");
                    w0.m("setprop persist.adb.tcpip 5555");
                    w0.m("setprop persist.adb.tcp.port 5555");
                    bVar.b();
                    break;
                }
            case 15:
                int i11 = ActivityAdb.G;
                AppBean appBean = MyDb.get().getAppDao().get_appBean_name("工程模式");
                if (appBean == null) {
                    appBean = MyDb.get().getAppDao().get_appBean_name("工厂模式");
                }
                if (appBean == null) {
                    appBean = MyDb.get().getAppDao().get_appBean_name("工程");
                }
                if (appBean == null) {
                    appBean = MyDb.get().getAppDao().get_appBean_name("工程界面");
                }
                if (appBean == null) {
                    appBean = MyDb.get().getAppDao().get_appBean_name("工厂界面");
                }
                if (appBean != null) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    if (com.yunpan.appmanage.util.j.f4033a.f4037b.getLaunchIntentForPackage(appBean.pack) != null) {
                        bVar.b();
                        break;
                    }
                }
                android.support.v4.media.session.a.B("未找到工程模式", bVar);
                break;
            case 16:
                fa.j jVar = fa.h.f5683a;
                if (jVar.i()) {
                    jVar.d(true);
                } else {
                    fa.m mVar = fa.l.f5712a;
                    if (mVar.isConnected()) {
                        if (mVar.isConnected()) {
                            mVar.O("disconnect:");
                        }
                        try {
                            mVar.disconnect();
                        } catch (Exception unused) {
                        }
                        fa.h.f5683a.f5702h = "未连接";
                    }
                }
                bVar.b();
                break;
            case 18:
                int i12 = ActivityAppBatch.G;
                ArrayList arrayList = new ArrayList();
                Iterator<AppBean> it = MyDb.get().getAppDao().get_app_user().iterator();
                while (it.hasNext()) {
                    arrayList.add(new n3(it.next()));
                }
                bVar.f(arrayList);
                bVar.b();
                break;
            case 26:
                int i13 = ActivityApps.L;
                try {
                    HashMap map = new HashMap();
                    b0.f5652a.getClass();
                    for (String str : w0.q(2000L, "pm list users").f5649b) {
                        if (str.contains("UserInfo{")) {
                            map.put(p000if.a.N(str, "UserInfo{", ":", false), p000if.a.N(str, ":", ":", false));
                        }
                    }
                    if (!map.isEmpty()) {
                        com.yunpan.appmanage.util.j.f4033a.f4072u = map;
                    }
                } catch (Exception unused2) {
                }
                bVar.b();
                break;
            default:
                int i14 = ActivityApps.L;
                e6.a();
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                long jCurrentTimeMillis = System.currentTimeMillis();
                wVar.f4122h0 = jCurrentTimeMillis;
                try {
                    wVar.f4123i.l("IcoUpdateTime", Long.valueOf(jCurrentTimeMillis));
                } catch (Exception unused3) {
                }
                wVar.m();
                com.yunpan.appmanage.util.j.f4033a.k();
                bVar.b();
                break;
        }
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        switch (this.f15037a) {
            case 13:
                int i11 = ActivityAccessibility.G;
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        s1.g.Z(335, view);
                        break;
                    }
                } else {
                    s1.g.W(333, view);
                    break;
                }
                break;
            case 14:
            case 15:
            case 16:
            case 18:
            case 21:
            default:
                int i12 = ActivityAppTraffic.K;
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(332, view);
                    break;
                }
                break;
            case 17:
                int i13 = ActivityAppBatch.G;
                if (i10 != 17) {
                    if (i10 == 130 || i10 == 33) {
                        s1.g.Z(661, view);
                        break;
                    }
                } else {
                    s1.g.W(660, view);
                    break;
                }
            case 19:
                int i14 = ActivityAppBatch.G;
                if (i10 != 66) {
                    if (i10 == 130 || i10 == 33) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(333, view);
                    break;
                }
            case 20:
                int i15 = ActivityAppDetailHistoryLog.L;
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(332, view);
                    break;
                }
                break;
            case 22:
                int i16 = ActivityAppHistoryLog.K;
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(332, view);
                    break;
                }
                break;
            case 23:
                int i17 = ActivityAppInstallTime.H;
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(332, view);
                    break;
                }
                break;
            case 24:
                int i18 = ActivityAppStorage.H;
                if (i10 != 17 && i10 != 66) {
                    if (i10 == 130) {
                        s1.g.Z(333, view);
                        break;
                    }
                } else {
                    s1.g.W(332, view);
                    break;
                }
                break;
        }
        return false;
    }

    @Override // com.hjq.permissions.OnPermissionCallback
    public void onPermissionResult(List list, List list2) {
        switch (this.f15037a) {
            case 28:
                break;
            default:
                int i10 = ActivityBootStartTask.G;
                if (list.isEmpty()) {
                    a0.u("请授予【悬浮窗权限】");
                    break;
                }
                break;
        }
    }
}
