package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FileAttributeBean;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.db.MyDb;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class q5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7612g;

    /* renamed from: h, reason: collision with root package name */
    public x9.p3 f7613h;

    /* renamed from: i, reason: collision with root package name */
    public final x9.w3 f7614i;

    /* renamed from: j, reason: collision with root package name */
    public final FileAttributeBean f7615j;

    public q5(Activity activity, Context context, x9.w3 w3Var, FileAttributeBean fileAttributeBean) {
        super(activity, context, R.layout.dialog_file_attribute);
        this.f7614i = w3Var;
        this.f7615j = fileAttributeBean;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        boolean zCanWrite;
        super.onCreate(bundle);
        x9.p3 p3Var = new x9.p3();
        this.f7613h = p3Var;
        x9.w3 w3Var = this.f7614i;
        p3Var.q(new NameValueBean("名称：", w3Var.f18364a));
        this.f7613h.q(new NameValueBean("路径：", w3Var.f18365b));
        if (w3Var.f18369f.isEmpty()) {
            this.f7613h.q(new NameValueBean("类型：", w3Var.f18366c ? "文件夹" : "文件"));
        } else {
            this.f7613h.q(new NameValueBean("类型：", "字符链接"));
            this.f7613h.q(new NameValueBean("链接：", w3Var.f18369f));
        }
        if (w3Var.f18366c) {
            boolean zStartsWith = w3Var.f18365b.startsWith(fa.g0.f5682a.d());
            if (!zStartsWith) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                if (!kVar.f4074w && !kVar.f4073v.isEmpty()) {
                    Iterator it = kVar.f4073v.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (w3Var.f18365b.startsWith((String) it.next())) {
                            zStartsWith = true;
                            break;
                        }
                    }
                }
            }
            if (zStartsWith) {
                long dirDirCount = MyDb.get().getFileInfoDao().getDirDirCount(w3Var.f18365b + "/");
                long dirFileCount = MyDb.get().getFileInfoDao().getDirFileCount(w3Var.f18365b + "/");
                w3Var.f18367d = MyDb.get().getFileInfoDao().getDirSize(w3Var.f18365b + "/");
                this.f7613h.q(new NameValueBean("包含：", android.support.v4.media.session.a.t(android.support.v4.media.session.a.w(dirDirCount, "文件夹 ", " 个   文件 "), dirFileCount, " 个")));
                x9.p3 p3Var2 = this.f7613h;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(p000if.a.D0(w3Var.f18367d));
                sb2.append(" (");
                p3Var2.q(new NameValueBean("大小：", android.support.v4.media.session.a.t(sb2, w3Var.f18367d, ")")));
            }
        } else {
            x9.p3 p3Var3 = this.f7613h;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(p000if.a.D0(w3Var.f18367d));
            sb3.append(" (");
            p3Var3.q(new NameValueBean("大小：", android.support.v4.media.session.a.t(sb3, w3Var.f18367d, ")")));
        }
        this.f7613h.q(new NameValueBean("最后更改：", w3Var.f18371h));
        x9.p3 p3Var4 = this.f7613h;
        StringBuilder sb4 = new StringBuilder();
        FileAttributeBean fileAttributeBean = this.f7615j;
        sb4.append(fileAttributeBean.filePermissions);
        sb4.append(" (");
        p3Var4.q(new NameValueBean("权限：", android.support.v4.media.session.a.s(sb4, fileAttributeBean.filePermission, ")")));
        this.f7613h.q(new NameValueBean("所有者：", fileAttributeBean.fileOwner));
        this.f7613h.q(new NameValueBean("所属组：", fileAttributeBean.fileGroup));
        this.f7613h.q(new NameValueBean("可读：", com.yunpan.appmanage.util.a0.b(w3Var.f18365b) ? "是" : "否"));
        x9.p3 p3Var5 = this.f7613h;
        try {
            zCanWrite = new File(w3Var.f18365b).canWrite();
        } catch (SecurityException | Exception unused) {
            zCanWrite = false;
        }
        p3Var5.q(new NameValueBean("可写：", zCanWrite ? "是" : "否"));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7612g = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        this.f7612g.setAdapter(this.f7613h);
        this.f7612g.requestFocus();
        this.f7612g.setSelection(0);
        this.f7613h.f2881e = new a1.d(20, this);
    }
}
