package kf;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import androidx.fragment.app.b0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.CountDownLatch;
import lf.g;
import mf.i;
import mf.k;
import mf.m;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import org.bouncycastle.crypto.hpke.HPKE;
import ta.q;
import u1.f0;

/* loaded from: classes.dex */
public final class b implements i3.d, Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10277a = 3;

    /* renamed from: b, reason: collision with root package name */
    public Object f10278b;

    /* renamed from: c, reason: collision with root package name */
    public Object f10279c;

    /* renamed from: d, reason: collision with root package name */
    public Object f10280d;

    /* renamed from: e, reason: collision with root package name */
    public Object f10281e;

    /* renamed from: f, reason: collision with root package name */
    public Object f10282f;

    public b() {
    }

    public lf.a a() {
        ByteBuffer byteBuffer = (ByteBuffer) this.f10280d;
        long jPosition = byteBuffer.position();
        int i10 = byteBuffer.getShort() & HPKE.aead_EXPORT_ONLY;
        int i11 = byteBuffer.getShort() & HPKE.aead_EXPORT_ONLY;
        int i12 = (int) (byteBuffer.getInt() & 4294967295L);
        if (i10 != 0) {
            if (i10 == 1) {
                g gVar = new g(i11, i12);
                gVar.f10722d = com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                gVar.f10723e = byteBuffer.getInt() & 4294967295L;
                gVar.f10724f = byteBuffer.getInt() & 4294967295L;
                byteBuffer.getInt();
                s1.g.P(byteBuffer, jPosition + i11);
                return gVar;
            }
            if (i10 == 2) {
                i iVar = new i(i11, i12);
                iVar.f11219d = (int) (byteBuffer.getInt() & 4294967295L);
                s1.g.P(byteBuffer, jPosition + i11);
                return iVar;
            }
            switch (i10) {
                case 512:
                    mf.c cVar = new mf.c(i11, i12);
                    cVar.f11200d = (int) (byteBuffer.getInt() & 4294967295L);
                    Charset charset = qf.b.f13189a;
                    StringBuilder sb2 = new StringBuilder(128);
                    for (int i13 = 0; i13 < 128; i13++) {
                        sb2.append(byteBuffer.getChar());
                    }
                    String string = sb2.toString();
                    int i14 = 0;
                    while (true) {
                        if (i14 < string.length()) {
                            if (string.charAt(i14) == 0) {
                                string.substring(0, i14);
                            } else {
                                i14++;
                            }
                        }
                    }
                    cVar.f11201e = com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                    com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                    cVar.f11202f = com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                    com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                    s1.g.P(byteBuffer, jPosition + i11);
                    return cVar;
                case 513:
                    k kVar = new k(i11, i12);
                    kVar.f11228d = (byte) (byteBuffer.get() & 255);
                    byteBuffer.get();
                    byteBuffer.getShort();
                    kVar.f11229e = com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                    kVar.f11230f = com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                    long jPosition2 = byteBuffer.position();
                    mf.d dVar = new mf.d();
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    byte[] bArr = new byte[2];
                    byteBuffer.get(bArr);
                    dVar.f11203a = new String(bArr).replace("\u0000", "");
                    byte[] bArr2 = new byte[2];
                    byteBuffer.get(bArr2);
                    dVar.f11204b = new String(bArr2).replace("\u0000", "");
                    byteBuffer.get();
                    byteBuffer.get();
                    dVar.f11205c = (short) (65535 & byteBuffer.getShort());
                    byteBuffer.position(byteBuffer.position() + ((int) ((4294967295L & byteBuffer.getInt()) - (byteBuffer.position() - jPosition2))));
                    kVar.f11231g = dVar;
                    s1.g.P(byteBuffer, jPosition + i11);
                    return kVar;
                case 514:
                    m mVar = new m(i11, i12);
                    mVar.f11235d = (byte) (byteBuffer.get() & 255);
                    byteBuffer.get();
                    byteBuffer.getShort();
                    mVar.f11236e = com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                    s1.g.P(byteBuffer, jPosition + i11);
                    return mVar;
                case 515:
                    mf.a aVar = new mf.a(i11, i12);
                    aVar.f11199d = com.bumptech.glide.c.r(byteBuffer.getInt() & 4294967295L);
                    s1.g.P(byteBuffer, jPosition + i11);
                    return aVar;
                case 516:
                    break;
                default:
                    throw new b0(g.b.e(i10, new StringBuilder("Unexpected chunk Type: 0x")), 6);
            }
        }
        s1.g.P(byteBuffer, jPosition + i11);
        return new mf.b(i11, i12);
    }

    @Override // i3.d
    public int d(long j10) {
        long[] jArr = (long[]) this.f10279c;
        int iA = f0.a(jArr, j10, false);
        if (iA < jArr.length) {
            return iA;
        }
        return -1;
    }

    @Override // i3.d
    public long e(int i10) {
        return ((long[]) this.f10279c)[i10];
    }

    @Override // i3.d
    public List h(long j10) {
        o3.c cVar = (o3.c) this.f10278b;
        ArrayList arrayList = new ArrayList();
        cVar.g(j10, cVar.f11531h, arrayList);
        TreeMap treeMap = new TreeMap();
        cVar.i(j10, false, cVar.f11531h, treeMap);
        HashMap map = (HashMap) this.f10281e;
        cVar.h(j10, (Map) this.f10280d, map, cVar.f11531h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            String str = (String) ((HashMap) this.f10282f).get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                o3.e eVar = (o3.e) map.get(pair.first);
                eVar.getClass();
                arrayList2.add(new t1.b(null, null, null, bitmapDecodeByteArray, eVar.f11547c, 0, eVar.f11549e, eVar.f11546b, 0, Integer.MIN_VALUE, -3.4028235E38f, eVar.f11550f, eVar.f11551g, false, -16777216, eVar.f11554j, 0.0f, 0));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            o3.e eVar2 = (o3.e) map.get(entry.getKey());
            eVar2.getClass();
            t1.a aVar = (t1.a) entry.getValue();
            CharSequence charSequence = aVar.f14641a;
            charSequence.getClass();
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            for (o3.a aVar2 : (o3.a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), o3.a.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar2), spannableStringBuilder.getSpanEnd(aVar2), (CharSequence) "");
            }
            for (int i10 = 0; i10 < spannableStringBuilder.length(); i10++) {
                if (spannableStringBuilder.charAt(i10) == ' ') {
                    int i11 = i10 + 1;
                    int i12 = i11;
                    while (i12 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i12) == ' ') {
                        i12++;
                    }
                    int i13 = i12 - i11;
                    if (i13 > 0) {
                        spannableStringBuilder.delete(i10, i13 + i10);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            for (int i14 = 0; i14 < spannableStringBuilder.length() - 1; i14++) {
                if (spannableStringBuilder.charAt(i14) == '\n') {
                    int i15 = i14 + 1;
                    if (spannableStringBuilder.charAt(i15) == ' ') {
                        spannableStringBuilder.delete(i15, i14 + 2);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            for (int i16 = 0; i16 < spannableStringBuilder.length() - 1; i16++) {
                if (spannableStringBuilder.charAt(i16) == ' ') {
                    int i17 = i16 + 1;
                    if (spannableStringBuilder.charAt(i17) == '\n') {
                        spannableStringBuilder.delete(i16, i17);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            aVar.f14645e = eVar2.f11547c;
            aVar.f14646f = eVar2.f11548d;
            aVar.f14647g = eVar2.f11549e;
            aVar.f14648h = eVar2.f11546b;
            aVar.l = eVar2.f11550f;
            aVar.f14651k = eVar2.f11553i;
            aVar.f14650j = eVar2.f11552h;
            aVar.f14655p = eVar2.f11554j;
            arrayList2.add(aVar.a());
        }
        return arrayList2;
    }

    @Override // i3.d
    public int j() {
        return ((long[]) this.f10279c).length;
    }

    @Override // okhttp3.Callback
    public void onFailure(Call call, IOException iOException) {
        synchronized (((ArrayList) this.f10278b)) {
            ((ArrayList) this.f10278b).add(iOException);
        }
        ((CountDownLatch) this.f10279c).countDown();
    }

    @Override // okhttp3.Callback
    public void onResponse(Call call, Response response) {
        ArrayList arrayList = (ArrayList) this.f10281e;
        ArrayList arrayList2 = (ArrayList) this.f10278b;
        ((o9.a) this.f10282f).getClass();
        o9.a.b(response, (String) this.f10280d, arrayList, arrayList2);
        ((CountDownLatch) this.f10279c).countDown();
    }

    public String toString() {
        switch (this.f10277a) {
            case 3:
                StringBuilder sb2 = new StringBuilder("Attribute{name='");
                sb2.append((String) this.f10279c);
                sb2.append("', namespace='");
                return g.b.l((String) this.f10278b, "'}", sb2);
            case 4:
                StringBuilder sb3 = new StringBuilder();
                sb3.append("FontRequest {mProviderAuthority: " + ((String) this.f10278b) + ", mProviderPackage: " + ((String) this.f10279c) + ", mQuery: " + ((String) this.f10280d) + ", mCertificates:");
                int i10 = 0;
                while (true) {
                    List list = (List) this.f10281e;
                    if (i10 >= list.size()) {
                        sb3.append("}mCertificatesArray: 0");
                        return sb3.toString();
                    }
                    sb3.append(" [");
                    List list2 = (List) list.get(i10);
                    for (int i11 = 0; i11 < list2.size(); i11++) {
                        sb3.append(" \"");
                        sb3.append(Base64.encodeToString((byte[]) list2.get(i11), 0));
                        sb3.append("\"");
                    }
                    sb3.append(" ]");
                    i10++;
                }
            default:
                return super.toString();
        }
    }

    public b(o3.c cVar, HashMap map, HashMap map2, HashMap map3) {
        this.f10278b = cVar;
        this.f10281e = map2;
        this.f10282f = map3;
        this.f10280d = Collections.unmodifiableMap(map);
        TreeSet treeSet = new TreeSet();
        int i10 = 0;
        cVar.d(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i10] = ((Long) it.next()).longValue();
            i10++;
        }
        this.f10279c = jArr;
    }

    public b(ByteBuffer byteBuffer) {
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        this.f10278b = byteOrder;
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        this.f10280d = byteBufferDuplicate;
        byteBufferDuplicate.order(byteOrder);
        this.f10282f = new HashSet();
    }

    public b(String str, String str2, String str3, List list) {
        str.getClass();
        this.f10278b = str;
        str2.getClass();
        this.f10279c = str2;
        this.f10280d = str3;
        list.getClass();
        this.f10281e = list;
        this.f10282f = q.l(str, "-", str2, "-", str3);
    }

    public b(o9.a aVar, ArrayList arrayList, CountDownLatch countDownLatch, String str, ArrayList arrayList2) {
        this.f10282f = aVar;
        this.f10278b = arrayList;
        this.f10279c = countDownLatch;
        this.f10280d = str;
        this.f10281e = arrayList2;
    }
}
