package mf;

import ha.j2;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f11217b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f11218a = new HashMap();

    static {
        HashMap map = new HashMap();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(qf.c.class.getResourceAsStream("/r_styles.ini")));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        f11217b = map;
                        return;
                    } else {
                        String[] strArrSplit = line.trim().split("=");
                        if (strArrSplit.length == 2) {
                            map.put(Integer.valueOf(strArrSplit[1].trim()), strArrSplit[0].trim());
                        }
                    }
                } finally {
                }
            }
        } catch (IOException e7) {
            throw new RuntimeException(e7);
        }
    }

    public final List a(long j10) {
        ab.a aVar;
        short s8 = (short) (255 & (j10 >> 16));
        int i10 = (int) (j10 & 65535);
        f fVar = (f) this.f11218a.get(Short.valueOf((short) ((j10 >> 24) & 255)));
        if (fVar == null) {
            return Collections.emptyList();
        }
        l lVar = (l) fVar.f11212d.get(Short.valueOf(s8));
        List<j> list = (List) fVar.f11213e.get(Short.valueOf(s8));
        if (lVar == null || list == null) {
            return Collections.emptyList();
        }
        if (i10 >= lVar.f11232a.length) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (j jVar : list) {
            long[] jArr = jVar.f11225f;
            a9.a aVar2 = null;
            if (i10 < jArr.length) {
                long j11 = jArr[i10];
                if (j11 != 4294967295L) {
                    s1.g.P(jVar.f11224e, j11);
                    long jPosition = jVar.f11224e.position();
                    aVar2 = new a9.a(6, (char) 0);
                    aVar2.f471b = s1.g.R(jVar.f11224e);
                    aVar2.f472c = s1.g.R(jVar.f11224e);
                    aVar2.f473d = jVar.f11223d.f10503a[jVar.f11224e.getInt()];
                    if ((aVar2.f472c & 1) != 0) {
                        e eVar = new e(aVar2);
                        eVar.f11206f = s1.g.Q(jVar.f11224e);
                        eVar.f11207g = s1.g.Q(jVar.f11224e);
                        s1.g.P(jVar.f11224e, jPosition + aVar2.f471b);
                        j2[] j2VarArr = new j2[(int) eVar.f11207g];
                        for (int i11 = 0; i11 < eVar.f11207g; i11++) {
                            j2 j2Var = new j2(22);
                            s1.g.Q(jVar.f11224e);
                            qf.b.b(jVar.f11224e, jVar.f11226g);
                            j2VarArr[i11] = j2Var;
                        }
                        eVar.f11208h = j2VarArr;
                        aVar2 = eVar;
                    } else {
                        s1.g.P(jVar.f11224e, jPosition + aVar2.f471b);
                        aVar2.f474e = qf.b.b(jVar.f11224e, jVar.f11226g);
                    }
                }
            }
            if (aVar2 != null && (aVar = (ab.a) aVar2.f474e) != null && (!(aVar instanceof lf.e) || j10 != (((lf.e) aVar).f567b & 4294967295L))) {
                arrayList.add(new g(lVar, jVar, aVar2));
            }
        }
        return arrayList;
    }
}
