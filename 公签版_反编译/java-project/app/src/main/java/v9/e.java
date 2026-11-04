package v9;

import androidx.room.s;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import ua.g5;
import ua.g8;
import ua.i1;
import ua.i6;

/* loaded from: classes.dex */
public final class e extends s1.g implements u9.c {

    /* renamed from: i, reason: collision with root package name */
    public static final ArrayList f16689i = new ArrayList(0);

    /* renamed from: j, reason: collision with root package name */
    public static final String f16690j;

    /* renamed from: k, reason: collision with root package name */
    public static final byte[] f16691k;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f16692b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f16693c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f16694d;

    /* renamed from: e, reason: collision with root package name */
    public androidx.media3.exoplayer.video.a f16695e;

    /* renamed from: f, reason: collision with root package name */
    public u9.b f16696f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f16697g;

    /* renamed from: h, reason: collision with root package name */
    public Object f16698h;

    static {
        String string = UUID.randomUUID().toString();
        f16690j = string;
        f16691k = String.format("__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET\n", string).getBytes(Charset.forName(HTTP.UTF_8));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(i iVar) {
        this((byte) 0);
        this.f16697g = 1;
        this.f16698h = iVar;
    }

    @Override // u9.c
    public final void a(OutputStream outputStream, InputStream inputStream, InputStream inputStream2) throws ExecutionException, InterruptedException, IOException {
        ArrayList arrayList = this.f16692b;
        List listSynchronizedList = this.f16693c;
        ArrayList arrayList2 = f16689i;
        boolean z = listSynchronizedList == arrayList2;
        boolean z4 = this.f16694d == arrayList2;
        ArrayList arrayList3 = null;
        if (z) {
            listSynchronizedList = this.f16696f == null ? null : new ArrayList();
        }
        List list = z4 ? u9.d.f15555b ? listSynchronizedList : null : this.f16694d;
        if (listSynchronizedList != null && listSynchronizedList == list) {
            if (l.f16716a == null) {
                l.f16716a = Collections.synchronizedCollection(Collections.emptyList()).getClass();
            }
            if (!l.f16716a.isInstance(listSynchronizedList)) {
                listSynchronizedList = Collections.synchronizedList(listSynchronizedList);
                list = listSynchronizedList;
            }
        }
        FutureTask futureTask = new FutureTask(new j(inputStream, listSynchronizedList, 1));
        FutureTask futureTask2 = new FutureTask(new j(inputStream2, list, 0));
        ExecutorService executorService = u9.d.f15554a;
        executorService.execute(futureTask);
        executorService.execute(futureTask2);
        s sVar = new s(22, (char) 0);
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((b) it.next()).r(outputStream);
            }
            outputStream.write(f16691k);
            outputStream.flush();
            int iIntValue = ((Integer) futureTask.get()).intValue();
            futureTask2.get();
            sVar.f2426b = iIntValue;
            sVar.f2427c = listSynchronizedList;
            if (!z4) {
                arrayList3 = this.f16694d;
            }
            sVar.f2428d = arrayList3;
        } catch (IOException | InterruptedException | ExecutionException unused) {
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((b) it2.next()).getClass();
        }
        u9.b bVar = this.f16696f;
        if (bVar != null) {
            androidx.media3.exoplayer.video.a aVar = this.f16695e;
            if (aVar == null) {
                bVar.n(sVar);
            } else {
                aVar.execute(new s1.f(this, 12, sVar));
            }
        }
    }

    @Override // u9.c
    public void b() {
        switch (this.f16697g) {
            case 0:
                Runnable runnable = (Runnable) this.f16698h;
                if (runnable == null) {
                    n0();
                    break;
                } else {
                    this.f16698h = null;
                    runnable.run();
                    break;
                }
            default:
                n0();
                break;
        }
    }

    @Override // s1.g
    public final void d0(androidx.media3.exoplayer.video.a aVar, i6 i6Var) {
        switch (this.f16697g) {
            case 0:
                this.f16698h = new d(this, 0);
                this.f16695e = aVar;
                this.f16696f = i6Var;
                g5 g5Var = new g5(15, this);
                i iVarB = c.b();
                if (iVarB == null) {
                    u9.d.f15554a.execute(new g8(5, g5Var));
                    break;
                } else {
                    iVarB.N(this);
                    break;
                }
            default:
                this.f16695e = aVar;
                this.f16696f = i6Var;
                ((i) this.f16698h).N(this);
                break;
        }
    }

    public final s l0() {
        switch (this.f16697g) {
            case 0:
                this.f16698h = new d(this, 1);
                i1 i1Var = new i1();
                this.f16696f = i1Var;
                this.f16695e = null;
                m0();
                s sVar = (s) i1Var.f15727b;
                if (sVar == null) {
                    break;
                }
                break;
            default:
                i1 i1Var2 = new i1();
                this.f16696f = i1Var2;
                this.f16695e = null;
                try {
                    ((i) this.f16698h).K(this);
                } catch (IOException unused) {
                }
                s sVar2 = (s) i1Var2.f15727b;
                if (sVar2 == null) {
                    break;
                }
                break;
        }
        return new s(22, (char) 0);
    }

    public void m0() {
        try {
            try {
                c.a().K(this);
            } catch (IOException unused) {
            }
        } catch (u9.a unused2) {
            n0();
        }
    }

    public final void n0() {
        Iterator it = this.f16692b.iterator();
        while (it.hasNext()) {
            ((b) it.next()).getClass();
        }
        s sVar = new s(22, (char) 0);
        u9.b bVar = this.f16696f;
        if (bVar != null) {
            androidx.media3.exoplayer.video.a aVar = this.f16695e;
            if (aVar == null) {
                bVar.n(sVar);
            } else {
                aVar.execute(new s1.f(this, 12, sVar));
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e() {
        this((byte) 0);
        this.f16697g = 0;
        this.f16693c = f16689i;
        this.f16694d = new ArrayList();
    }

    public e(byte b10) {
        this.f16692b = new ArrayList();
        this.f16693c = null;
        this.f16694d = f16689i;
    }
}
