package u1;

import android.content.Context;
import android.util.SparseArray;
import ha.db;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: f, reason: collision with root package name */
    public static p f15256f;

    /* renamed from: a, reason: collision with root package name */
    public int f15257a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f15258b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f15259c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f15260d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f15261e;

    public p(int i10) {
        this.f15261e = new float[65536];
        this.f15260d = new char[10];
        this.f15259c = new float[10];
        new SparseArray();
        this.f15257a = i10;
    }

    public static synchronized p a(Context context) {
        try {
            if (f15256f == null) {
                f15256f = new p(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f15256f;
    }

    public int b() {
        int i10;
        synchronized (this.f15261e) {
            i10 = this.f15257a;
        }
        return i10;
    }

    public float c(char c7, eb.c cVar) {
        int i10;
        if (c7 == '\t') {
            c7 = ' ';
            i10 = this.f15257a;
        } else {
            i10 = 1;
        }
        float[] fArr = (float[]) this.f15261e;
        float fMeasureText = fArr[c7];
        if (fMeasureText == 0.0f) {
            char[] cArr = (char[]) this.f15260d;
            cArr[0] = c7;
            fMeasureText = cVar.measureText(cArr, 0, 1);
            fArr[c7] = fMeasureText;
        }
        return fMeasureText * i10;
    }

    public float d(CharSequence charSequence, int i10, int i11, eb.c cVar) {
        char[] cArr;
        double dCeil;
        long jCeil = 0;
        while (i10 < i11) {
            char cCharAt = charSequence.charAt(i10);
            if (cCharAt == 55356 || cCharAt == 55357 || cCharAt == 55358) {
                int i12 = i10 + 4;
                if (i12 <= i11) {
                    float[] fArr = (float[]) this.f15259c;
                    cVar.getTextWidths(charSequence, i10, i12, fArr);
                    if (fArr[0] > 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f && fArr[3] == 0.0f) {
                        i10 += 3;
                        dCeil = Math.ceil(r3 * 1000.0f);
                        jCeil += (long) dCeil;
                    }
                }
                int iMin = Math.min(i11, i10 + 2) - i10;
                int i13 = 0;
                while (true) {
                    cArr = (char[]) this.f15260d;
                    if (i13 >= iMin) {
                        break;
                    }
                    cArr[i13] = charSequence.charAt(i10 + i13);
                    i13++;
                }
                jCeil += (long) Math.ceil(cVar.measureText(cArr, 0, iMin) * 1000.0f);
                i10 += iMin - 1;
            } else if (this.f15258b && mb.k.f(cCharAt)) {
                String strD = mb.k.d(cCharAt);
                for (int i14 = 0; i14 < strD.length(); i14++) {
                    jCeil += (long) Math.ceil(c(strD.charAt(i14), cVar) * 1000.0f);
                }
            } else {
                dCeil = Math.ceil(c(cCharAt, cVar) * 1000.0f);
                jCeil += (long) dCeil;
            }
            i10++;
        }
        return jCeil / 1000.0f;
    }

    public void e(int i10) {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.f15260d;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            o oVar = (o) it.next();
            if (oVar.f15253a.get() == null) {
                copyOnWriteArrayList.remove(oVar);
            }
        }
        synchronized (this.f15261e) {
            try {
                if (this.f15258b && this.f15257a == i10) {
                    return;
                }
                this.f15258b = true;
                this.f15257a = i10;
                Iterator it2 = ((CopyOnWriteArrayList) this.f15260d).iterator();
                while (it2.hasNext()) {
                    o oVar2 = (o) it2.next();
                    oVar2.getClass();
                    oVar2.f15254b.execute(new db(23, oVar2));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public p(Context context) {
        Executor executorH = a.h();
        this.f15259c = executorH;
        this.f15260d = new CopyOnWriteArrayList();
        this.f15261e = new Object();
        this.f15257a = 0;
        executorH.execute(new s1.f(this, context, 4));
    }
}
