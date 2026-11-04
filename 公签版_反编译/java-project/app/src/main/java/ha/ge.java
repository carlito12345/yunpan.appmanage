package ha;

import android.app.Activity;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.speech.tts.TextToSpeech;
import android.speech.tts.Voice;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.service.StartService;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ge extends a4 {
    public AudioManager A;
    public TextToSpeech B;
    public List C;
    public ArrayList D;
    public int E;
    public ArrayList F;
    public int G;
    public TextView H;
    public TextView I;
    public AudioFocusRequest K;
    public be L;

    /* renamed from: g, reason: collision with root package name */
    public f8 f7110g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7111h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7112i;

    /* renamed from: j, reason: collision with root package name */
    public EditText f7113j;

    /* renamed from: k, reason: collision with root package name */
    public ConstraintLayout f7114k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public ConstraintLayout f7115m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f7116n;

    /* renamed from: p, reason: collision with root package name */
    public ConstraintLayout f7117p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f7118q;
    public AppCompatSeekBar r;

    /* renamed from: s, reason: collision with root package name */
    public AppCompatSeekBar f7119s;

    /* renamed from: t, reason: collision with root package name */
    public AppCompatSeekBar f7120t;

    /* renamed from: v, reason: collision with root package name */
    public KeyMapSelectBean f7121v;

    /* renamed from: w, reason: collision with root package name */
    public KeyMapSelectBean f7122w;

    /* renamed from: x, reason: collision with root package name */
    public KeyMapSelectBean f7123x;

    /* renamed from: y, reason: collision with root package name */
    public int f7124y;
    public int z;

    public ge(Activity activity, Context context, f8 f8Var) {
        super(activity, context, R.layout.dialog_tts_add);
        this.f7124y = -1;
        this.z = -1;
        this.E = -1;
        this.G = -1;
        this.f7110g = f8Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11, types: [android.media.AudioManager$OnAudioFocusChangeListener, ha.be] */
    public static void a(final ge geVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int language;
        if (geVar.B == null) {
            com.yunpan.appmanage.util.a0.u("当前tts引擎不可用");
            return;
        }
        if (geVar.f7112i.getText().toString().startsWith("停止")) {
            if (geVar.B.isSpeaking()) {
                geVar.B.stop();
            }
            geVar.b();
            geVar.f7112i.setText("试听播放");
            return;
        }
        String string = geVar.f7113j.getText().toString();
        if (string.isEmpty()) {
            com.yunpan.appmanage.util.a0.u("请输入要播放的文本");
            return;
        }
        geVar.B.setSpeechRate(geVar.r.getProgress() / 50.0f);
        int i10 = geVar.E;
        if (i10 != -1 && geVar.B.setVoice((Voice) geVar.D.get(i10)) == -1) {
            com.yunpan.appmanage.util.a0.t("设置引擎声音失败");
            return;
        }
        int i11 = geVar.G;
        if (i11 != -1 && ((language = geVar.B.setLanguage((Locale) geVar.F.get(i11))) == -1 || language == -2)) {
            com.yunpan.appmanage.util.a0.t("引擎不支持此语言");
            return;
        }
        try {
            geVar.B.setAudioAttributes(new AudioAttributes.Builder().setUsage(geVar.f7121v.gn_type).setContentType(1).build());
            geVar.f7112i.setText("停止试听");
            int i12 = geVar.f7122w.gn_type;
            if (i12 != -1 && i12 <= 50) {
                if (Build.VERSION.SDK_INT >= 26) {
                    AudioFocusRequest.Builder builder = new AudioFocusRequest.Builder(i12);
                    builder.setAudioAttributes(new AudioAttributes.Builder().setUsage(12).build());
                    final int i13 = 0;
                    builder.setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener(geVar) { // from class: ha.be

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ ge f6826b;

                        {
                            this.f6826b = geVar;
                        }

                        @Override // android.media.AudioManager.OnAudioFocusChangeListener
                        public final void onAudioFocusChange(int i14) {
                            switch (i13) {
                                case 0:
                                    ge geVar2 = this.f6826b;
                                    geVar2.getClass();
                                    if (i14 == -3 || i14 == -2 || i14 == -1) {
                                        geVar2.b();
                                        break;
                                    }
                                    break;
                                default:
                                    ge geVar3 = this.f6826b;
                                    geVar3.getClass();
                                    if (i14 == -3 || i14 == -2 || i14 == -1) {
                                        geVar3.b();
                                        break;
                                    }
                                    break;
                            }
                        }
                    });
                    AudioFocusRequest audioFocusRequestBuild = builder.build();
                    geVar.K = audioFocusRequestBuild;
                    if (geVar.A.requestAudioFocus(audioFocusRequestBuild) != 1) {
                        geVar.K = null;
                    }
                } else {
                    final int i14 = 1;
                    ?? r5 = new AudioManager.OnAudioFocusChangeListener(geVar) { // from class: ha.be

                        /* renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ ge f6826b;

                        {
                            this.f6826b = geVar;
                        }

                        @Override // android.media.AudioManager.OnAudioFocusChangeListener
                        public final void onAudioFocusChange(int i142) {
                            switch (i14) {
                                case 0:
                                    ge geVar2 = this.f6826b;
                                    geVar2.getClass();
                                    if (i142 == -3 || i142 == -2 || i142 == -1) {
                                        geVar2.b();
                                        break;
                                    }
                                    break;
                                default:
                                    ge geVar3 = this.f6826b;
                                    geVar3.getClass();
                                    if (i142 == -3 || i142 == -2 || i142 == -1) {
                                        geVar3.b();
                                        break;
                                    }
                                    break;
                            }
                        }
                    };
                    geVar.L = r5;
                    if (geVar.A.requestAudioFocus(r5, 5, i12) != 1) {
                        geVar.L = null;
                    }
                }
            }
            int i15 = geVar.f7123x.gn_type;
            if (i15 >= 0) {
                geVar.f7124y = i15;
                if (i15 >= 100) {
                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                    geVar.z = k0Var.f(i15 - 100);
                    k0Var.h(geVar.f7123x.gn_type - 100, geVar.f7119s.getProgress());
                } else {
                    geVar.z = geVar.A.getStreamVolume(i15);
                    geVar.A.setStreamVolume(geVar.f7123x.gn_type, geVar.f7119s.getProgress(), 0);
                }
            }
            geVar.B.setOnUtteranceProgressListener(new fe(0, geVar));
            if (geVar.B.speak(string, 0, null, "tts_" + System.currentTimeMillis()) == -1) {
                com.yunpan.appmanage.util.a0.t("播放失败");
                geVar.d();
            }
        } catch (Exception unused) {
            com.yunpan.appmanage.util.a0.u("警告：系统不支持此通道");
        }
    }

    public final void b() {
        if (Build.VERSION.SDK_INT < 26) {
            if (this.L != null) {
                this.A.abandonAudioFocus(null);
                this.L = null;
                return;
            }
            return;
        }
        AudioFocusRequest audioFocusRequest = this.K;
        if (audioFocusRequest != null) {
            this.A.abandonAudioFocusRequest(audioFocusRequest);
            this.K = null;
        }
    }

    public final void c(int i10) {
        TextToSpeech textToSpeech = this.B;
        if (textToSpeech != null) {
            textToSpeech.shutdown();
            this.B = null;
        }
        ArrayList arrayList = this.D;
        if (arrayList != null) {
            arrayList.clear();
        }
        ArrayList arrayList2 = this.F;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        this.E = -1;
        this.G = -1;
        this.f7116n.setText("无");
        this.f7118q.setText("无");
        this.l.setText(((TextToSpeech.EngineInfo) this.C.get(i10)).label);
        try {
            this.B = new TextToSpeech(this.f6724a, new TextToSpeech.OnInitListener() { // from class: ha.yd
                @Override // android.speech.tts.TextToSpeech.OnInitListener
                public final void onInit(int i11) {
                    ge geVar = this.f8109a;
                    geVar.getClass();
                    if (i11 != 0) {
                        com.yunpan.appmanage.util.a0.u("此TTS引擎初始化失败，不可用");
                        return;
                    }
                    ArrayList arrayList3 = new ArrayList(geVar.B.getVoices());
                    geVar.D = arrayList3;
                    if (arrayList3.isEmpty()) {
                        com.yunpan.appmanage.util.a0.s("此TTS引擎没有可用的语音", false);
                        return;
                    }
                    geVar.E = 0;
                    geVar.f7116n.setText(g7.d.n(geVar.D.get(0)).getName());
                    geVar.F = new ArrayList(geVar.B.getAvailableLanguages());
                    int i12 = 0;
                    while (i12 < 3) {
                        String str = i12 == 0 ? "简体" : i12 == 1 ? "中文" : "中国";
                        int i13 = 0;
                        while (true) {
                            if (i13 >= geVar.F.size()) {
                                break;
                            }
                            if (((Locale) geVar.F.get(i13)).getDisplayName().contains(str)) {
                                geVar.G = i13;
                                break;
                            }
                            i13++;
                        }
                        if (geVar.G != -1) {
                            break;
                        } else {
                            i12++;
                        }
                    }
                    if (geVar.G == -1) {
                        geVar.G = 0;
                    }
                    geVar.f7118q.setText(((Locale) geVar.F.get(geVar.G)).getDisplayName());
                }
            }, ((TextToSpeech.EngineInfo) this.C.get(i10)).name);
        } catch (Exception unused) {
            com.yunpan.appmanage.util.a0.u("此TTS引擎初始化失败，不可用");
        }
    }

    public final void d() {
        int i10;
        int i11 = this.f7124y;
        if (i11 >= 0 && (i10 = this.z) >= 0) {
            if (i11 >= 100) {
                com.yunpan.appmanage.carsdk.j0.f3843a.h(i11 - 100, i10);
            } else {
                this.A.setStreamVolume(i11, i10, 0);
            }
            this.f7124y = -1;
            this.z = -1;
        }
        b();
        this.f7112i.post(new xd(this, 1));
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        int i10;
        TextToSpeech textToSpeech = this.B;
        if (textToSpeech != null) {
            if (textToSpeech.isSpeaking()) {
                this.B.stop();
            }
            this.B.shutdown();
        }
        int i11 = this.f7124y;
        if (i11 >= 0 && (i10 = this.z) >= 0) {
            if (i11 >= 100) {
                com.yunpan.appmanage.carsdk.j0.f3843a.h(i11 - 100, i10);
            } else {
                this.A.setStreamVolume(i11, i10, 0);
            }
            this.f7124y = -1;
            this.z = -1;
        }
        b();
        this.B = null;
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        final int i10 = 3;
        final int i11 = 2;
        final int i12 = 0;
        final int i13 = 1;
        super.onCreate(bundle);
        Context context = this.f6725b;
        this.A = (AudioManager) context.getSystemService("audio");
        final ArrayList arrayList = new ArrayList();
        for (int i14 = 0; i14 < 31; i14++) {
            try {
                new AudioAttributes.Builder().setUsage(i14);
                arrayList.add(new KeyMapSelectBean(da.b.a(i14, "通道"), i14));
            } catch (Exception unused) {
            }
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 >= 21) {
            this.f7121v = new KeyMapSelectBean("通道1", 1);
        } else {
            this.f7121v = new KeyMapSelectBean("通道3", 3);
        }
        final TextView textView = (TextView) findViewById(R.id.v_type_td_name);
        textView.setText(this.f7121v.gn_name);
        findViewById(R.id.v_type_td).setOnClickListener(new View.OnClickListener(this) { // from class: ha.ae

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ge f6762b;

            {
                this.f6762b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        final ge geVar = this.f6762b;
                        geVar.getClass();
                        final ArrayList arrayList2 = arrayList;
                        final TextView textView2 = textView;
                        final int i16 = 0;
                        new ie(geVar.f6724a, geVar.f6725b, arrayList2, new he() { // from class: ha.ce
                            @Override // ha.he, ha.ea
                            public final void b(int i17) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i16) {
                                    case 0:
                                        ge geVar2 = geVar;
                                        geVar2.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList2.get(i17);
                                        geVar2.f7121v = keyMapSelectBean;
                                        textView2.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        ge geVar3 = geVar;
                                        geVar3.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList2.get(i17);
                                        geVar3.f7122w = keyMapSelectBean2;
                                        textView2.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    default:
                                        ge geVar4 = geVar;
                                        geVar4.getClass();
                                        ArrayList arrayList3 = arrayList2;
                                        int i18 = ((KeyMapSelectBean) arrayList3.get(i17)).gn_type;
                                        TextView textView3 = textView2;
                                        if (i18 == -1) {
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList3.get(i17);
                                            geVar4.f7123x = keyMapSelectBean3;
                                            textView3.setText(keyMapSelectBean3.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList3.get(i17)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList3.get(i17)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList3.get(i17)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = geVar4.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList3.get(i17)).gn_type);
                                                    streamVolume = geVar4.A.getStreamVolume(((KeyMapSelectBean) arrayList3.get(i17)).gn_type);
                                                }
                                                geVar4.f7119s.setProgress(0);
                                                geVar4.f7119s.setMax(streamMaxVolume);
                                                geVar4.f7119s.setProgress(streamVolume);
                                                geVar4.H.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList3.get(i17);
                                                geVar4.f7123x = keyMapSelectBean4;
                                                textView3.setText(keyMapSelectBean4.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final ge geVar2 = this.f6762b;
                        geVar2.getClass();
                        final ArrayList arrayList3 = arrayList;
                        final TextView textView3 = textView;
                        final int i17 = 2;
                        new ie(geVar2.f6724a, geVar2.f6725b, arrayList3, new he() { // from class: ha.ce
                            @Override // ha.he, ha.ea
                            public final void b(int i172) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i17) {
                                    case 0:
                                        ge geVar22 = geVar2;
                                        geVar22.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList3.get(i172);
                                        geVar22.f7121v = keyMapSelectBean;
                                        textView3.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        ge geVar3 = geVar2;
                                        geVar3.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList3.get(i172);
                                        geVar3.f7122w = keyMapSelectBean2;
                                        textView3.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    default:
                                        ge geVar4 = geVar2;
                                        geVar4.getClass();
                                        ArrayList arrayList32 = arrayList3;
                                        int i18 = ((KeyMapSelectBean) arrayList32.get(i172)).gn_type;
                                        TextView textView32 = textView3;
                                        if (i18 == -1) {
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i172);
                                            geVar4.f7123x = keyMapSelectBean3;
                                            textView32.setText(keyMapSelectBean3.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i172)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = geVar4.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                    streamVolume = geVar4.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                }
                                                geVar4.f7119s.setProgress(0);
                                                geVar4.f7119s.setMax(streamMaxVolume);
                                                geVar4.f7119s.setProgress(streamVolume);
                                                geVar4.H.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i172);
                                                geVar4.f7123x = keyMapSelectBean4;
                                                textView32.setText(keyMapSelectBean4.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    default:
                        final ge geVar3 = this.f6762b;
                        geVar3.getClass();
                        final ArrayList arrayList4 = arrayList;
                        final TextView textView4 = textView;
                        final int i18 = 1;
                        new ie(geVar3.f6724a, geVar3.f6725b, arrayList4, new he() { // from class: ha.ce
                            @Override // ha.he, ha.ea
                            public final void b(int i172) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i18) {
                                    case 0:
                                        ge geVar22 = geVar3;
                                        geVar22.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList4.get(i172);
                                        geVar22.f7121v = keyMapSelectBean;
                                        textView4.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        ge geVar32 = geVar3;
                                        geVar32.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList4.get(i172);
                                        geVar32.f7122w = keyMapSelectBean2;
                                        textView4.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    default:
                                        ge geVar4 = geVar3;
                                        geVar4.getClass();
                                        ArrayList arrayList32 = arrayList4;
                                        int i182 = ((KeyMapSelectBean) arrayList32.get(i172)).gn_type;
                                        TextView textView32 = textView4;
                                        if (i182 == -1) {
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i172);
                                            geVar4.f7123x = keyMapSelectBean3;
                                            textView32.setText(keyMapSelectBean3.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i172)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = geVar4.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                    streamVolume = geVar4.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                }
                                                geVar4.f7119s.setProgress(0);
                                                geVar4.f7119s.setMax(streamMaxVolume);
                                                geVar4.f7119s.setProgress(streamVolume);
                                                geVar4.H.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i172);
                                                geVar4.f7123x = keyMapSelectBean4;
                                                textView32.setText(keyMapSelectBean4.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                }
            }
        });
        final ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new KeyMapSelectBean("无", -1));
        arrayList2.add(new KeyMapSelectBean("播放时降低其它音量", 3));
        KeyMapSelectBean keyMapSelectBean = new KeyMapSelectBean("播放时暂停其它音频", 2);
        this.f7122w = keyMapSelectBean;
        arrayList2.add(keyMapSelectBean);
        if (i15 >= 21) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j || p000if.a.h0(context, StartService.class)) {
                g.b.u("播放时暂停其它音乐app音频(智)", 200, arrayList2);
            }
        }
        final TextView textView2 = (TextView) findViewById(R.id.v_zhk_focus_name);
        textView2.setText(this.f7122w.gn_name);
        findViewById(R.id.v_zhk_focus).setOnClickListener(new View.OnClickListener(this) { // from class: ha.ae

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ge f6762b;

            {
                this.f6762b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        final ge geVar = this.f6762b;
                        geVar.getClass();
                        final ArrayList arrayList22 = arrayList2;
                        final TextView textView22 = textView2;
                        final int i16 = 0;
                        new ie(geVar.f6724a, geVar.f6725b, arrayList22, new he() { // from class: ha.ce
                            @Override // ha.he, ha.ea
                            public final void b(int i172) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i16) {
                                    case 0:
                                        ge geVar22 = geVar;
                                        geVar22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList22.get(i172);
                                        geVar22.f7121v = keyMapSelectBean2;
                                        textView22.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        ge geVar32 = geVar;
                                        geVar32.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList22.get(i172);
                                        geVar32.f7122w = keyMapSelectBean22;
                                        textView22.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    default:
                                        ge geVar4 = geVar;
                                        geVar4.getClass();
                                        ArrayList arrayList32 = arrayList22;
                                        int i182 = ((KeyMapSelectBean) arrayList32.get(i172)).gn_type;
                                        TextView textView32 = textView22;
                                        if (i182 == -1) {
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i172);
                                            geVar4.f7123x = keyMapSelectBean3;
                                            textView32.setText(keyMapSelectBean3.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i172)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = geVar4.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                    streamVolume = geVar4.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                }
                                                geVar4.f7119s.setProgress(0);
                                                geVar4.f7119s.setMax(streamMaxVolume);
                                                geVar4.f7119s.setProgress(streamVolume);
                                                geVar4.H.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i172);
                                                geVar4.f7123x = keyMapSelectBean4;
                                                textView32.setText(keyMapSelectBean4.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final ge geVar2 = this.f6762b;
                        geVar2.getClass();
                        final ArrayList arrayList3 = arrayList2;
                        final TextView textView3 = textView2;
                        final int i17 = 2;
                        new ie(geVar2.f6724a, geVar2.f6725b, arrayList3, new he() { // from class: ha.ce
                            @Override // ha.he, ha.ea
                            public final void b(int i172) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i17) {
                                    case 0:
                                        ge geVar22 = geVar2;
                                        geVar22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList3.get(i172);
                                        geVar22.f7121v = keyMapSelectBean2;
                                        textView3.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        ge geVar32 = geVar2;
                                        geVar32.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList3.get(i172);
                                        geVar32.f7122w = keyMapSelectBean22;
                                        textView3.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    default:
                                        ge geVar4 = geVar2;
                                        geVar4.getClass();
                                        ArrayList arrayList32 = arrayList3;
                                        int i182 = ((KeyMapSelectBean) arrayList32.get(i172)).gn_type;
                                        TextView textView32 = textView3;
                                        if (i182 == -1) {
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i172);
                                            geVar4.f7123x = keyMapSelectBean3;
                                            textView32.setText(keyMapSelectBean3.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i172)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = geVar4.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                    streamVolume = geVar4.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                }
                                                geVar4.f7119s.setProgress(0);
                                                geVar4.f7119s.setMax(streamMaxVolume);
                                                geVar4.f7119s.setProgress(streamVolume);
                                                geVar4.H.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i172);
                                                geVar4.f7123x = keyMapSelectBean4;
                                                textView32.setText(keyMapSelectBean4.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    default:
                        final ge geVar3 = this.f6762b;
                        geVar3.getClass();
                        final ArrayList arrayList4 = arrayList2;
                        final TextView textView4 = textView2;
                        final int i18 = 1;
                        new ie(geVar3.f6724a, geVar3.f6725b, arrayList4, new he() { // from class: ha.ce
                            @Override // ha.he, ha.ea
                            public final void b(int i172) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i18) {
                                    case 0:
                                        ge geVar22 = geVar3;
                                        geVar22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList4.get(i172);
                                        geVar22.f7121v = keyMapSelectBean2;
                                        textView4.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        ge geVar32 = geVar3;
                                        geVar32.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList4.get(i172);
                                        geVar32.f7122w = keyMapSelectBean22;
                                        textView4.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    default:
                                        ge geVar4 = geVar3;
                                        geVar4.getClass();
                                        ArrayList arrayList32 = arrayList4;
                                        int i182 = ((KeyMapSelectBean) arrayList32.get(i172)).gn_type;
                                        TextView textView32 = textView4;
                                        if (i182 == -1) {
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i172);
                                            geVar4.f7123x = keyMapSelectBean3;
                                            textView32.setText(keyMapSelectBean3.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i172)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = geVar4.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                    streamVolume = geVar4.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                }
                                                geVar4.f7119s.setProgress(0);
                                                geVar4.f7119s.setMax(streamMaxVolume);
                                                geVar4.f7119s.setProgress(streamVolume);
                                                geVar4.H.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i172);
                                                geVar4.f7123x = keyMapSelectBean4;
                                                textView32.setText(keyMapSelectBean4.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                }
            }
        });
        final ArrayList arrayList3 = new ArrayList();
        KeyMapSelectBean keyMapSelectBean2 = new KeyMapSelectBean("不修改系统音量", -1);
        this.f7123x = keyMapSelectBean2;
        arrayList3.add(keyMapSelectBean2);
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(通话音量)", 0));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(系统音量)", 1));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(铃声音量)", 2));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(媒体音量)", 3));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(闹钟音量)", 4));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(通知音量)", 5));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(MF音量)", 8));
        if (i15 >= 26) {
            g.b.u("播放时修改音量(ACC音量)", 10, arrayList3);
        }
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(6)", 6));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(7)", 7));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(9)", 9));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(11)", 11));
        if (i15 >= 26 && com.yunpan.appmanage.carsdk.j0.f3843a.f3848d != null) {
            for (int i16 = 0; i16 < 32; i16++) {
                try {
                    if (com.yunpan.appmanage.carsdk.j0.f3843a.d(i16 - 100) > 0) {
                        arrayList3.add(new KeyMapSelectBean("播放时修改音量(Car通道0)", i16 + 100));
                    }
                } catch (Exception unused2) {
                }
            }
        }
        final TextView textView3 = (TextView) findViewById(R.id.v_type_vol_name);
        textView3.setText(this.f7123x.gn_name);
        findViewById(R.id.v_type_vol).setOnClickListener(new View.OnClickListener(this) { // from class: ha.ae

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ge f6762b;

            {
                this.f6762b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i13) {
                    case 0:
                        final ge geVar = this.f6762b;
                        geVar.getClass();
                        final ArrayList arrayList22 = arrayList3;
                        final TextView textView22 = textView3;
                        final int i162 = 0;
                        new ie(geVar.f6724a, geVar.f6725b, arrayList22, new he() { // from class: ha.ce
                            @Override // ha.he, ha.ea
                            public final void b(int i172) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i162) {
                                    case 0:
                                        ge geVar22 = geVar;
                                        geVar22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList22.get(i172);
                                        geVar22.f7121v = keyMapSelectBean22;
                                        textView22.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        ge geVar32 = geVar;
                                        geVar32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList22.get(i172);
                                        geVar32.f7122w = keyMapSelectBean222;
                                        textView22.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    default:
                                        ge geVar4 = geVar;
                                        geVar4.getClass();
                                        ArrayList arrayList32 = arrayList22;
                                        int i182 = ((KeyMapSelectBean) arrayList32.get(i172)).gn_type;
                                        TextView textView32 = textView22;
                                        if (i182 == -1) {
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i172);
                                            geVar4.f7123x = keyMapSelectBean3;
                                            textView32.setText(keyMapSelectBean3.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i172)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i172)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = geVar4.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                    streamVolume = geVar4.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i172)).gn_type);
                                                }
                                                geVar4.f7119s.setProgress(0);
                                                geVar4.f7119s.setMax(streamMaxVolume);
                                                geVar4.f7119s.setProgress(streamVolume);
                                                geVar4.H.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i172);
                                                geVar4.f7123x = keyMapSelectBean4;
                                                textView32.setText(keyMapSelectBean4.gn_name);
                                                break;
                                            } catch (Exception unused22) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final ge geVar2 = this.f6762b;
                        geVar2.getClass();
                        final ArrayList arrayList32 = arrayList3;
                        final TextView textView32 = textView3;
                        final int i17 = 2;
                        new ie(geVar2.f6724a, geVar2.f6725b, arrayList32, new he() { // from class: ha.ce
                            @Override // ha.he, ha.ea
                            public final void b(int i172) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i17) {
                                    case 0:
                                        ge geVar22 = geVar2;
                                        geVar22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList32.get(i172);
                                        geVar22.f7121v = keyMapSelectBean22;
                                        textView32.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        ge geVar32 = geVar2;
                                        geVar32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList32.get(i172);
                                        geVar32.f7122w = keyMapSelectBean222;
                                        textView32.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    default:
                                        ge geVar4 = geVar2;
                                        geVar4.getClass();
                                        ArrayList arrayList322 = arrayList32;
                                        int i182 = ((KeyMapSelectBean) arrayList322.get(i172)).gn_type;
                                        TextView textView322 = textView32;
                                        if (i182 == -1) {
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList322.get(i172);
                                            geVar4.f7123x = keyMapSelectBean3;
                                            textView322.setText(keyMapSelectBean3.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList322.get(i172)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList322.get(i172)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList322.get(i172)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = geVar4.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i172)).gn_type);
                                                    streamVolume = geVar4.A.getStreamVolume(((KeyMapSelectBean) arrayList322.get(i172)).gn_type);
                                                }
                                                geVar4.f7119s.setProgress(0);
                                                geVar4.f7119s.setMax(streamMaxVolume);
                                                geVar4.f7119s.setProgress(streamVolume);
                                                geVar4.H.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList322.get(i172);
                                                geVar4.f7123x = keyMapSelectBean4;
                                                textView322.setText(keyMapSelectBean4.gn_name);
                                                break;
                                            } catch (Exception unused22) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    default:
                        final ge geVar3 = this.f6762b;
                        geVar3.getClass();
                        final ArrayList arrayList4 = arrayList3;
                        final TextView textView4 = textView3;
                        final int i18 = 1;
                        new ie(geVar3.f6724a, geVar3.f6725b, arrayList4, new he() { // from class: ha.ce
                            @Override // ha.he, ha.ea
                            public final void b(int i172) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i18) {
                                    case 0:
                                        ge geVar22 = geVar3;
                                        geVar22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList4.get(i172);
                                        geVar22.f7121v = keyMapSelectBean22;
                                        textView4.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        ge geVar32 = geVar3;
                                        geVar32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList4.get(i172);
                                        geVar32.f7122w = keyMapSelectBean222;
                                        textView4.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    default:
                                        ge geVar4 = geVar3;
                                        geVar4.getClass();
                                        ArrayList arrayList322 = arrayList4;
                                        int i182 = ((KeyMapSelectBean) arrayList322.get(i172)).gn_type;
                                        TextView textView322 = textView4;
                                        if (i182 == -1) {
                                            KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList322.get(i172);
                                            geVar4.f7123x = keyMapSelectBean3;
                                            textView322.setText(keyMapSelectBean3.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList322.get(i172)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList322.get(i172)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList322.get(i172)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = geVar4.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i172)).gn_type);
                                                    streamVolume = geVar4.A.getStreamVolume(((KeyMapSelectBean) arrayList322.get(i172)).gn_type);
                                                }
                                                geVar4.f7119s.setProgress(0);
                                                geVar4.f7119s.setMax(streamMaxVolume);
                                                geVar4.f7119s.setProgress(streamVolume);
                                                geVar4.H.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList322.get(i172);
                                                geVar4.f7123x = keyMapSelectBean4;
                                                textView322.setText(keyMapSelectBean4.gn_name);
                                                break;
                                            } catch (Exception unused22) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                }
            }
        });
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek_vol);
        this.f7119s = appCompatSeekBar;
        appCompatSeekBar.setProgress(80);
        this.f7119s.setMax(100);
        this.f7119s.setOnSeekBarChangeListener(new ee(this, 0));
        TextView textView4 = (TextView) findViewById(R.id.v_vol);
        this.H = textView4;
        textView4.setText(String.valueOf(this.f7119s.getProgress()));
        AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) findViewById(R.id.v_seek_speech_rate);
        this.r = appCompatSeekBar2;
        appCompatSeekBar2.setProgress(80);
        this.r.setMax(200);
        AppCompatSeekBar appCompatSeekBar3 = (AppCompatSeekBar) findViewById(R.id.v_seek_gain);
        this.f7120t = appCompatSeekBar3;
        appCompatSeekBar3.setProgress(0);
        this.f7120t.setMax(80);
        this.I = (TextView) findViewById(R.id.v_gain);
        this.f7120t.setOnSeekBarChangeListener(new ee(this, 1));
        EditText editText = (EditText) findViewById(R.id.v_edit_text);
        this.f7113j = editText;
        editText.setOnKeyListener(new c0(this, 6));
        this.f7114k = (ConstraintLayout) findViewById(R.id.v_engines);
        this.l = (TextView) findViewById(R.id.v_engines_name);
        this.f7114k.setOnClickListener(new View.OnClickListener(this) { // from class: ha.de

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ge f6921b;

            {
                this.f6921b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                switch (i12) {
                    case 0:
                        final ge geVar = this.f6921b;
                        geVar.getClass();
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it = geVar.C.iterator();
                        while (it.hasNext()) {
                            arrayList4.add(((TextToSpeech.EngineInfo) it.next()).label);
                        }
                        final int i17 = 2;
                        new fa(geVar.f6724a, geVar.f6725b, null, arrayList4, new ea() { // from class: ha.zd
                            @Override // ha.ea
                            public final void b(int i18) {
                                switch (i17) {
                                    case 0:
                                        ge geVar2 = geVar;
                                        geVar2.G = i18;
                                        geVar2.f7118q.setText(((Locale) geVar2.F.get(i18)).getDisplayName());
                                        break;
                                    case 1:
                                        ge geVar3 = geVar;
                                        geVar3.E = i18;
                                        geVar3.f7116n.setText(g7.d.n(geVar3.D.get(i18)).getName());
                                        break;
                                    default:
                                        geVar.c(i18);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final ge geVar2 = this.f6921b;
                        if (!geVar2.D.isEmpty()) {
                            ArrayList arrayList5 = new ArrayList();
                            Iterator it2 = geVar2.D.iterator();
                            while (it2.hasNext()) {
                                arrayList5.add(g7.d.n(it2.next()).getName());
                            }
                            final int i18 = 1;
                            new fa(geVar2.f6724a, geVar2.f6725b, null, arrayList5, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i18) {
                                        case 0:
                                            ge geVar22 = geVar2;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar3 = geVar2;
                                            geVar3.E = i182;
                                            geVar3.f7116n.setText(g7.d.n(geVar3.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar2.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的声音");
                            break;
                        }
                    case 2:
                        final ge geVar3 = this.f6921b;
                        if (!geVar3.F.isEmpty()) {
                            ArrayList arrayList6 = new ArrayList();
                            Iterator it3 = geVar3.F.iterator();
                            while (it3.hasNext()) {
                                arrayList6.add(((Locale) it3.next()).getDisplayName());
                            }
                            final int i19 = 0;
                            new fa(geVar3.f6724a, geVar3.f6725b, null, arrayList6, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i19) {
                                        case 0:
                                            ge geVar22 = geVar3;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar32 = geVar3;
                                            geVar32.E = i182;
                                            geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar3.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的语言");
                            break;
                        }
                    case 3:
                        ge.a(this.f6921b);
                        break;
                    default:
                        ge geVar4 = this.f6921b;
                        if (!geVar4.f7113j.getText().toString().trim().isEmpty()) {
                            z7.s sVar = new z7.s();
                            sVar.l("gnType", 416);
                            sVar.m("name", "TTS播报：" + geVar4.f7113j.getText().toString().trim());
                            sVar.l("int1", Integer.valueOf(geVar4.f7119s.getProgress()));
                            sVar.l("volumeType", Integer.valueOf(geVar4.f7123x.gn_type));
                            sVar.l("tdType", Integer.valueOf(geVar4.f7121v.gn_type));
                            sVar.l("focusType", Integer.valueOf(geVar4.f7122w.gn_type));
                            sVar.m("tts", geVar4.f7113j.getText().toString().trim());
                            sVar.m("ttsEngine", ((TextToSpeech.EngineInfo) geVar4.C.get(0)).name);
                            sVar.m("ttsVoice", geVar4.f7116n.getText().toString());
                            sVar.m("ttsLocale", geVar4.f7118q.getText().toString());
                            sVar.l("ttsSpeechRate", Integer.valueOf(geVar4.r.getProgress()));
                            f8 f8Var = geVar4.f7110g;
                            if (f8Var != null) {
                                sVar.l("keyType", Integer.valueOf(f8Var.f7031a));
                                f8Var.f7032b.k(sVar);
                            }
                            geVar4.dismiss();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请输入播放内容");
                            break;
                        }
                }
            }
        });
        this.f7115m = (ConstraintLayout) findViewById(R.id.v_voices);
        this.f7116n = (TextView) findViewById(R.id.v_voices_name);
        this.f7115m.setOnClickListener(new View.OnClickListener(this) { // from class: ha.de

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ge f6921b;

            {
                this.f6921b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                switch (i13) {
                    case 0:
                        final ge geVar = this.f6921b;
                        geVar.getClass();
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it = geVar.C.iterator();
                        while (it.hasNext()) {
                            arrayList4.add(((TextToSpeech.EngineInfo) it.next()).label);
                        }
                        final int i17 = 2;
                        new fa(geVar.f6724a, geVar.f6725b, null, arrayList4, new ea() { // from class: ha.zd
                            @Override // ha.ea
                            public final void b(int i182) {
                                switch (i17) {
                                    case 0:
                                        ge geVar22 = geVar;
                                        geVar22.G = i182;
                                        geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                        break;
                                    case 1:
                                        ge geVar32 = geVar;
                                        geVar32.E = i182;
                                        geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                        break;
                                    default:
                                        geVar.c(i182);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final ge geVar2 = this.f6921b;
                        if (!geVar2.D.isEmpty()) {
                            ArrayList arrayList5 = new ArrayList();
                            Iterator it2 = geVar2.D.iterator();
                            while (it2.hasNext()) {
                                arrayList5.add(g7.d.n(it2.next()).getName());
                            }
                            final int i18 = 1;
                            new fa(geVar2.f6724a, geVar2.f6725b, null, arrayList5, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i18) {
                                        case 0:
                                            ge geVar22 = geVar2;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar32 = geVar2;
                                            geVar32.E = i182;
                                            geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar2.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的声音");
                            break;
                        }
                    case 2:
                        final ge geVar3 = this.f6921b;
                        if (!geVar3.F.isEmpty()) {
                            ArrayList arrayList6 = new ArrayList();
                            Iterator it3 = geVar3.F.iterator();
                            while (it3.hasNext()) {
                                arrayList6.add(((Locale) it3.next()).getDisplayName());
                            }
                            final int i19 = 0;
                            new fa(geVar3.f6724a, geVar3.f6725b, null, arrayList6, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i19) {
                                        case 0:
                                            ge geVar22 = geVar3;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar32 = geVar3;
                                            geVar32.E = i182;
                                            geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar3.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的语言");
                            break;
                        }
                    case 3:
                        ge.a(this.f6921b);
                        break;
                    default:
                        ge geVar4 = this.f6921b;
                        if (!geVar4.f7113j.getText().toString().trim().isEmpty()) {
                            z7.s sVar = new z7.s();
                            sVar.l("gnType", 416);
                            sVar.m("name", "TTS播报：" + geVar4.f7113j.getText().toString().trim());
                            sVar.l("int1", Integer.valueOf(geVar4.f7119s.getProgress()));
                            sVar.l("volumeType", Integer.valueOf(geVar4.f7123x.gn_type));
                            sVar.l("tdType", Integer.valueOf(geVar4.f7121v.gn_type));
                            sVar.l("focusType", Integer.valueOf(geVar4.f7122w.gn_type));
                            sVar.m("tts", geVar4.f7113j.getText().toString().trim());
                            sVar.m("ttsEngine", ((TextToSpeech.EngineInfo) geVar4.C.get(0)).name);
                            sVar.m("ttsVoice", geVar4.f7116n.getText().toString());
                            sVar.m("ttsLocale", geVar4.f7118q.getText().toString());
                            sVar.l("ttsSpeechRate", Integer.valueOf(geVar4.r.getProgress()));
                            f8 f8Var = geVar4.f7110g;
                            if (f8Var != null) {
                                sVar.l("keyType", Integer.valueOf(f8Var.f7031a));
                                f8Var.f7032b.k(sVar);
                            }
                            geVar4.dismiss();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请输入播放内容");
                            break;
                        }
                }
            }
        });
        this.f7117p = (ConstraintLayout) findViewById(R.id.v_locales);
        this.f7118q = (TextView) findViewById(R.id.v_locales_name);
        this.f7117p.setOnClickListener(new View.OnClickListener(this) { // from class: ha.de

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ge f6921b;

            {
                this.f6921b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                switch (i11) {
                    case 0:
                        final ge geVar = this.f6921b;
                        geVar.getClass();
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it = geVar.C.iterator();
                        while (it.hasNext()) {
                            arrayList4.add(((TextToSpeech.EngineInfo) it.next()).label);
                        }
                        final int i17 = 2;
                        new fa(geVar.f6724a, geVar.f6725b, null, arrayList4, new ea() { // from class: ha.zd
                            @Override // ha.ea
                            public final void b(int i182) {
                                switch (i17) {
                                    case 0:
                                        ge geVar22 = geVar;
                                        geVar22.G = i182;
                                        geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                        break;
                                    case 1:
                                        ge geVar32 = geVar;
                                        geVar32.E = i182;
                                        geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                        break;
                                    default:
                                        geVar.c(i182);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final ge geVar2 = this.f6921b;
                        if (!geVar2.D.isEmpty()) {
                            ArrayList arrayList5 = new ArrayList();
                            Iterator it2 = geVar2.D.iterator();
                            while (it2.hasNext()) {
                                arrayList5.add(g7.d.n(it2.next()).getName());
                            }
                            final int i18 = 1;
                            new fa(geVar2.f6724a, geVar2.f6725b, null, arrayList5, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i18) {
                                        case 0:
                                            ge geVar22 = geVar2;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar32 = geVar2;
                                            geVar32.E = i182;
                                            geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar2.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的声音");
                            break;
                        }
                    case 2:
                        final ge geVar3 = this.f6921b;
                        if (!geVar3.F.isEmpty()) {
                            ArrayList arrayList6 = new ArrayList();
                            Iterator it3 = geVar3.F.iterator();
                            while (it3.hasNext()) {
                                arrayList6.add(((Locale) it3.next()).getDisplayName());
                            }
                            final int i19 = 0;
                            new fa(geVar3.f6724a, geVar3.f6725b, null, arrayList6, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i19) {
                                        case 0:
                                            ge geVar22 = geVar3;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar32 = geVar3;
                                            geVar32.E = i182;
                                            geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar3.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的语言");
                            break;
                        }
                    case 3:
                        ge.a(this.f6921b);
                        break;
                    default:
                        ge geVar4 = this.f6921b;
                        if (!geVar4.f7113j.getText().toString().trim().isEmpty()) {
                            z7.s sVar = new z7.s();
                            sVar.l("gnType", 416);
                            sVar.m("name", "TTS播报：" + geVar4.f7113j.getText().toString().trim());
                            sVar.l("int1", Integer.valueOf(geVar4.f7119s.getProgress()));
                            sVar.l("volumeType", Integer.valueOf(geVar4.f7123x.gn_type));
                            sVar.l("tdType", Integer.valueOf(geVar4.f7121v.gn_type));
                            sVar.l("focusType", Integer.valueOf(geVar4.f7122w.gn_type));
                            sVar.m("tts", geVar4.f7113j.getText().toString().trim());
                            sVar.m("ttsEngine", ((TextToSpeech.EngineInfo) geVar4.C.get(0)).name);
                            sVar.m("ttsVoice", geVar4.f7116n.getText().toString());
                            sVar.m("ttsLocale", geVar4.f7118q.getText().toString());
                            sVar.l("ttsSpeechRate", Integer.valueOf(geVar4.r.getProgress()));
                            f8 f8Var = geVar4.f7110g;
                            if (f8Var != null) {
                                sVar.l("keyType", Integer.valueOf(f8Var.f7031a));
                                f8Var.f7032b.k(sVar);
                            }
                            geVar4.dismiss();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请输入播放内容");
                            break;
                        }
                }
            }
        });
        TextView textView5 = (TextView) findViewById(R.id.v_btn_bf);
        this.f7112i = textView5;
        textView5.setOnClickListener(new View.OnClickListener(this) { // from class: ha.de

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ge f6921b;

            {
                this.f6921b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                switch (i10) {
                    case 0:
                        final ge geVar = this.f6921b;
                        geVar.getClass();
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it = geVar.C.iterator();
                        while (it.hasNext()) {
                            arrayList4.add(((TextToSpeech.EngineInfo) it.next()).label);
                        }
                        final int i17 = 2;
                        new fa(geVar.f6724a, geVar.f6725b, null, arrayList4, new ea() { // from class: ha.zd
                            @Override // ha.ea
                            public final void b(int i182) {
                                switch (i17) {
                                    case 0:
                                        ge geVar22 = geVar;
                                        geVar22.G = i182;
                                        geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                        break;
                                    case 1:
                                        ge geVar32 = geVar;
                                        geVar32.E = i182;
                                        geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                        break;
                                    default:
                                        geVar.c(i182);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final ge geVar2 = this.f6921b;
                        if (!geVar2.D.isEmpty()) {
                            ArrayList arrayList5 = new ArrayList();
                            Iterator it2 = geVar2.D.iterator();
                            while (it2.hasNext()) {
                                arrayList5.add(g7.d.n(it2.next()).getName());
                            }
                            final int i18 = 1;
                            new fa(geVar2.f6724a, geVar2.f6725b, null, arrayList5, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i18) {
                                        case 0:
                                            ge geVar22 = geVar2;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar32 = geVar2;
                                            geVar32.E = i182;
                                            geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar2.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的声音");
                            break;
                        }
                    case 2:
                        final ge geVar3 = this.f6921b;
                        if (!geVar3.F.isEmpty()) {
                            ArrayList arrayList6 = new ArrayList();
                            Iterator it3 = geVar3.F.iterator();
                            while (it3.hasNext()) {
                                arrayList6.add(((Locale) it3.next()).getDisplayName());
                            }
                            final int i19 = 0;
                            new fa(geVar3.f6724a, geVar3.f6725b, null, arrayList6, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i19) {
                                        case 0:
                                            ge geVar22 = geVar3;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar32 = geVar3;
                                            geVar32.E = i182;
                                            geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar3.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的语言");
                            break;
                        }
                    case 3:
                        ge.a(this.f6921b);
                        break;
                    default:
                        ge geVar4 = this.f6921b;
                        if (!geVar4.f7113j.getText().toString().trim().isEmpty()) {
                            z7.s sVar = new z7.s();
                            sVar.l("gnType", 416);
                            sVar.m("name", "TTS播报：" + geVar4.f7113j.getText().toString().trim());
                            sVar.l("int1", Integer.valueOf(geVar4.f7119s.getProgress()));
                            sVar.l("volumeType", Integer.valueOf(geVar4.f7123x.gn_type));
                            sVar.l("tdType", Integer.valueOf(geVar4.f7121v.gn_type));
                            sVar.l("focusType", Integer.valueOf(geVar4.f7122w.gn_type));
                            sVar.m("tts", geVar4.f7113j.getText().toString().trim());
                            sVar.m("ttsEngine", ((TextToSpeech.EngineInfo) geVar4.C.get(0)).name);
                            sVar.m("ttsVoice", geVar4.f7116n.getText().toString());
                            sVar.m("ttsLocale", geVar4.f7118q.getText().toString());
                            sVar.l("ttsSpeechRate", Integer.valueOf(geVar4.r.getProgress()));
                            f8 f8Var = geVar4.f7110g;
                            if (f8Var != null) {
                                sVar.l("keyType", Integer.valueOf(f8Var.f7031a));
                                f8Var.f7032b.k(sVar);
                            }
                            geVar4.dismiss();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请输入播放内容");
                            break;
                        }
                }
            }
        });
        TextView textView6 = (TextView) findViewById(R.id.v_btn_yes);
        this.f7111h = textView6;
        if (this.f7110g == null) {
            textView6.setVisibility(8);
        }
        final int i17 = 4;
        this.f7111h.setOnClickListener(new View.OnClickListener(this) { // from class: ha.de

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ge f6921b;

            {
                this.f6921b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                switch (i17) {
                    case 0:
                        final ge geVar = this.f6921b;
                        geVar.getClass();
                        ArrayList arrayList4 = new ArrayList();
                        Iterator it = geVar.C.iterator();
                        while (it.hasNext()) {
                            arrayList4.add(((TextToSpeech.EngineInfo) it.next()).label);
                        }
                        final int i172 = 2;
                        new fa(geVar.f6724a, geVar.f6725b, null, arrayList4, new ea() { // from class: ha.zd
                            @Override // ha.ea
                            public final void b(int i182) {
                                switch (i172) {
                                    case 0:
                                        ge geVar22 = geVar;
                                        geVar22.G = i182;
                                        geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                        break;
                                    case 1:
                                        ge geVar32 = geVar;
                                        geVar32.E = i182;
                                        geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                        break;
                                    default:
                                        geVar.c(i182);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final ge geVar2 = this.f6921b;
                        if (!geVar2.D.isEmpty()) {
                            ArrayList arrayList5 = new ArrayList();
                            Iterator it2 = geVar2.D.iterator();
                            while (it2.hasNext()) {
                                arrayList5.add(g7.d.n(it2.next()).getName());
                            }
                            final int i18 = 1;
                            new fa(geVar2.f6724a, geVar2.f6725b, null, arrayList5, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i18) {
                                        case 0:
                                            ge geVar22 = geVar2;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar32 = geVar2;
                                            geVar32.E = i182;
                                            geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar2.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的声音");
                            break;
                        }
                    case 2:
                        final ge geVar3 = this.f6921b;
                        if (!geVar3.F.isEmpty()) {
                            ArrayList arrayList6 = new ArrayList();
                            Iterator it3 = geVar3.F.iterator();
                            while (it3.hasNext()) {
                                arrayList6.add(((Locale) it3.next()).getDisplayName());
                            }
                            final int i19 = 0;
                            new fa(geVar3.f6724a, geVar3.f6725b, null, arrayList6, new ea() { // from class: ha.zd
                                @Override // ha.ea
                                public final void b(int i182) {
                                    switch (i19) {
                                        case 0:
                                            ge geVar22 = geVar3;
                                            geVar22.G = i182;
                                            geVar22.f7118q.setText(((Locale) geVar22.F.get(i182)).getDisplayName());
                                            break;
                                        case 1:
                                            ge geVar32 = geVar3;
                                            geVar32.E = i182;
                                            geVar32.f7116n.setText(g7.d.n(geVar32.D.get(i182)).getName());
                                            break;
                                        default:
                                            geVar3.c(i182);
                                            break;
                                    }
                                }
                            }).show();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("此TTS引擎没有可用的语言");
                            break;
                        }
                    case 3:
                        ge.a(this.f6921b);
                        break;
                    default:
                        ge geVar4 = this.f6921b;
                        if (!geVar4.f7113j.getText().toString().trim().isEmpty()) {
                            z7.s sVar = new z7.s();
                            sVar.l("gnType", 416);
                            sVar.m("name", "TTS播报：" + geVar4.f7113j.getText().toString().trim());
                            sVar.l("int1", Integer.valueOf(geVar4.f7119s.getProgress()));
                            sVar.l("volumeType", Integer.valueOf(geVar4.f7123x.gn_type));
                            sVar.l("tdType", Integer.valueOf(geVar4.f7121v.gn_type));
                            sVar.l("focusType", Integer.valueOf(geVar4.f7122w.gn_type));
                            sVar.m("tts", geVar4.f7113j.getText().toString().trim());
                            sVar.m("ttsEngine", ((TextToSpeech.EngineInfo) geVar4.C.get(0)).name);
                            sVar.m("ttsVoice", geVar4.f7116n.getText().toString());
                            sVar.m("ttsLocale", geVar4.f7118q.getText().toString());
                            sVar.l("ttsSpeechRate", Integer.valueOf(geVar4.r.getProgress()));
                            f8 f8Var = geVar4.f7110g;
                            if (f8Var != null) {
                                sVar.l("keyType", Integer.valueOf(f8Var.f7031a));
                                f8Var.f7032b.k(sVar);
                            }
                            geVar4.dismiss();
                            break;
                        } else {
                            com.yunpan.appmanage.util.a0.u("请输入播放内容");
                            break;
                        }
                }
            }
        });
        TextToSpeech textToSpeech = new TextToSpeech(context, null);
        List<TextToSpeech.EngineInfo> engines = textToSpeech.getEngines();
        this.C = engines;
        Iterator<TextToSpeech.EngineInfo> it = engines.iterator();
        while (it.hasNext()) {
            this.l.setText(it.next().label);
        }
        textToSpeech.shutdown();
        if (!this.C.isEmpty()) {
            c(0);
            return;
        }
        com.yunpan.appmanage.util.a0.s("没有可用的TTS引擎", false);
        this.f7110g = null;
        this.f7112i.post(new xd(this, 0));
    }
}
