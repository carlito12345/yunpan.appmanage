package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class y3 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public String f8078g;

    /* renamed from: h, reason: collision with root package name */
    public z7.s f8079h;

    /* renamed from: i, reason: collision with root package name */
    public final HashMap f8080i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f8081j;

    /* renamed from: k, reason: collision with root package name */
    public RecyclerView f8082k;
    public x9.v0 l;

    public y3(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_backup);
        this.f8078g = "";
        this.f8080i = new HashMap();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        HashMap map = this.f8080i;
        map.put("管家设置", "config.json");
        map.put("自动化设置", "AutoInit.json");
        map.put("文件下载", "urlList.json");
        map.put("网络存储", "wpList.json");
        map.put("开机任务", "开机任务.json");
        map.put("按键映射", "KeyMapAcc.json");
        map.put("日志映射", "KeyMapLogcatSuper.json");
        map.put("事件映射", "KeyMapEvent.json");
        map.put("悬浮按钮", "FloatButton.json");
        map.put("侧边手势", "Sidebar.json");
        map.put("日产按键映射", "KeyMapNissan.json");
        map.put("捷途车机映射", "KeyMapJieT.json");
        map.put("广汽车机映射", "KeyMapAiOnY.json");
        map.put("星愿车机映射", "MapFleOS18.json");
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list);
        this.f8082k = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(1, false));
        x9.v0 v0Var = new x9.v0();
        this.l = v0Var;
        this.f8082k.setAdapter(v0Var);
        this.l.f2881e = new w3(this, 0);
        TextView textView = (TextView) findViewById(R.id.v_btn);
        this.f8081j = textView;
        textView.setText(this.f8078g.isEmpty() ? "确定导出" : "确定导入");
        this.f8081j.setOnClickListener(new com.google.android.material.datepicker.l(this, 10));
        new mc.c(0, new w3(this, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new x3(this, 1));
    }
}
