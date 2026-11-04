package ua;

import android.content.Intent;
import android.media.session.MediaController;
import android.os.Build;
import android.widget.ProgressBar;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.utilacc.GroundStartAppActivity;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final /* synthetic */ class g8 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15701a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15702b;

    public /* synthetic */ g8(int i10, Object obj) {
        this.f15701a = i10;
        this.f15702b = obj;
    }

    /* JADX INFO: Infinite loop detected, blocks: 14, insns: 0 */
    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        int i10 = 1;
        Object obj = this.f15702b;
        switch (this.f15701a) {
            case 0:
                q8 q8Var = (q8) obj;
                q8Var.getClass();
                MyDb.get().getFileInfoDao().deleteDir(q8Var.B.f18365b);
                return;
            case 1:
                MyDb.get().getFileInfoDao().deleteDir(((x9.w3) obj).f18365b);
                return;
            case 2:
                ((v3.e) obj).d(false);
                return;
            case 3:
                ((v3.t) obj).s();
                return;
            case 4:
                ((v3.e0) obj).invalidate();
                return;
            case 5:
                g5 g5Var = (g5) obj;
                try {
                    v9.i iVarA = v9.c.a();
                    v9.e eVar = (v9.e) g5Var.f15694b;
                    eVar.getClass();
                    iVarA.N(eVar);
                    return;
                } catch (u9.a unused) {
                    return;
                }
            case 6:
                break;
            case 7:
                vb.k kVar = ((vb.j) obj).f16738e;
                kVar.F = false;
                ((ProgressBar) kVar.z.f347c).setVisibility(8);
                return;
            case 8:
                vb.p pVar = (vb.p) obj;
                mb.b bVar = pVar.f16760t;
                boolean zIsShowing = pVar.f16091a.isShowing();
                CodeEditor codeEditor = pVar.f16092b;
                if (!zIsShowing) {
                    if (bVar != null) {
                        codeEditor.getDiagnostics();
                        pVar.g();
                        return;
                    }
                    return;
                }
                if (pVar.r.f3845a || bVar == null) {
                    return;
                }
                codeEditor.getDiagnostics();
                pVar.g();
                return;
            case 9:
                ((vb.s) obj).f();
                return;
            case 10:
                int i11 = GroundStartAppActivity.A;
                ((GroundStartAppActivity) obj).finish();
                return;
            case 11:
                Intent intent = (Intent) obj;
                try {
                    if (Build.VERSION.SDK_INT >= 21) {
                        String str = intent.getPackage();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        do {
                            Thread.sleep(200L);
                            wa.s.c().f17710f.c();
                            if (wa.s.c().f17706b != null && !wa.s.c().f17706b.isEmpty()) {
                                Iterator it = wa.s.c().f17706b.iterator();
                                while (it.hasNext()) {
                                    MediaController mediaControllerE = t0.e.e(it.next());
                                    if (mediaControllerE.getPackageName().equals(str)) {
                                        if (mediaControllerE.getPlaybackState().getState() != 3) {
                                            mediaControllerE.getTransportControls().play();
                                            return;
                                        }
                                        return;
                                    }
                                }
                            }
                        } while (System.currentTimeMillis() - jCurrentTimeMillis < 2020);
                        return;
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
            case 12:
                y1.x xVar = (y1.x) obj;
                xVar.getClass();
                String str2 = u1.f0.f15206a;
                int iGenerateAudioSessionId = s1.g.v(xVar.f18850e).generateAudioSessionId();
                int i12 = iGenerateAudioSessionId != -1 ? iGenerateAudioSessionId : 0;
                b5.i iVar = xVar.E;
                if (((Integer) iVar.e()).intValue() != i12) {
                    Integer numValueOf = Integer.valueOf(i12);
                    iVar.f2576f = numValueOf;
                    u1.b bVar2 = new u1.b(iVar, numValueOf, i10);
                    u1.b0 b0Var = (u1.b0) iVar.f2573c;
                    if (b0Var.f15188a.getLooper().getThread().isAlive()) {
                        b0Var.d(bVar2);
                    }
                    xVar.W(1, 10, Integer.valueOf(i12));
                    xVar.W(2, 10, Integer.valueOf(i12));
                    return;
                }
                return;
            case 13:
                s4.a aVar = (s4.a) obj;
                aVar.getClass();
                while (true) {
                    try {
                        y9.d dVar = (y9.d) ((LinkedBlockingQueue) aVar.f14295d).poll(PopupConst.DURATION_POPUP, TimeUnit.MILLISECONDS);
                        if (dVar != null) {
                            aVar.l(dVar);
                        }
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
            case 14:
                ((ya.i) obj).f19082e.animate().scaleX(1.0f).scaleY(1.0f).setDuration(50L).start();
                return;
            case 15:
                ((ya.k) obj).f19097a.c();
                return;
            case 16:
                z1.e eVar2 = (z1.e) obj;
                z1.a aVarI = eVar2.I();
                eVar2.N(aVarI, 1028, new z1.c(aVarI, 12));
                eVar2.f19345f.d();
                return;
            default:
                ((CarouselLayoutManager) obj).requestLayout();
                return;
        }
        while (true) {
            v9.i iVar2 = (v9.i) obj;
            u9.c cVarL = iVar2.L(false);
            if (cVarL == null) {
                return;
            } else {
                try {
                    iVar2.J(cVarL);
                } catch (IOException unused3) {
                }
            }
        }
    }
}
