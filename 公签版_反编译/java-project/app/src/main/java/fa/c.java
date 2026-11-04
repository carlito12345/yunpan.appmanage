package fa;

import android.os.SystemClock;
import com.yunpan.appmanage.base.AppStart;
import java.io.File;
import java.util.concurrent.ExecutorService;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5653a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f5654b;

    public /* synthetic */ c(e eVar, int i10) {
        this.f5653a = i10;
        this.f5654b = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0105  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws InterruptedException {
        v9.i iVar;
        long jCurrentTimeMillis;
        String string;
        switch (this.f5653a) {
            case 0:
                e eVar = this.f5654b;
                eVar.getClass();
                try {
                    String str = com.yunpan.appmanage.util.v.f4106a.f4110b0;
                    if (!new File("/system/bin/su").exists()) {
                        if (!new File("/system/xbin/su").exists()) {
                            try {
                                if (!new File("/system/bin/tclsu").exists()) {
                                    if (new File("/system/xbin/tclsu").exists()) {
                                        str = "tclsu";
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                    if (com.yunpan.appmanage.util.a0.g("/system/bin/su_guanjia")) {
                        str = "su_guanjia";
                    }
                    if (str.trim().isEmpty()) {
                        str = "su";
                    }
                    ExecutorService executorService = u9.d.f15554a;
                    v9.c.a();
                    if (!str.trim().equals("su")) {
                        u9.d.r(str).l0();
                    }
                    b bVar = a.f5646a;
                    bVar.g();
                    androidx.room.s sVarL0 = u9.d.r(Name.MARK).l0();
                    sVarL0.k().addAll(sVarL0.j());
                    if (sVarL0.k().toString().contains("uid=0(root")) {
                        if (!bVar.f()) {
                            u9.d.r(b.a(AppStart.f3772h)).e0(null);
                        }
                        eVar.f5662a = true;
                    } else {
                        eVar.i();
                    }
                    if (!eVar.f5662a && !bVar.f()) {
                        eVar.j();
                        break;
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
                break;
            case 1:
                e eVar2 = this.f5654b;
                eVar2.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime > 100000) {
                    eVar2.f5665d = true;
                    break;
                } else {
                    try {
                        jCurrentTimeMillis = System.currentTimeMillis() - jElapsedRealtime;
                    } catch (Exception unused2) {
                        eVar2.f5665d = true;
                    }
                    do {
                        v9.i iVar2 = eVar2.f5664c;
                        if (iVar2 == null || iVar2.f16702c < 0) {
                            v9.a aVar = new v9.a();
                            aVar.f16681b = 1;
                            aVar.f16680a = 5L;
                            eVar2.f5664c = aVar.a();
                            v9.i iVar3 = eVar2.f5664c;
                            iVar3.getClass();
                            v9.e eVar3 = new v9.e(iVar3);
                            eVar3.f16692b.add(new v9.b(new String[]{"dumpsys window | grep -E 'mCurrentFocu|mSystemBooted'"}));
                            string = eVar3.l0().k().toString();
                            if (string.contains("mCurrentFocus=null") && !string.contains("mSystemBooted=false")) {
                                eVar2.f5665d = true;
                                if (wa.t.f17728a.f17753t) {
                                    wa.w.c("系统加载完成");
                                    break;
                                }
                            } else {
                                Thread.sleep(666L);
                            }
                        } else {
                            try {
                                iVar2.f16703d.exitValue();
                                iVar2.M();
                                v9.a aVar2 = new v9.a();
                                aVar2.f16681b = 1;
                                aVar2.f16680a = 5L;
                                eVar2.f5664c = aVar2.a();
                            } catch (IllegalThreadStateException unused3) {
                            }
                            v9.i iVar32 = eVar2.f5664c;
                            iVar32.getClass();
                            v9.e eVar32 = new v9.e(iVar32);
                            eVar32.f16692b.add(new v9.b(new String[]{"dumpsys window | grep -E 'mCurrentFocu|mSystemBooted'"}));
                            string = eVar32.l0().k().toString();
                            if (string.contains("mCurrentFocus=null")) {
                            }
                            Thread.sleep(666L);
                        }
                        iVar = eVar2.f5664c;
                        if (iVar == null) {
                            q4.a.e(iVar);
                            eVar2.f5664c = null;
                            break;
                        }
                    } while (System.currentTimeMillis() - jCurrentTimeMillis < 100000);
                    eVar2.f5665d = true;
                    if (wa.t.f17728a.f17753t) {
                        wa.w.c("系统加载超时");
                    }
                    iVar = eVar2.f5664c;
                    if (iVar == null) {
                    }
                }
                break;
            default:
                e eVar4 = this.f5654b;
                eVar4.getClass();
                if (System.currentTimeMillis() - eVar4.f5670i > 2000) {
                    try {
                        eVar4.f5669h.d();
                        break;
                    } catch (Exception unused4) {
                        return;
                    }
                }
                break;
        }
    }
}
