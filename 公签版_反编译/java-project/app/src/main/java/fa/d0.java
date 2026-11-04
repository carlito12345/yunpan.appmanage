package fa;

import a2.g1;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import x9.w3;

/* loaded from: classes.dex */
public final /* synthetic */ class d0 implements ec.d, u1.j, t7.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5660a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5661b;

    public /* synthetic */ d0(int i10, int i11) {
        this.f5660a = i11;
        this.f5661b = i10;
    }

    @Override // u1.j
    /* renamed from: a */
    public void mo12a(Object obj) {
        switch (this.f5660a) {
            case 3:
                ((r1.k0) obj).v(this.f5661b);
                break;
            case 4:
                ((r1.k0) obj).j(this.f5661b);
                break;
            default:
                z1.b bVar = (z1.b) obj;
                bVar.getClass();
                z1.h hVar = (z1.h) bVar;
                int i10 = this.f5661b;
                if (i10 == 1) {
                    hVar.f19384v = true;
                }
                hVar.l = i10;
                break;
        }
    }

    @Override // t7.d
    public Object apply(Object obj) {
        return Integer.valueOf(this.f5661b);
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x028a  */
    @Override // ec.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g(mc.b bVar) throws InterruptedException {
        String str;
        byte[] bArrJ;
        int i10;
        ArrayList<String> arrayList;
        Object obj;
        int i11 = this.f5661b;
        switch (this.f5660a) {
            case 0:
                e0 e0Var = a.f5647b;
                if (e0Var.c()) {
                    int i12 = 0;
                    while (true) {
                        i12++;
                        z9.d dVarJ = e0Var.f5673c.J("tcpip:" + i11);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        do {
                            try {
                                bArrJ = dVarJ.J();
                                if (bArrJ != null && bArrJ.length != 0) {
                                    byteArrayOutputStream.write(bArrJ, 0, bArrJ.length);
                                    String str2 = new String(byteArrayOutputStream.toByteArray(), Charset.forName(HTTP.UTF_8));
                                    if (str2.contains("restarting")) {
                                        com.yunpan.appmanage.util.a0.v("已修改，对方ADB端口为 " + i11, false);
                                        Thread.sleep(555L);
                                        bVar.b();
                                        break;
                                    } else if (str2.contains("already in TCP mode")) {
                                        com.yunpan.appmanage.util.a0.v("连接成功，对方ADB端口为 " + i11, false);
                                        bVar.b();
                                        break;
                                    } else if (str2.contains("device does not support")) {
                                        str = "设备不支持 TCP/IP 模式";
                                    } else {
                                        if (!str2.contains("could not set")) {
                                            if (str2.contains("permissions")) {
                                                str = "无权限修改";
                                            } else if (str2.contains("unauthorized")) {
                                                str = "设备未授权";
                                            } else if (str2.contains("not found")) {
                                                str = "对方设备不支持修改";
                                            } else if (str2.contains("developer options enabled")) {
                                                str = "设备未启用开发者选项";
                                            } else if (str2.contains("unknown error")) {
                                            }
                                        }
                                        if (bArrJ == null && bArrJ.length != 0) {
                                            if (i12 == 1) {
                                                i10 = 5;
                                                i11 = 7878;
                                            } else if (i12 == 2) {
                                                i10 = 5;
                                                i11 = 7979;
                                            } else if (i12 == 3) {
                                                i10 = 5;
                                                i11 = 6789;
                                            } else if (i12 == 4) {
                                                i10 = 5;
                                                i11 = 5678;
                                            } else {
                                                i10 = 5;
                                            }
                                            if (i12 >= i10) {
                                                str = "无法修改";
                                            }
                                        }
                                    }
                                }
                            } catch (Exception unused) {
                                str = "无法打开流";
                            }
                        } while (System.currentTimeMillis() - jCurrentTimeMillis < PopupConst.DURATION_POPUP_SHORT);
                        if (bArrJ == null) {
                        }
                    }
                    bVar.d(new Exception(da.b.a(i11, "等待超时，未知是否成功，端口：")));
                    break;
                } else {
                    str = "没找到设备，请用OTG连接其它安卓设备";
                }
                android.support.v4.media.session.a.B(str, bVar);
                break;
            case 1:
                String strJ = g.b.j(g.b.j(g.b.g(g0.f5682a, new StringBuilder("SELECT * FROM fileList WHERE (path LIKE '"), "/%')"), " and isDir=0"), " and path NOT LIKE '%/.%'");
                if (i11 == 1) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    arrayList = com.yunpan.appmanage.util.j.f4033a.f4057l0;
                } else if (i11 == 2) {
                    DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                    arrayList = com.yunpan.appmanage.util.j.f4033a.f4061n0;
                } else if (i11 == 3) {
                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                    arrayList = com.yunpan.appmanage.util.j.f4033a.f4065p0;
                    if (!com.yunpan.appmanage.util.v.f4106a.B0.contains("pcm")) {
                        arrayList.add("pcm");
                    }
                } else if (i11 == 4) {
                    DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                    arrayList = com.yunpan.appmanage.util.j.f4033a.f4067q0;
                } else if (i11 == 5) {
                    DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                    arrayList = com.yunpan.appmanage.util.j.f4033a.f4063o0;
                } else if (i11 == 6) {
                    DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                    arrayList = com.yunpan.appmanage.util.j.f4033a.f4059m0;
                } else {
                    arrayList = null;
                }
                String strConcat = "";
                if (arrayList != null && !arrayList.isEmpty()) {
                    for (String str3 : arrayList) {
                        if (!str3.isEmpty()) {
                            strConcat = strConcat.isEmpty() ? g.b.A(" and (LOWER(name) LIKE '%.", str3, "'") : strConcat + " OR LOWER(name) LIKE '%." + str3 + "'";
                        }
                    }
                    if (!strConcat.isEmpty()) {
                        strConcat = strConcat.concat(")");
                    }
                }
                if (!strConcat.isEmpty()) {
                    strJ = g.b.j(strJ, strConcat);
                }
                List<FileInfo> listSqlQuery = MyDb.get().getFileInfoDao().sqlQuery(new g1(g.b.j(strJ, " ORDER BY lastModified DESC"), new Object[0]));
                if (listSqlQuery != null && !listSqlQuery.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<FileInfo> it = listSqlQuery.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(new w3(it.next()));
                    }
                    bVar.f(arrayList2);
                }
                bVar.b();
                break;
            default:
                if (i11 == 0) {
                    obj = MyDb.get().getAppDao().get_app_all();
                } else if (i11 == 1) {
                    obj = MyDb.get().getAppDao().get_app_user();
                } else if (i11 == 2) {
                    obj = MyDb.get().getAppDao().get_app_canStart();
                } else if (i11 == 3) {
                    List<AppBean> list = MyDb.get().getAppDao().get_app_canStart();
                    for (AppBean appBean : MyDb.get().getAppDao().get_app_NoCanStart()) {
                        try {
                            DecimalFormat decimalFormat7 = com.yunpan.appmanage.util.k.f4034u0;
                            ActivityInfo[] activityInfoArr = com.yunpan.appmanage.util.j.f4033a.f4037b.getPackageInfo(appBean.pack, 1).activities;
                            if (activityInfoArr != null) {
                                int length = activityInfoArr.length;
                                int i13 = 0;
                                while (true) {
                                    if (i13 < length) {
                                        ActivityInfo activityInfo = activityInfoArr[i13];
                                        if (activityInfo.exported && activityInfo.enabled) {
                                            list.add(appBean);
                                        } else {
                                            i13++;
                                        }
                                    }
                                }
                            }
                        } catch (PackageManager.NameNotFoundException e7) {
                            e7.printStackTrace();
                        }
                    }
                    obj = list;
                } else {
                    obj = MyDb.get().getAppDao().get_app_all();
                }
                bVar.f(obj);
                bVar.b();
                break;
        }
    }

    public /* synthetic */ d0(z1.a aVar, int i10, r1.l0 l0Var, r1.l0 l0Var2) {
        this.f5660a = 6;
        this.f5661b = i10;
    }
}
