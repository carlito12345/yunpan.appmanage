package ha;

import android.app.Activity;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class x0 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final ea.e f8019g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f8020h;

    /* renamed from: i, reason: collision with root package name */
    public AppCompatSeekBar f8021i;

    /* renamed from: j, reason: collision with root package name */
    public AppCompatSeekBar f8022j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8023k;
    public KeyMapSelectBean l;

    /* renamed from: m, reason: collision with root package name */
    public KeyMapSelectBean f8024m;

    /* renamed from: n, reason: collision with root package name */
    public KeyMapSelectBean f8025n;

    /* renamed from: p, reason: collision with root package name */
    public TvRecyclerView f8026p;

    /* renamed from: q, reason: collision with root package name */
    public x9.d0 f8027q;
    public AudioManager r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f8028s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f8029t;

    /* renamed from: v, reason: collision with root package name */
    public final ArrayList f8030v;

    /* renamed from: w, reason: collision with root package name */
    public ConstraintLayout f8031w;

    public x0(Activity activity, Context context, ea.e eVar) {
        super(activity, context, R.layout.dialog_add_play_movies);
        this.f8023k = false;
        this.f8030v = new ArrayList();
        this.f8019g = eVar;
    }

    public static void a(x0 x0Var) {
        if (x0Var.f8027q.b() == 0) {
            com.yunpan.appmanage.util.a0.u("请选择文件");
            return;
        }
        StringBuilder sb2 = new StringBuilder("播放视频：");
        z7.o oVar = new z7.o();
        for (int i10 = 0; i10 < x0Var.f8027q.b(); i10++) {
            sb2.append(((x9.w3) x0Var.f8027q.t(i10)).f18364a);
            sb2.append("; ");
            oVar.j(((x9.w3) x0Var.f8027q.t(i10)).f18365b);
        }
        z7.s sVar = new z7.s();
        sVar.m("name", sb2.toString());
        sVar.l("systemVolumeType", Integer.valueOf(x0Var.f8025n.gn_type));
        sVar.l("systemVolume", Integer.valueOf(x0Var.f8022j.getProgress()));
        sVar.k("isMute", Boolean.valueOf(x0Var.f8023k));
        sVar.l("usage", Integer.valueOf(x0Var.l.gn_type));
        sVar.l("AudioDeviceId", Integer.valueOf(x0Var.f8024m.gn_type));
        sVar.l("volumeGain", Integer.valueOf(x0Var.f8021i.getProgress() * 100));
        sVar.j("files", oVar);
        x0Var.f8019g.k(sVar);
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context context = this.f6725b;
        this.r = (AudioManager) context.getSystemService("audio");
        findViewById(R.id.v_btn_mute).setOnClickListener(new c6.c(this, 3, (ImageView) findViewById(R.id.v_btn_mute_ico)));
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            for (int i10 = 0; i10 < 101; i10++) {
                try {
                    new AudioAttributes.Builder().setUsage(i10);
                    arrayList.add(new KeyMapSelectBean(da.b.a(i10, "通道"), i10));
                } catch (Exception unused) {
                }
            }
        } else {
            for (int i11 = 0; i11 < 16; i11++) {
                arrayList.add(new KeyMapSelectBean(da.b.a(i11, "通道"), i11));
            }
        }
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 21) {
            this.l = new KeyMapSelectBean("通道1", 1);
        } else {
            this.l = new KeyMapSelectBean("通道3", 3);
        }
        TextView textView = (TextView) findViewById(R.id.v_type_td_name);
        textView.setText(this.l.gn_name);
        findViewById(R.id.v_type_td).setOnClickListener(new u0(this, arrayList, textView, 1));
        ArrayList arrayList2 = new ArrayList();
        KeyMapSelectBean keyMapSelectBean = new KeyMapSelectBean("不修改系统音量", -1);
        this.f8025n = keyMapSelectBean;
        arrayList2.add(keyMapSelectBean);
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(通话音量)", 0));
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(系统音量)", 1));
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(铃声音量)", 2));
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(媒体音量)", 3));
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(闹钟音量)", 4));
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(通知音量)", 5));
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(MF音量)", 8));
        if (i12 >= 26) {
            g.b.u("播放时修改音量(ACC音量)", 10, arrayList2);
        }
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(6)", 6));
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(7)", 7));
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(9)", 9));
        arrayList2.add(new KeyMapSelectBean("播放时修改音量(11)", 11));
        if (i12 >= 26 && com.yunpan.appmanage.carsdk.j0.f3843a.f3848d != null) {
            for (int i13 = 0; i13 < 32; i13++) {
                try {
                    if (com.yunpan.appmanage.carsdk.j0.f3843a.d(i13 - 100) > 0) {
                        arrayList2.add(new KeyMapSelectBean("播放时修改音量(Car通道0)", i13 + 100));
                    }
                } catch (Exception unused2) {
                }
            }
        }
        TextView textView2 = (TextView) findViewById(R.id.v_type_vol_name);
        textView2.setText(this.f8025n.gn_name);
        findViewById(R.id.v_type_vol).setOnClickListener(new u0(this, arrayList2, textView2, 2));
        KeyMapSelectBean keyMapSelectBean2 = new KeyMapSelectBean("默认", -1);
        this.f8024m = keyMapSelectBean2;
        ArrayList arrayList3 = this.f8030v;
        arrayList3.add(keyMapSelectBean2);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                for (AudioDeviceInfo audioDeviceInfo : this.r.getDevices(2)) {
                    arrayList3.add(new KeyMapSelectBean(((Object) audioDeviceInfo.getProductName()) + "(" + audioDeviceInfo.getId() + ")", audioDeviceInfo.getId()));
                }
            } catch (Exception unused3) {
            }
        }
        this.f8031w = (ConstraintLayout) findViewById(R.id.v_speaker);
        TextView textView3 = (TextView) findViewById(R.id.v_speaker_name);
        textView3.setText(this.f8024m.gn_name);
        this.f8031w.setOnClickListener(new c6.c(this, 2, textView3));
        this.f8029t = (TextView) findViewById(R.id.v_vol);
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek);
        this.f8022j = appCompatSeekBar;
        appCompatSeekBar.setMax(100);
        this.f8022j.setProgress(80);
        this.f8022j.setOnSeekBarChangeListener(new w0(this, 0));
        this.f8028s = (TextView) findViewById(R.id.v_gain);
        AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) findViewById(R.id.v_seek_gain);
        this.f8021i = appCompatSeekBar2;
        appCompatSeekBar2.setMax(80);
        this.f8021i.setProgress(0);
        this.f8021i.setOnSeekBarChangeListener(new w0(this, 1));
        TextView textView4 = (TextView) findViewById(R.id.v_btn_xz);
        textView4.requestFocus();
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add("选择视频文件");
        arrayList4.add("选择普通文件");
        textView4.setOnClickListener(new u0(this, textView4, arrayList4));
        final int i14 = 0;
        findViewById(R.id.v_btn_yes).setOnClickListener(new View.OnClickListener(this) { // from class: ha.v0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ x0 f7894b;

            {
                this.f7894b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i14) {
                    case 0:
                        x0.a(this.f7894b);
                        break;
                    default:
                        x0 x0Var = this.f7894b;
                        if (x0Var.f8027q.b() == 0) {
                            com.yunpan.appmanage.util.a0.u("请选择文件");
                            break;
                        } else {
                            z7.o oVar = new z7.o();
                            for (int i15 = 0; i15 < x0Var.f8027q.b(); i15++) {
                                oVar.j(((x9.w3) x0Var.f8027q.t(i15)).f18365b);
                            }
                            z7.s sVar = new z7.s();
                            sVar.l("systemVolumeType", Integer.valueOf(x0Var.f8025n.gn_type));
                            sVar.l("systemVolume", Integer.valueOf(x0Var.f8022j.getProgress()));
                            sVar.k("isMute", Boolean.valueOf(x0Var.f8023k));
                            sVar.l("usage", Integer.valueOf(x0Var.l.gn_type));
                            sVar.l("AudioDeviceId", Integer.valueOf(x0Var.f8024m.gn_type));
                            sVar.l("volumeGain", Integer.valueOf(x0Var.f8021i.getProgress() * 100));
                            sVar.j("files", oVar);
                            new ya.l(sVar);
                            break;
                        }
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f8026p = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.d0 d0Var = new x9.d0();
        this.f8027q = d0Var;
        this.f8026p.setAdapter(d0Var);
        this.f8027q.f2881e = new s0(this);
        TextView textView5 = (TextView) findViewById(R.id.v_btn_bf);
        this.f8020h = textView5;
        final int i15 = 1;
        textView5.setOnClickListener(new View.OnClickListener(this) { // from class: ha.v0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ x0 f7894b;

            {
                this.f7894b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i15) {
                    case 0:
                        x0.a(this.f7894b);
                        break;
                    default:
                        x0 x0Var = this.f7894b;
                        if (x0Var.f8027q.b() == 0) {
                            com.yunpan.appmanage.util.a0.u("请选择文件");
                            break;
                        } else {
                            z7.o oVar = new z7.o();
                            for (int i152 = 0; i152 < x0Var.f8027q.b(); i152++) {
                                oVar.j(((x9.w3) x0Var.f8027q.t(i152)).f18365b);
                            }
                            z7.s sVar = new z7.s();
                            sVar.l("systemVolumeType", Integer.valueOf(x0Var.f8025n.gn_type));
                            sVar.l("systemVolume", Integer.valueOf(x0Var.f8022j.getProgress()));
                            sVar.k("isMute", Boolean.valueOf(x0Var.f8023k));
                            sVar.l("usage", Integer.valueOf(x0Var.l.gn_type));
                            sVar.l("AudioDeviceId", Integer.valueOf(x0Var.f8024m.gn_type));
                            sVar.l("volumeGain", Integer.valueOf(x0Var.f8021i.getProgress() * 100));
                            sVar.j("files", oVar);
                            new ya.l(sVar);
                            break;
                        }
                }
            }
        });
    }
}
