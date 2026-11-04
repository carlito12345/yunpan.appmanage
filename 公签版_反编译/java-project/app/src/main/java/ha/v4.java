package ha;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class v4 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final ua.d1 f7904g;

    /* renamed from: h, reason: collision with root package name */
    public AppCompatSeekBar f7905h;

    /* renamed from: i, reason: collision with root package name */
    public TvRecyclerView f7906i;

    /* renamed from: j, reason: collision with root package name */
    public x9.y0 f7907j;

    public v4(Activity activity, da.g gVar, ua.d1 d1Var) {
        super(activity, gVar, R.layout.dialog_code_editor_set);
        this.f7904g = d1Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context context = this.f6725b;
        SharedPreferences sharedPreferences = context.getSharedPreferences("CodeEditor", 0);
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek_size);
        this.f7905h = appCompatSeekBar;
        if (Build.VERSION.SDK_INT >= 26) {
            appCompatSeekBar.setMin(6);
        }
        this.f7905h.setMax(50);
        this.f7905h.setProgress(sharedPreferences.getInt("size", 18));
        this.f7905h.setOnSeekBarChangeListener(new u4(this, 0, sharedPreferences));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_check);
        this.f7906i = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context, 3));
        x9.y0 y0Var = new x9.y0(true);
        this.f7907j = y0Var;
        y0Var.q(new x9.x0("自动换行", sharedPreferences.getBoolean("auto_line", true)));
        this.f7907j.q(new x9.x0("显示行号", sharedPreferences.getBoolean("show_line_number", true)));
        this.f7907j.q(new x9.x0("手势缩放", sharedPreferences.getBoolean("gesture_scale", false)));
        this.f7907j.q(new x9.x0("当前行变色", sharedPreferences.getBoolean("highlight_current_line", true)));
        this.f7907j.q(new x9.x0("自动缩进", sharedPreferences.getBoolean("auto_indent", true)));
        this.f7906i.setAdapter(this.f7907j);
        this.f7907j.f2881e = new a2.g1(19, this, sharedPreferences, false);
    }
}
