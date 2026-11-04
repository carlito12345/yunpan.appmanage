package xh;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StreamCorruptedException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes3.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final CopyOnWriteArrayList f18496c = new CopyOnWriteArrayList();

    /* renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f18497d = new ConcurrentHashMap(512, 0.75f, 2);

    /* renamed from: a, reason: collision with root package name */
    public List f18498a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentSkipListMap f18499b = new ConcurrentSkipListMap();

    static {
        if (k.f18513a.getAndSet(true)) {
            throw new IllegalStateException("Already initialized");
        }
        AtomicReference atomicReference = k.f18514b;
        j jVar = new j();
        while (!atomicReference.compareAndSet(null, jVar) && atomicReference.get() == null) {
        }
        ((k) atomicReference.get()).a();
    }

    public d(InputStream inputStream) {
        new CopyOnWriteArraySet();
        try {
            b(inputStream);
        } catch (Exception e7) {
            throw new i("Unable to load TZDB time-zone rules", e7);
        }
    }

    public static h a(String str) {
        h hVar;
        p000if.a.t0(str, "zoneId");
        ConcurrentHashMap concurrentHashMap = f18497d;
        d dVar = (d) concurrentHashMap.get(str);
        if (dVar == null) {
            if (concurrentHashMap.isEmpty()) {
                throw new i("No time-zone data files registered");
            }
            throw new i("Unknown time-zone ID: ".concat(str));
        }
        c cVar = (c) dVar.f18499b.lastEntry().getValue();
        int iBinarySearch = Arrays.binarySearch(cVar.f18493b, str);
        if (iBinarySearch < 0) {
            hVar = null;
        } else {
            try {
                short s8 = cVar.f18494c[iBinarySearch];
                AtomicReferenceArray atomicReferenceArray = cVar.f18495d;
                Object objB = atomicReferenceArray.get(s8);
                if (objB instanceof byte[]) {
                    DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream((byte[]) objB));
                    objB = a.b(dataInputStream.readByte(), dataInputStream);
                    atomicReferenceArray.set(s8, objB);
                }
                hVar = (h) objB;
            } catch (Exception e7) {
                StringBuilder sbD = da.b.d("Invalid binary time-zone data: TZDB:", str, ", version: ");
                sbD.append(cVar.f18492a);
                throw new i(sbD.toString(), e7);
            }
        }
        if (hVar != null) {
            return hVar;
        }
        throw new i("Unknown time-zone ID: ".concat(str));
    }

    public static void c(d dVar) {
        p000if.a.t0(dVar, "provider");
        Iterator it = new HashSet(dVar.f18498a).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            p000if.a.t0(str, "zoneId");
            if (((d) f18497d.putIfAbsent(str, dVar)) != null) {
                throw new i("Unable to register zone as one already registered with that ID: " + str + ", currently loading from provider: " + dVar);
            }
        }
        f18496c.add(dVar);
    }

    public final void b(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        if (dataInputStream.readByte() != 1) {
            throw new StreamCorruptedException("File format not recognised");
        }
        if (!"TZDB".equals(dataInputStream.readUTF())) {
            throw new StreamCorruptedException("File format not recognised");
        }
        int i10 = dataInputStream.readShort();
        String[] strArr = new String[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            strArr[i11] = dataInputStream.readUTF();
        }
        int i12 = dataInputStream.readShort();
        String[] strArr2 = new String[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            strArr2[i13] = dataInputStream.readUTF();
        }
        this.f18498a = Arrays.asList(strArr2);
        int i14 = dataInputStream.readShort();
        Object[] objArr = new Object[i14];
        for (int i15 = 0; i15 < i14; i15++) {
            byte[] bArr = new byte[dataInputStream.readShort()];
            dataInputStream.readFully(bArr);
            objArr[i15] = bArr;
        }
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(objArr);
        HashSet hashSet = new HashSet(i10);
        for (int i16 = 0; i16 < i10; i16++) {
            int i17 = dataInputStream.readShort();
            String[] strArr3 = new String[i17];
            short[] sArr = new short[i17];
            for (int i18 = 0; i18 < i17; i18++) {
                strArr3[i18] = strArr2[dataInputStream.readShort()];
                sArr[i18] = dataInputStream.readShort();
            }
            hashSet.add(new c(strArr[i16], strArr3, sArr, atomicReferenceArray));
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            c cVar2 = (c) this.f18499b.putIfAbsent(cVar.f18492a, cVar);
            if (cVar2 != null) {
                String str = cVar2.f18492a;
                String str2 = cVar.f18492a;
                if (!str.equals(str2)) {
                    throw new i(da.b.c("Data already loaded for TZDB time-zone rules version: ", str2));
                }
            }
        }
    }

    public final String toString() {
        return "TZDB";
    }
}
