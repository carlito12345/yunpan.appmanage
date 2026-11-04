package ta;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.concurrent.ArrayBlockingQueue;
import wa.t;
import wa.w;

/* loaded from: classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14876a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f14877b;

    public /* synthetic */ n(o oVar, int i10) {
        this.f14876a = i10;
        this.f14877b = oVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        r3.close();
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        o oVar = this.f14877b;
        int i10 = 1;
        switch (this.f14876a) {
            case 0:
                oVar.getClass();
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(oVar.f14886i, Charset.forName(HTTP.UTF_8)));
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        boolean z = false;
                        while (true) {
                            int i11 = 0;
                            while (true) {
                                if (!oVar.f14879b) {
                                    if (oVar.f14888k.isInterrupted()) {
                                        if (t.f17728a.f17754u) {
                                            w.b("日志消息接收线程-中断");
                                            break;
                                        }
                                    } else if (!oVar.f14888k.isAlive()) {
                                        if (t.f17728a.f17754u) {
                                            w.b("日志消息接收线程-死亡");
                                            break;
                                        }
                                    } else {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            i11++;
                                            if (i11 >= 2) {
                                                oVar.f14880c = true;
                                            } else {
                                                Thread.sleep(100L);
                                            }
                                        } else {
                                            if (!z) {
                                                if (line.contains("beginning of system")) {
                                                    z = true;
                                                } else if (System.currentTimeMillis() - jCurrentTimeMillis >= 1000) {
                                                    z = true;
                                                }
                                            }
                                            if (!line.isEmpty()) {
                                                ArrayBlockingQueue arrayBlockingQueue = oVar.l;
                                                if (!arrayBlockingQueue.offer(line)) {
                                                    arrayBlockingQueue.offer(line);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th3) {
                            try {
                                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                            } catch (Exception unused) {
                            }
                        }
                        throw th2;
                    }
                } catch (Exception e7) {
                    if (oVar.f14889m) {
                        if (t.f17728a.f17754u) {
                            w.b("重新创建shell，主动退出");
                        }
                        oVar.f14889m = false;
                        return;
                    } else if (!oVar.f14879b) {
                        if (t.f17728a.f17754u) {
                            w.b("日志消息接收线程-报错：" + e7.getMessage());
                        }
                        e7.printStackTrace();
                        oVar.f14880c = true;
                    }
                }
                if (t.f17728a.f17754u) {
                    w.b("日志消息接收线程-终止");
                    return;
                }
                return;
            default:
                q4.a.c();
                oVar.f14882e.postDelayed(new n(oVar, i10), 60000L);
                return;
        }
    }
}
