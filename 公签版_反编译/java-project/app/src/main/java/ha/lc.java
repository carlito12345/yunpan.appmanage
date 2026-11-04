package ha;

import android.app.Activity;
import android.os.Bundle;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.ShortcutCmdBean;
import com.yunpan.appmanage.db.MyDb;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class lc extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f7372g;

    /* renamed from: h, reason: collision with root package name */
    public final ua.g5 f7373h;

    public lc(Activity activity, da.g gVar, ArrayList arrayList, ua.g5 g5Var) {
        super(activity, gVar, R.layout.dialog_cmd_list);
        this.f7372g = arrayList;
        this.f7373h = g5Var;
    }

    public final void a() {
        String strD = fa.g0.f5682a.d();
        if (strD.isEmpty()) {
            strD = this.f6725b.getFilesDir().getParentFile().getPath();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(strD + "/快捷指令.txt");
            try {
                Iterator it = this.f7372g.iterator();
                while (it.hasNext()) {
                    ShortcutCmdBean shortcutCmdBean = (ShortcutCmdBean) it.next();
                    fileOutputStream.write((shortcutCmdBean.name + "：" + shortcutCmdBean.cmd + SignParameters.NEW_LINE).getBytes());
                }
                fileOutputStream.write("\n\n// 支持 [包名]、[剪切板] 两种便捷的方式\n// 如果命令中有[包名]，则会弹出应用选择\n// 如果命令中有[剪切板]，则自动把[剪切板]替换为剪切板中的文本\n\n// 支持行注释，以//开头即时注释\n\n每行一条命令，支持三种格式(如下)：\n备注：命令\n备注----命令\n备注:命令".getBytes());
                fileOutputStream.close();
            } catch (Throwable th2) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (Exception e7) {
            g.b.s(e7, new StringBuilder("保存失败:"));
        }
        if (!com.yunpan.appmanage.util.a0.g(strD + "/快捷指令.txt") || fa.g0.f5682a.d().isEmpty()) {
            return;
        }
        MyDb.get().addFile_thread(strD + "/快捷指令.txt");
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        findViewById(R.id.v_title).setOnClickListener(new g9(12, this));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.w4 w4Var = new x9.w4();
        w4Var.E(this.f7372g);
        tvRecyclerView.setAdapter(w4Var);
        w4Var.f2881e = new p7(16, this);
    }
}
