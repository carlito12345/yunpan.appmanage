package ua;

import android.content.ContextWrapper;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.WindowInsetsAnimation;
import com.yunpan.appmanage.bean.FileCopyBean;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.SevenZipException;

/* loaded from: classes.dex */
public final class i8 implements ha.x4, com.yunpan.appmanage.util.o, w1.g, vc.b, ISequentialOutStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15740a;

    /* renamed from: b, reason: collision with root package name */
    public Object f15741b;

    /* renamed from: c, reason: collision with root package name */
    public Object f15742c;

    public /* synthetic */ i8(int i10, Object obj, Object obj2, boolean z) {
        this.f15740a = i10;
        this.f15741b = obj;
        this.f15742c = obj2;
    }

    public static void l(i8 i8Var, y1.b bVar) {
        i8Var.getClass();
        for (Map.Entry entry : new HashMap((HashMap) i8Var.f15741b).entrySet()) {
            if (entry.getKey() != null) {
                throw new ClassCastException();
            }
            List list = (List) entry.getValue();
            if (!p(bVar, list).equals(p((y1.b) i8Var.f15742c, list))) {
                throw null;
            }
        }
        i8Var.f15742c = bVar;
    }

    public static int m(byte[] bArr) {
        int length = bArr.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            byte b10 = bArr[i11];
            i10 = b10 >= 0 ? i10 + b10 : b10 + 256 + i10;
        }
        return i10;
    }

    public static y1.b p(y1.b bVar, List list) {
        bVar.getClass();
        Map map = bVar.f18582a;
        HashMap map2 = new HashMap(map);
        HashSet hashSet = new HashSet(list);
        for (String str : map.keySet()) {
            if (!hashSet.contains(str)) {
                map2.remove(str);
            }
        }
        return new y1.b(map2);
    }

    @Override // ha.x4
    public void a() {
        FileCopyBean fileCopyBean = (FileCopyBean) this.f15741b;
        for (int size = fileCopyBean.files.size() - 1; size >= 0; size--) {
            if (fileCopyBean.files.get(size).f18373j.equals("跳过")) {
                fileCopyBean.files.remove(size);
            }
        }
        i9 i9Var = (i9) this.f15742c;
        i9Var.getClass();
        ha.s5 s5Var = new ha.s5(i9Var.f4530f, i9Var.f4529e);
        s5Var.show();
        s5Var.f7734h.setText("分析中");
        w.r3 r3Var = new w.r3();
        r3Var.f17243b = new i8(i9Var, 2, s5Var);
        ((ExecutorService) r3Var.f17244c).execute(new a2.c0(r3Var, 15, fileCopyBean));
    }

    @Override // vc.b
    public vc.o b() {
        return ((xc.a) this.f15741b).f18436g;
    }

    @Override // vc.b
    public vc.b d() {
        return ((xc.a) this.f15741b).d();
    }

    @Override // vc.b
    public vc.f e() {
        return ((xc.a) this.f15741b).f18431b;
    }

    @Override // com.yunpan.appmanage.util.o
    public void f(ja.b bVar) {
        ((ha.s5) this.f15741b).a(bVar);
    }

    @Override // vc.b
    public vd.a g() {
        return (vd.j) this.f15742c;
    }

    @Override // vc.b
    public a0.h h() {
        return ((xc.a) this.f15741b).f18435f;
    }

    @Override // vc.b
    public vc.k i() {
        return ((xc.a) this.f15741b).f18434e;
    }

    @Override // com.yunpan.appmanage.util.o
    public void j(com.yunpan.appmanage.util.q qVar, ja.b bVar) {
        ((ha.s5) this.f15741b).dismiss();
        boolean z = bVar.l;
        i9 i9Var = (i9) this.f15742c;
        if (z) {
            i9Var.f15755w.requestFocus();
            i9Var.n((x9.w3) g.b.d(i9Var.f15756x, 1), true);
        } else {
            if (!qVar.f4094a.isEmpty()) {
                new ha.r5(i9Var.f4530f, i9Var.f4529e, qVar.f4094a).show();
            }
            i9Var.f15755w.requestFocus();
            i9Var.n((x9.w3) g.b.d(i9Var.f15756x, 1), true);
        }
    }

    @Override // vc.b
    public vc.h k() {
        return ((xc.a) this.f15741b).f18432c;
    }

    public void n() {
        this.f15741b = null;
        this.f15742c = null;
    }

    public boolean o(int i10) {
        return ((r1.n) this.f15741b).f13479a.get(i10);
    }

    public ArrayList q(ArrayList arrayList) {
        String str;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            x9.w3 w3Var = (x9.w3) it.next();
            synchronized (arrayList2) {
                try {
                    if (w3Var.f18377o == null) {
                        if (w3Var.f18366c) {
                            str = w3Var.f18364a + "/";
                        } else {
                            str = w3Var.f18364a;
                        }
                        w3Var.f18377o = str;
                    }
                    arrayList2.add(w3Var);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (w3Var.f18366c) {
                ((AtomicInteger) this.f15742c).incrementAndGet();
                int length = new File(w3Var.f18365b).getParent().length();
                if (length != 1) {
                    length++;
                }
                ((ExecutorService) this.f15741b).execute(new za.h(this, w3Var, arrayList2, length));
            }
        }
        while (((AtomicInteger) this.f15742c).get() != 0) {
            try {
                Thread.sleep(200L);
            } catch (Exception unused) {
            }
        }
        return arrayList2;
    }

    public synchronized List r(String str) {
        List arrayList;
        if (!((ArrayList) this.f15741b).contains(str)) {
            ((ArrayList) this.f15741b).add(str);
        }
        arrayList = (List) ((HashMap) this.f15742c).get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            ((HashMap) this.f15742c).put(str, arrayList);
        }
        return arrayList;
    }

    public synchronized ArrayList s(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = ((ArrayList) this.f15741b).iterator();
        while (it.hasNext()) {
            List<v5.c> list = (List) ((HashMap) this.f15742c).get((String) it.next());
            if (list != null) {
                for (v5.c cVar : list) {
                    if ((cVar.f16629a.isAssignableFrom(cls) && cls2.isAssignableFrom(cVar.f16630b)) && !arrayList.contains(cVar.f16630b)) {
                        arrayList.add(cVar.f16630b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized Map t() {
        try {
            if (((Map) this.f15742c) == null) {
                this.f15742c = Collections.unmodifiableMap(new HashMap((HashMap) this.f15741b));
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (Map) this.f15742c;
    }

    public String toString() {
        switch (this.f15740a) {
            case 8:
                return "Bounds{lower=" + ((p0.c) this.f15741b) + " upper=" + ((p0.c) this.f15742c) + "}";
            default:
                return super.toString();
        }
    }

    public void u(Class cls, Class cls2, Class cls3, List list) {
        synchronized (((a0.e) this.f15742c)) {
            ((a0.e) this.f15742c).put(new a6.o(cls, cls2, cls3), list);
        }
    }

    @Override // net.sf.sevenzipjbinding.ISequentialOutStream
    public int write(byte[] bArr) throws IOException {
        FileOutputStream fileOutputStream = (FileOutputStream) this.f15741b;
        try {
            fileOutputStream.write(bArr, 0, bArr.length);
            fileOutputStream.flush();
            return bArr.length;
        } catch (Exception e7) {
            throw new SevenZipException("写入文件失败: " + ((File) this.f15742c).getPath(), e7);
        }
    }

    public /* synthetic */ i8(Object obj, int i10, Object obj2) {
        this.f15740a = i10;
        this.f15742c = obj;
        this.f15741b = obj2;
    }

    public i8(int i10) {
        this.f15740a = i10;
        switch (i10) {
            case 4:
                this.f15741b = new ArrayList();
                this.f15742c = new HashMap();
                break;
            case 6:
                this.f15741b = new HashMap();
                break;
            case 7:
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
                this.f15741b = byteArrayOutputStream;
                this.f15742c = new DataOutputStream(byteArrayOutputStream);
                break;
            case 10:
                this.f15741b = new HashMap();
                this.f15742c = y1.b.f18581b;
                break;
            case 11:
                break;
            case 16:
                this.f15741b = Executors.newFixedThreadPool(6);
                this.f15742c = new AtomicInteger(0);
                break;
            default:
                this.f15741b = new AtomicReference();
                this.f15742c = new a0.e();
                break;
        }
    }

    public i8(int i10, int i11, int i12, byte[] bArr) {
        this.f15740a = 14;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        this.f15741b = byteBufferOrder;
        byteBufferOrder.putInt(0, i10);
        ((ByteBuffer) this.f15741b).putInt(4, i11);
        ((ByteBuffer) this.f15741b).putInt(8, i12);
        ((ByteBuffer) this.f15741b).putInt(12, bArr == null ? 0 : bArr.length);
        ((ByteBuffer) this.f15741b).putInt(16, bArr != null ? m(bArr) : 0);
        ((ByteBuffer) this.f15741b).putInt(20, i10 ^ (-1));
        this.f15742c = bArr;
    }

    @Override // ha.x4
    public void c() {
    }

    public i8(ContextWrapper contextWrapper) {
        this.f15740a = 5;
        a0.h hVar = new a0.h(8);
        this.f15741b = contextWrapper.getApplicationContext();
        this.f15742c = hVar;
    }

    public i8(r1.n nVar, SparseArray sparseArray) {
        this.f15740a = 12;
        this.f15741b = nVar;
        SparseBooleanArray sparseBooleanArray = nVar.f13479a;
        SparseArray sparseArray2 = new SparseArray(sparseBooleanArray.size());
        for (int i10 = 0; i10 < sparseBooleanArray.size(); i10++) {
            int iA = nVar.a(i10);
            z1.a aVar = (z1.a) sparseArray.get(iA);
            aVar.getClass();
            sparseArray2.append(iA, aVar);
        }
        this.f15742c = sparseArray2;
    }

    public i8(WindowInsetsAnimation.Bounds bounds) {
        this.f15740a = 8;
        this.f15741b = p0.c.c(bounds.getLowerBound());
        this.f15742c = p0.c.c(bounds.getUpperBound());
    }
}
