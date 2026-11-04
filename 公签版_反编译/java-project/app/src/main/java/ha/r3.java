package ha;

import android.app.Activity;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFocusRequest;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.MediaPlayer;
import android.media.audiofx.LoudnessEnhancer;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.service.StartService;
import j$.util.concurrent.ThreadLocalRandom;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class r3 extends a4 {
    public TextView A;
    public LoudnessEnhancer B;
    public x9.w3 C;
    public final ArrayList D;
    public ConstraintLayout E;
    public AudioFocusRequest F;
    public m3 G;

    /* renamed from: g, reason: collision with root package name */
    public final h8 f7664g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7665h;

    /* renamed from: i, reason: collision with root package name */
    public AppCompatSeekBar f7666i;

    /* renamed from: j, reason: collision with root package name */
    public AppCompatSeekBar f7667j;

    /* renamed from: k, reason: collision with root package name */
    public MediaPlayer f7668k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public AudioTrack f7669m;

    /* renamed from: n, reason: collision with root package name */
    public final ExecutorService f7670n;

    /* renamed from: p, reason: collision with root package name */
    public KeyMapSelectBean f7671p;

    /* renamed from: q, reason: collision with root package name */
    public KeyMapSelectBean f7672q;
    public KeyMapSelectBean r;

    /* renamed from: s, reason: collision with root package name */
    public KeyMapSelectBean f7673s;

    /* renamed from: t, reason: collision with root package name */
    public int f7674t;

    /* renamed from: v, reason: collision with root package name */
    public int f7675v;

    /* renamed from: w, reason: collision with root package name */
    public TvRecyclerView f7676w;

    /* renamed from: x, reason: collision with root package name */
    public x9.d0 f7677x;

    /* renamed from: y, reason: collision with root package name */
    public AudioManager f7678y;
    public TextView z;

    public r3(Activity activity, Context context, h8 h8Var) {
        super(activity, context, R.layout.dialog_audio_add_random);
        this.l = false;
        this.f7669m = null;
        this.f7670n = Executors.newFixedThreadPool(1);
        this.f7674t = -1;
        this.f7675v = -1;
        this.B = null;
        this.D = new ArrayList();
        this.f7664g = h8Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v41, types: [android.media.AudioManager$OnAudioFocusChangeListener, ha.m3] */
    public static void a(final r3 r3Var) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i10;
        if (r3Var.f7677x.b() == 0) {
            com.yunpan.appmanage.util.a0.u("请选择文件");
            return;
        }
        int i11 = 0;
        if (r3Var.f7665h.getText().toString().startsWith("停止")) {
            r3Var.f7665h.setText("试听");
            int i12 = r3Var.f7674t;
            if (i12 >= 0 && (i10 = r3Var.f7675v) >= 0) {
                if (i12 >= 100) {
                    com.yunpan.appmanage.carsdk.j0.f3843a.h(i12 - 100, i10);
                } else {
                    r3Var.f7678y.setStreamVolume(i12, i10, 0);
                }
                r3Var.f7674t = -1;
                r3Var.f7675v = -1;
            }
            LoudnessEnhancer loudnessEnhancer = r3Var.B;
            if (loudnessEnhancer != null) {
                try {
                    loudnessEnhancer.release();
                } catch (Exception unused) {
                }
                r3Var.B = null;
            }
            r3Var.l = true;
            MediaPlayer mediaPlayer = r3Var.f7668k;
            if (mediaPlayer != null) {
                try {
                    mediaPlayer.stop();
                } catch (Exception unused2) {
                }
                try {
                    r3Var.f7668k.release();
                } catch (Exception unused3) {
                } catch (Throwable th2) {
                    r3Var.f7668k = null;
                    throw th2;
                }
                r3Var.f7668k = null;
            }
            AudioTrack audioTrack = r3Var.f7669m;
            if (audioTrack != null) {
                try {
                    audioTrack.stop();
                } catch (Exception unused4) {
                }
                try {
                    if (Build.VERSION.SDK_INT >= 23) {
                        r3Var.f7669m.setPreferredDevice(null);
                    }
                } catch (Exception unused5) {
                }
                try {
                    r3Var.f7669m.flush();
                } catch (Exception unused6) {
                }
                try {
                    r3Var.f7669m.release();
                } catch (Exception unused7) {
                } catch (Throwable th3) {
                    r3Var.f7669m = null;
                    throw th3;
                }
                r3Var.f7669m = null;
            }
            r3Var.c();
            return;
        }
        if (r3Var.f7677x.b() == 0) {
            com.yunpan.appmanage.util.a0.u("请选择文件");
            return;
        }
        x9.w3 w3Var = (x9.w3) r3Var.f7677x.t(0);
        r3Var.C = w3Var;
        if (w3Var.f18366c) {
            try {
                File[] fileArrListFiles = new File(r3Var.C.f18365b).listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                    ArrayList arrayList = new ArrayList(Arrays.asList(fileArrListFiles));
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        if (!((File) arrayList.get(size)).isFile() || !p000if.a.f0(((File) arrayList.get(size)).getName())) {
                            arrayList.remove(size);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        com.yunpan.appmanage.util.a0.u("此目录没有音频文件");
                        return;
                    }
                    r3Var.C = new x9.w3((File) arrayList.get(ThreadLocalRandom.current().nextInt(0, arrayList.size())));
                }
                com.yunpan.appmanage.util.a0.u("此目录没有音频文件");
                return;
            } catch (Exception e7) {
                e7.printStackTrace();
                com.yunpan.appmanage.util.a0.u("无法读取此目录");
                return;
            }
        }
        r3Var.C = (x9.w3) r3Var.f7677x.v().get(ThreadLocalRandom.current().nextInt(0, r3Var.f7677x.b()));
        r3Var.f7665h.setText("停止");
        int i13 = r3Var.f7672q.gn_type;
        if (i13 != -1 && i13 <= 50) {
            if (Build.VERSION.SDK_INT >= 26) {
                AudioFocusRequest.Builder builder = new AudioFocusRequest.Builder(i13);
                builder.setAudioAttributes(new AudioAttributes.Builder().setUsage(12).build());
                final int i14 = 0;
                builder.setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener(r3Var) { // from class: ha.m3

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ r3 f7393b;

                    {
                        this.f7393b = r3Var;
                    }

                    @Override // android.media.AudioManager.OnAudioFocusChangeListener
                    public final void onAudioFocusChange(int i15) {
                        switch (i14) {
                            case 0:
                                r3 r3Var2 = this.f7393b;
                                r3Var2.getClass();
                                if (i15 == -3 || i15 == -2 || i15 == -1) {
                                    r3Var2.c();
                                    break;
                                }
                                break;
                            default:
                                r3 r3Var3 = this.f7393b;
                                r3Var3.getClass();
                                if (i15 == -3 || i15 == -2 || i15 == -1) {
                                    r3Var3.c();
                                    break;
                                }
                                break;
                        }
                    }
                });
                AudioFocusRequest audioFocusRequestBuild = builder.build();
                r3Var.F = audioFocusRequestBuild;
                if (r3Var.f7678y.requestAudioFocus(audioFocusRequestBuild) != 1) {
                    r3Var.F = null;
                }
            } else {
                final int i15 = 1;
                ?? r22 = new AudioManager.OnAudioFocusChangeListener(r3Var) { // from class: ha.m3

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ r3 f7393b;

                    {
                        this.f7393b = r3Var;
                    }

                    @Override // android.media.AudioManager.OnAudioFocusChangeListener
                    public final void onAudioFocusChange(int i152) {
                        switch (i15) {
                            case 0:
                                r3 r3Var2 = this.f7393b;
                                r3Var2.getClass();
                                if (i152 == -3 || i152 == -2 || i152 == -1) {
                                    r3Var2.c();
                                    break;
                                }
                                break;
                            default:
                                r3 r3Var3 = this.f7393b;
                                r3Var3.getClass();
                                if (i152 == -3 || i152 == -2 || i152 == -1) {
                                    r3Var3.c();
                                    break;
                                }
                                break;
                        }
                    }
                };
                r3Var.G = r22;
                if (r3Var.f7678y.requestAudioFocus(r22, 3, i13) != 1) {
                    r3Var.G = null;
                }
            }
        }
        if (!r3Var.C.f18365b.toLowerCase().endsWith(".pcm")) {
            MediaPlayer mediaPlayer2 = new MediaPlayer();
            r3Var.f7668k = mediaPlayer2;
            try {
                mediaPlayer2.setDataSource(wa.t.f17728a.f17735d, Uri.fromFile(new File(r3Var.C.f18365b)));
            } catch (IOException unused8) {
                r3Var.f7668k.release();
                r3Var.f7668k = null;
                r3Var.c();
            }
            MediaPlayer mediaPlayer3 = r3Var.f7668k;
            if (mediaPlayer3 != null) {
                int i16 = Build.VERSION.SDK_INT;
                if (i16 >= 21) {
                    AudioAttributes.Builder builder2 = new AudioAttributes.Builder();
                    builder2.setUsage(r3Var.f7671p.gn_type);
                    builder2.setContentType(2);
                    if (i16 >= 29) {
                        builder2.setHapticChannelsMuted(true);
                    }
                    r3Var.f7668k.setAudioAttributes(builder2.build());
                } else {
                    mediaPlayer3.setAudioStreamType(r3Var.f7671p.gn_type);
                }
                if (i16 >= 28 && r3Var.r.gn_type != -1) {
                    AudioDeviceInfo[] devices = r3Var.f7678y.getDevices(2);
                    int length = devices.length;
                    while (true) {
                        if (i11 >= length) {
                            break;
                        }
                        AudioDeviceInfo audioDeviceInfo = devices[i11];
                        if (audioDeviceInfo.getId() == r3Var.r.gn_type) {
                            r3Var.f7668k.setPreferredDevice(audioDeviceInfo);
                            break;
                        }
                        i11++;
                    }
                }
                r3Var.f7668k.setOnPreparedListener(new e3(r3Var, 1));
                r3Var.f7668k.setOnCompletionListener(new f3(r3Var, 1));
                r3Var.f7668k.prepareAsync();
                return;
            }
            return;
        }
        if (r3Var.f7669m == null) {
            int minBufferSize = AudioTrack.getMinBufferSize(44100, 4, 2);
            if (Build.VERSION.SDK_INT >= 21) {
                r3Var.f7669m = new AudioTrack(new AudioAttributes.Builder().setUsage(r3Var.f7671p.gn_type).setContentType(2).build(), new AudioFormat.Builder().setEncoding(2).setSampleRate(44100).setChannelMask(4).build(), minBufferSize, 1, 0);
            } else {
                r3Var.f7669m = new AudioTrack(r3Var.f7671p.gn_type, 44100, 4, 2, minBufferSize, 1);
            }
        }
        if (Build.VERSION.SDK_INT >= 23 && r3Var.r.gn_type != -1) {
            AudioDeviceInfo[] devices2 = r3Var.f7678y.getDevices(2);
            int length2 = devices2.length;
            int i17 = 0;
            while (true) {
                if (i17 >= length2) {
                    break;
                }
                AudioDeviceInfo audioDeviceInfo2 = devices2[i17];
                if (audioDeviceInfo2.getId() == r3Var.r.gn_type) {
                    r3Var.f7669m.setPreferredDevice(audioDeviceInfo2);
                    break;
                }
                i17++;
            }
        }
        r3Var.f7669m.play();
        int i18 = r3Var.f7673s.gn_type;
        if (i18 >= 0) {
            r3Var.f7674t = i18;
            if (i18 >= 100) {
                com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                r3Var.f7675v = k0Var.f(i18 - 100);
                k0Var.h(r3Var.f7673s.gn_type - 100, r3Var.f7666i.getProgress());
            } else {
                r3Var.f7675v = r3Var.f7678y.getStreamVolume(i18);
                r3Var.f7678y.setStreamVolume(r3Var.f7673s.gn_type, r3Var.f7666i.getProgress(), 0);
            }
        }
        if (Build.VERSION.SDK_INT >= 19 && r3Var.f7667j.getProgress() > 0) {
            LoudnessEnhancer loudnessEnhancer2 = new LoudnessEnhancer(r3Var.f7669m.getAudioSessionId());
            r3Var.B = loudnessEnhancer2;
            loudnessEnhancer2.setTargetGain(r3Var.f7667j.getProgress() * 100);
            r3Var.B.setEnabled(true);
        }
        r3Var.l = false;
        r3Var.f7670n.submit(new n3(r3Var, 1));
    }

    public static void b(r3 r3Var, MediaPlayer mediaPlayer) {
        int i10;
        if (Build.VERSION.SDK_INT >= 19 && r3Var.f7667j.getProgress() > 0) {
            LoudnessEnhancer loudnessEnhancer = new LoudnessEnhancer(r3Var.f7668k.getAudioSessionId());
            r3Var.B = loudnessEnhancer;
            loudnessEnhancer.setTargetGain(r3Var.f7667j.getProgress() * 100);
            r3Var.B.setEnabled(true);
        }
        int i11 = r3Var.f7673s.gn_type;
        if (i11 >= 0) {
            r3Var.f7674t = i11;
            if (i11 >= 100) {
                com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                r3Var.f7675v = k0Var.f(i11 - 100);
                k0Var.h(r3Var.f7674t - 100, r3Var.f7666i.getProgress());
            } else {
                r3Var.f7675v = r3Var.f7678y.getStreamVolume(i11);
                r3Var.f7678y.setStreamVolume(r3Var.f7673s.gn_type, r3Var.f7666i.getProgress(), 0);
            }
        }
        try {
            mediaPlayer.start();
        } catch (Exception e7) {
            com.yunpan.appmanage.util.a0.u("报错：" + e7.getMessage());
            if (r3Var.f7674t >= 0 && (i10 = r3Var.f7675v) >= 0) {
                int i12 = r3Var.f7674t;
                if (i12 >= 100) {
                    com.yunpan.appmanage.carsdk.j0.f3843a.h(i12 - 100, i10);
                } else {
                    r3Var.f7678y.setStreamVolume(i12, i10, 0);
                }
                r3Var.f7674t = -1;
                r3Var.f7675v = -1;
            }
            LoudnessEnhancer loudnessEnhancer2 = r3Var.B;
            if (loudnessEnhancer2 != null) {
                try {
                    loudnessEnhancer2.release();
                } catch (Exception unused) {
                }
                r3Var.B = null;
            }
            r3Var.f7668k.release();
            r3Var.f7668k = null;
            r3Var.c();
            r3Var.f7665h.setText("试听播放");
        }
    }

    public final void c() {
        AudioManager audioManager = (AudioManager) this.f6725b.getSystemService("audio");
        if (Build.VERSION.SDK_INT < 26) {
            if (this.G != null) {
                audioManager.abandonAudioFocus(null);
                this.G = null;
                return;
            }
            return;
        }
        AudioFocusRequest audioFocusRequest = this.F;
        if (audioFocusRequest != null) {
            audioManager.abandonAudioFocusRequest(audioFocusRequest);
            this.F = null;
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() throws IllegalStateException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10;
        int i11 = this.f7675v;
        if (i11 >= 0 && (i10 = this.f7674t) >= 0) {
            if (i10 >= 100) {
                com.yunpan.appmanage.carsdk.j0.f3843a.h(i10 - 100, i11);
            } else {
                this.f7678y.setStreamVolume(i10, i11, 0);
            }
        }
        LoudnessEnhancer loudnessEnhancer = this.B;
        if (loudnessEnhancer != null) {
            try {
                loudnessEnhancer.release();
            } catch (Exception unused) {
            }
            this.B = null;
        }
        MediaPlayer mediaPlayer = this.f7668k;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.release();
            } catch (Exception unused2) {
            }
        }
        this.l = true;
        this.f7670n.shutdown();
        AudioTrack audioTrack = this.f7669m;
        if (audioTrack != null) {
            try {
                audioTrack.stop();
            } catch (Exception unused3) {
            }
            try {
                this.f7669m.setPlaybackPositionUpdateListener(null);
            } catch (Exception unused4) {
            }
            try {
                this.f7669m.flush();
            } catch (Exception unused5) {
            }
            try {
                this.f7669m.release();
            } catch (Exception unused6) {
            }
        }
        c();
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i10 = 5;
        final int i11 = 0;
        final int i12 = 1;
        super.onCreate(bundle);
        Context context = this.f6725b;
        this.f7678y = (AudioManager) context.getSystemService("audio");
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            for (int i13 = 0; i13 < 101; i13++) {
                try {
                    new AudioAttributes.Builder().setUsage(i13);
                    arrayList.add(new KeyMapSelectBean(da.b.a(i13, "通道"), i13));
                } catch (Exception unused) {
                }
            }
        } else {
            for (int i14 = 0; i14 < 16; i14++) {
                arrayList.add(new KeyMapSelectBean(da.b.a(i14, "通道"), i14));
            }
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 >= 21) {
            this.f7671p = new KeyMapSelectBean("通道1", 1);
        } else {
            this.f7671p = new KeyMapSelectBean("通道3", 3);
        }
        TextView textView = (TextView) findViewById(R.id.v_type_td_name);
        textView.setText(this.f7671p.gn_name);
        findViewById(R.id.v_type_td).setOnClickListener(new k3(this, arrayList, textView, 3));
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new KeyMapSelectBean("无", -1));
        arrayList2.add(new KeyMapSelectBean("播放时降低其它音量", 3));
        KeyMapSelectBean keyMapSelectBean = new KeyMapSelectBean("播放时暂停其它音频", 2);
        this.f7672q = keyMapSelectBean;
        arrayList2.add(keyMapSelectBean);
        if (i15 >= 21) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j || p000if.a.h0(context, StartService.class)) {
                g.b.u("播放时暂停其它音乐app音频(智)", 200, arrayList2);
            }
        }
        TextView textView2 = (TextView) findViewById(R.id.v_zhk_focus_name);
        textView2.setText(this.f7672q.gn_name);
        findViewById(R.id.v_zhk_focus).setOnClickListener(new k3(this, arrayList2, textView2, 1));
        ArrayList arrayList3 = new ArrayList();
        KeyMapSelectBean keyMapSelectBean2 = new KeyMapSelectBean("不修改系统音量", -1);
        this.f7673s = keyMapSelectBean2;
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
        TextView textView3 = (TextView) findViewById(R.id.v_type_vol_name);
        textView3.setText(this.f7673s.gn_name);
        findViewById(R.id.v_type_vol).setOnClickListener(new k3(this, arrayList3, textView3, 0));
        KeyMapSelectBean keyMapSelectBean3 = new KeyMapSelectBean("默认", -1);
        this.r = keyMapSelectBean3;
        ArrayList arrayList4 = this.D;
        arrayList4.add(keyMapSelectBean3);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                for (AudioDeviceInfo audioDeviceInfo : this.f7678y.getDevices(2)) {
                    arrayList4.add(new KeyMapSelectBean(((Object) audioDeviceInfo.getProductName()) + "(" + audioDeviceInfo.getId() + ")", audioDeviceInfo.getId()));
                }
            } catch (Exception unused3) {
            }
        }
        this.E = (ConstraintLayout) findViewById(R.id.v_speaker);
        TextView textView4 = (TextView) findViewById(R.id.v_speaker_name);
        textView4.setText(this.r.gn_name);
        this.E.setOnClickListener(new c6.c(this, i10, textView4));
        this.z = (TextView) findViewById(R.id.v_vol);
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek);
        this.f7666i = appCompatSeekBar;
        appCompatSeekBar.setOnSeekBarChangeListener(new q3(this, 0));
        this.f7666i.setMax(100);
        this.f7666i.setProgress(80);
        this.A = (TextView) findViewById(R.id.v_gain);
        AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) findViewById(R.id.v_seek_gain);
        this.f7667j = appCompatSeekBar2;
        appCompatSeekBar2.setMax(80);
        this.f7667j.setProgress(0);
        this.f7667j.setOnSeekBarChangeListener(new q3(this, 1));
        TextView textView5 = (TextView) findViewById(R.id.v_btn_xz);
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add("选择文件夹");
        arrayList5.add("选择音频文件");
        arrayList5.add("选择普通文件");
        textView5.setOnClickListener(new k3(this, textView5, arrayList5));
        findViewById(R.id.v_btn_yes).setOnClickListener(new View.OnClickListener(this) { // from class: ha.p3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ r3 f7567b;

            {
                this.f7567b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
                switch (i11) {
                    case 0:
                        r3 r3Var = this.f7567b;
                        if (r3Var.f7677x.b() != 0) {
                            if (r3Var.f7677x.b() == 1 && !((x9.w3) r3Var.f7677x.t(0)).f18366c) {
                                com.yunpan.appmanage.util.a0.u("仅有一个文件");
                                break;
                            } else {
                                List listV = r3Var.f7677x.v();
                                int i17 = r3Var.f7673s.gn_type;
                                int progress = r3Var.f7666i.getProgress();
                                KeyMapSelectBean keyMapSelectBean4 = r3Var.f7671p;
                                KeyMapSelectBean keyMapSelectBean5 = r3Var.f7672q;
                                KeyMapSelectBean keyMapSelectBean6 = r3Var.r;
                                int progress2 = r3Var.f7667j.getProgress() * 100;
                                h8 h8Var = r3Var.f7664g;
                                int i18 = h8Var.f7155b;
                                int i19 = h8Var.f7156c;
                                String str = h8Var.f7157d;
                                ea.e eVar = h8Var.f7158e;
                                try {
                                    z7.s sVar = new z7.s();
                                    sVar.l("keyType", Integer.valueOf(i18));
                                    sVar.l("gnType", Integer.valueOf(i19));
                                    sVar.m("name", str);
                                    z7.o oVar = new z7.o();
                                    Iterator it = listV.iterator();
                                    while (it.hasNext()) {
                                        oVar.j(((x9.w3) it.next()).f18365b);
                                    }
                                    sVar.j("list", oVar);
                                    sVar.l("int1", Integer.valueOf(progress));
                                    sVar.l("volumeType", Integer.valueOf(i17));
                                    sVar.l("tdType", Integer.valueOf(keyMapSelectBean4.gn_type));
                                    sVar.l("focusType", Integer.valueOf(keyMapSelectBean5.gn_type));
                                    sVar.l("speakerId", Integer.valueOf(keyMapSelectBean6.gn_type));
                                    sVar.l("volumeGain", Integer.valueOf(progress2));
                                    eVar.k(sVar);
                                } catch (Exception unused4) {
                                }
                                r3Var.dismiss();
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("请选择文件");
                            break;
                        }
                        break;
                    default:
                        r3.a(this.f7567b);
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7676w = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.d0 d0Var = new x9.d0();
        this.f7677x = d0Var;
        this.f7676w.setAdapter(d0Var);
        this.f7677x.f2881e = new o3(this);
        TextView textView6 = (TextView) findViewById(R.id.v_btn_bf);
        this.f7665h = textView6;
        textView6.setOnClickListener(new View.OnClickListener(this) { // from class: ha.p3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ r3 f7567b;

            {
                this.f7567b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
                switch (i12) {
                    case 0:
                        r3 r3Var = this.f7567b;
                        if (r3Var.f7677x.b() != 0) {
                            if (r3Var.f7677x.b() == 1 && !((x9.w3) r3Var.f7677x.t(0)).f18366c) {
                                com.yunpan.appmanage.util.a0.u("仅有一个文件");
                                break;
                            } else {
                                List listV = r3Var.f7677x.v();
                                int i17 = r3Var.f7673s.gn_type;
                                int progress = r3Var.f7666i.getProgress();
                                KeyMapSelectBean keyMapSelectBean4 = r3Var.f7671p;
                                KeyMapSelectBean keyMapSelectBean5 = r3Var.f7672q;
                                KeyMapSelectBean keyMapSelectBean6 = r3Var.r;
                                int progress2 = r3Var.f7667j.getProgress() * 100;
                                h8 h8Var = r3Var.f7664g;
                                int i18 = h8Var.f7155b;
                                int i19 = h8Var.f7156c;
                                String str = h8Var.f7157d;
                                ea.e eVar = h8Var.f7158e;
                                try {
                                    z7.s sVar = new z7.s();
                                    sVar.l("keyType", Integer.valueOf(i18));
                                    sVar.l("gnType", Integer.valueOf(i19));
                                    sVar.m("name", str);
                                    z7.o oVar = new z7.o();
                                    Iterator it = listV.iterator();
                                    while (it.hasNext()) {
                                        oVar.j(((x9.w3) it.next()).f18365b);
                                    }
                                    sVar.j("list", oVar);
                                    sVar.l("int1", Integer.valueOf(progress));
                                    sVar.l("volumeType", Integer.valueOf(i17));
                                    sVar.l("tdType", Integer.valueOf(keyMapSelectBean4.gn_type));
                                    sVar.l("focusType", Integer.valueOf(keyMapSelectBean5.gn_type));
                                    sVar.l("speakerId", Integer.valueOf(keyMapSelectBean6.gn_type));
                                    sVar.l("volumeGain", Integer.valueOf(progress2));
                                    eVar.k(sVar);
                                } catch (Exception unused4) {
                                }
                                r3Var.dismiss();
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("请选择文件");
                            break;
                        }
                        break;
                    default:
                        r3.a(this.f7567b);
                        break;
                }
            }
        });
    }
}
