package ua;

import android.view.View;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityTextFlyOS18;
import j$.nio.charset.StandardCharsets;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class j7 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityTextFlyOS18 f15772a;

    @Override // ec.d
    public void g(mc.b bVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        int i10 = ActivityTextFlyOS18.I;
        ActivityTextFlyOS18 activityTextFlyOS18 = this.f15772a;
        activityTextFlyOS18.getClass();
        File file = new File(g.b.g(fa.g0.f5682a, new StringBuilder(), "/Download/"), "flyme1.8.txt");
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), StandardCharsets.UTF_8));
            for (int i11 = 0; i11 < activityTextFlyOS18.F.b(); i11++) {
                try {
                    NameValueBean nameValueBean = (NameValueBean) activityTextFlyOS18.F.t(i11);
                    bufferedWriter.write(nameValueBean.name);
                    bufferedWriter.write("  ");
                    bufferedWriter.write(nameValueBean.value);
                    bufferedWriter.newLine();
                } catch (Throwable th2) {
                    try {
                        bufferedWriter.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            }
            bufferedWriter.flush();
            com.yunpan.appmanage.util.a0.w("保存成功");
            MyDb.get().lambda$addFile_thread$1(file.getPath());
            bufferedWriter.close();
        } catch (IOException unused2) {
            com.yunpan.appmanage.util.a0.u("保存失败");
        }
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = ActivityTextFlyOS18.I;
        ActivityTextFlyOS18 activityTextFlyOS18 = this.f15772a;
        if (i10 == 0) {
            activityTextFlyOS18.finish();
            return;
        }
        if (i10 != 1) {
            if (i10 == 2) {
                activityTextFlyOS18.F.E(new ArrayList());
                return;
            }
            if (i10 == 3) {
                activityTextFlyOS18.y();
                return;
            } else if (i10 == 4) {
                activityTextFlyOS18.y();
                return;
            } else {
                activityTextFlyOS18.getClass();
                return;
            }
        }
        activityTextFlyOS18.F.E(new ArrayList());
        try {
            ArrayList arrayList = new ArrayList();
            activityTextFlyOS18.G.getClass();
            ArrayList arrayListF = com.yunpan.appmanage.carsdk.x.f();
            Iterator it = arrayListF.iterator();
            int i12 = 0;
            int i13 = 0;
            while (it.hasNext()) {
                com.yunpan.appmanage.carsdk.w wVar = (com.yunpan.appmanage.carsdk.w) it.next();
                if (wVar.f3898d == 0) {
                    i12++;
                }
                int i14 = wVar.f3896b;
                if (i14 == 2 || i14 == 3) {
                    i13++;
                }
                String strValueOf = String.valueOf(wVar.f3895a);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("access=");
                sb2.append(i14);
                sb2.append(", areaIds=");
                List list = wVar.f3897c;
                sb2.append(list != null ? list.toString() : "null");
                sb2.append(", changeMode=");
                sb2.append(wVar.f3898d);
                sb2.append(", areaType=");
                sb2.append(wVar.f3899e);
                arrayList.add(new NameValueBean(strValueOf, sb2.toString()));
            }
            activityTextFlyOS18.F.E(arrayList);
            com.yunpan.appmanage.util.a0.w("全部属性：" + arrayListF.size() + "\n可监听属性：" + i12 + "\n可写属性：" + i13);
        } catch (Exception unused) {
            com.yunpan.appmanage.util.a0.u("读取属性失败");
        }
    }
}
