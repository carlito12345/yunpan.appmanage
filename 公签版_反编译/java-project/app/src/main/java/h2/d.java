package h2;

import a2.g1;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbInterface;
import android.os.Build;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import r1.r0;
import u7.a0;
import u7.e0;
import u7.g0;
import u7.y0;
import ua.x7;
import x9.w3;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements k, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f6334a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6335b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6336c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6337d;

    public /* synthetic */ d(n nVar, i iVar, boolean z, int[] iArr) {
        this.f6335b = nVar;
        this.f6336c = iVar;
        this.f6334a = z;
        this.f6337d = iArr;
    }

    @Override // h2.k
    public y0 d(int i10, r0 r0Var, int[] iArr) {
        n nVar = (n) this.f6335b;
        nVar.getClass();
        i iVar = (i) this.f6336c;
        c cVar = new c(nVar, iVar);
        int i11 = ((int[]) this.f6337d)[i10];
        e0 e0Var = g0.f15471b;
        u7.q.c(4, "initialCapacity");
        r0 r0Var2 = r0Var;
        Object[] objArrCopyOf = new Object[4];
        int i12 = 0;
        int i13 = 0;
        while (i12 < r0Var2.f13553a) {
            e eVar = new e(i10, r0Var, i12, iVar, iArr[i12], this.f6334a, cVar, i11);
            int i14 = i13 + 1;
            int iF = a0.f(objArrCopyOf.length, i14);
            if (iF > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[i13] = eVar;
            i12++;
            r0Var2 = r0Var;
            i13 = i14;
        }
        return g0.i(i13, objArrCopyOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004e A[PHI: r5
  0x004e: PHI (r5v1 java.lang.String) = (r5v0 java.lang.String), (r5v16 java.lang.String), (r5v0 java.lang.String) binds: [B:11:0x0040, B:20:0x0059, B:15:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) {
        String string;
        StringBuilder sbB;
        String str;
        Iterator it = ((ArrayList) this.f6335b).iterator();
        String strJ = "";
        String strL = "";
        while (it.hasNext()) {
            w3 w3Var = (w3) it.next();
            if (strL.isEmpty()) {
                sbB = new StringBuilder("SELECT * FROM fileList WHERE (path LIKE '");
                str = w3Var.f18365b;
            } else {
                sbB = d0.f.b(strL, " or path LIKE '");
                str = w3Var.f18365b;
            }
            strL = g.b.l(str, "/%'", sbB);
        }
        String strJ2 = g.b.j(strL, ")");
        boolean z = this.f6334a;
        String str2 = " and isDir=0";
        if (z) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            boolean z4 = kVar.U;
            if (z4 && !kVar.V) {
                strJ2 = g.b.j(strJ2, str2);
            } else if (!z4 && kVar.V) {
                str2 = " and isDir=1";
                strJ2 = g.b.j(strJ2, str2);
            }
        }
        w wVar = v.f4106a;
        if (!wVar.f4145u0) {
            strJ2 = g.b.j(strJ2, " and path NOT LIKE '%/.%'");
        }
        PrintStream printStream = System.out;
        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
        boolean z10 = kVar2.K;
        printStream.getClass();
        if (kVar2.K && !wVar.f4147v0) {
            strJ2 = Build.VERSION.SDK_INT >= 30 ? g.b.l(kVar2.P, "/%'", d0.f.b(strJ2, " and path NOT LIKE '%/")) : g.b.l(kVar2.P, "/data/%'", d0.f.b(strJ2, " and path NOT LIKE '%/"));
        }
        String str3 = (String) this.f6336c;
        if (str3.equals("两天内")) {
            strJ = ta.q.j(System.currentTimeMillis() - 172800000, " and lastModified >= ");
        } else if (str3.equals(">10M")) {
            strJ = " and size >= 10485760";
        } else if (str3.equals(">100M")) {
            strJ = " and size >= 104857600";
        } else if (!z) {
            ArrayList<String> arrayList = str3.equals("安装包") ? kVar2.f4057l0 : str3.equals("图片") ? kVar2.f4061n0 : str3.equals("视频") ? kVar2.f4065p0 : str3.equals("音乐") ? kVar2.f4067q0 : str3.equals("文档") ? kVar2.f4063o0 : str3.equals("压缩包") ? kVar2.f4059m0 : null;
            if (arrayList != null && !arrayList.isEmpty()) {
                for (String str4 : arrayList) {
                    if (!str4.isEmpty()) {
                        strJ = strJ.isEmpty() ? g.b.A(" and (LOWER(name) LIKE '%.", str4, "'") : strJ + " OR LOWER(name) LIKE '%." + str4 + "'";
                    }
                }
                if (!strJ.isEmpty()) {
                    strJ = strJ.concat(")");
                }
                if (v.f4106a.f4149w0 && str3.equals("图片")) {
                    strJ = g.b.j(strJ, " and size >= 81920");
                }
            }
        } else if (!str3.isEmpty()) {
            strJ = str3.contains("%") ? g.b.A(" and name LIKE '", str3, "'") : g.b.A(" and name LIKE '%", str3, "%'");
        }
        if (!strJ.isEmpty()) {
            strJ2 = g.b.j(strJ2, strJ);
        }
        if (z) {
            StringBuilder sbB2 = d0.f.b(strJ2, " ORDER BY CASE WHEN isDir = 1 THEN 0 ELSE 1 END, ");
            sbB2.append(v.f4106a.f4143t0 ? "name" : "lastModified DESC");
            string = sbB2.toString();
        } else {
            StringBuilder sbB3 = d0.f.b(strJ2, " ORDER BY ");
            sbB3.append(v.f4106a.f4143t0 ? "name" : "lastModified DESC");
            string = sbB3.toString();
        }
        List<FileInfo> listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new g1(string, new Object[0]));
        if (listSqlQuery != null && !listSqlQuery.isEmpty()) {
            Iterator<FileInfo> it2 = listSqlQuery.iterator();
            while (it2.hasNext()) {
                ((ArrayList) this.f6337d).add(new w3(it2.next()));
            }
        }
        bVar.b();
    }

    public /* synthetic */ d(ArrayList arrayList, boolean z, String str, ArrayList arrayList2) {
        this.f6335b = arrayList;
        this.f6334a = z;
        this.f6336c = str;
        this.f6337d = arrayList2;
    }

    public /* synthetic */ d(x7 x7Var, UsbDevice usbDevice, UsbInterface usbInterface, boolean z) {
        this.f6335b = x7Var;
        this.f6336c = usbDevice;
        this.f6337d = usbInterface;
        this.f6334a = z;
    }
}
