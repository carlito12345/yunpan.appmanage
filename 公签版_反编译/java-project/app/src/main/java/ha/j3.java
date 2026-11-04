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
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.service.StartService;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class j3 extends a4 {
    public AudioManager A;
    public TextView B;
    public TextView C;
    public LoudnessEnhancer D;
    public final AtomicBoolean E;
    public final ArrayList F;
    public ConstraintLayout G;
    public AudioFocusRequest H;
    public c3 I;

    /* renamed from: g, reason: collision with root package name */
    public final i3 f7238g;

    /* renamed from: h, reason: collision with root package name */
    public x9.w3 f7239h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7240i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7241j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f7242k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public AppCompatSeekBar f7243m;

    /* renamed from: n, reason: collision with root package name */
    public AppCompatSeekBar f7244n;

    /* renamed from: p, reason: collision with root package name */
    public MediaPlayer f7245p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f7246q;
    public AudioTrack r;

    /* renamed from: s, reason: collision with root package name */
    public final ExecutorService f7247s;

    /* renamed from: t, reason: collision with root package name */
    public KeyMapSelectBean f7248t;

    /* renamed from: v, reason: collision with root package name */
    public KeyMapSelectBean f7249v;

    /* renamed from: w, reason: collision with root package name */
    public KeyMapSelectBean f7250w;

    /* renamed from: x, reason: collision with root package name */
    public KeyMapSelectBean f7251x;

    /* renamed from: y, reason: collision with root package name */
    public int f7252y;
    public int z;

    public j3(Activity activity, Context context, i3 i3Var) {
        super(activity, context, R.layout.dialog_audio_add);
        this.f7246q = false;
        this.r = null;
        this.f7247s = Executors.newFixedThreadPool(1);
        this.f7252y = -1;
        this.z = -1;
        this.D = null;
        this.E = new AtomicBoolean(false);
        this.F = new ArrayList();
        this.f7238g = i3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v21, types: [android.media.AudioManager$OnAudioFocusChangeListener, ha.c3] */
    public static void a(final j3 j3Var) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i10;
        if (j3Var.f7239h == null) {
            com.yunpan.appmanage.util.a0.u("请选择文件");
            return;
        }
        int i11 = 0;
        if (j3Var.l.getText().toString().startsWith("停止")) {
            j3Var.l.setText("试听播放");
            int i12 = j3Var.f7252y;
            if (i12 >= 0 && (i10 = j3Var.z) >= 0) {
                if (i12 >= 100) {
                    com.yunpan.appmanage.carsdk.j0.f3843a.h(i12 - 100, i10);
                } else {
                    j3Var.A.setStreamVolume(i12, i10, 0);
                }
                j3Var.f7252y = -1;
                j3Var.z = -1;
            }
            j3Var.f7246q = true;
            LoudnessEnhancer loudnessEnhancer = j3Var.D;
            if (loudnessEnhancer != null) {
                try {
                    loudnessEnhancer.release();
                } catch (Exception unused) {
                }
                j3Var.D = null;
            }
            MediaPlayer mediaPlayer = j3Var.f7245p;
            if (mediaPlayer != null) {
                try {
                    mediaPlayer.stop();
                } catch (Exception unused2) {
                }
                try {
                    j3Var.f7245p.release();
                } catch (Exception unused3) {
                } catch (Throwable th2) {
                    j3Var.f7245p = null;
                    throw th2;
                }
                j3Var.f7245p = null;
            }
            AudioTrack audioTrack = j3Var.r;
            if (audioTrack != null) {
                try {
                    if (Build.VERSION.SDK_INT >= 23) {
                        audioTrack.setPreferredDevice(null);
                    }
                    j3Var.r.stop();
                    j3Var.r.flush();
                } catch (Exception unused4) {
                }
                try {
                    j3Var.r.release();
                } catch (Exception unused5) {
                } catch (Throwable th3) {
                    j3Var.r = null;
                    throw th3;
                }
                j3Var.r = null;
            }
            j3Var.c();
            return;
        }
        if (j3Var.f7239h.f18365b == null) {
            com.yunpan.appmanage.util.a0.u("请选择文件");
            return;
        }
        j3Var.l.setText("停止试听");
        int i13 = j3Var.f7249v.gn_type;
        if (i13 != -1 && i13 <= 50) {
            if (Build.VERSION.SDK_INT >= 26) {
                AudioFocusRequest.Builder builder = new AudioFocusRequest.Builder(i13);
                builder.setAudioAttributes(new AudioAttributes.Builder().setUsage(12).build());
                final int i14 = 0;
                builder.setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener(j3Var) { // from class: ha.c3

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ j3 f6844b;

                    {
                        this.f6844b = j3Var;
                    }

                    @Override // android.media.AudioManager.OnAudioFocusChangeListener
                    public final void onAudioFocusChange(int i15) {
                        switch (i14) {
                            case 0:
                                j3 j3Var2 = this.f6844b;
                                j3Var2.getClass();
                                if (i15 == -3 || i15 == -2 || i15 == -1) {
                                    j3Var2.c();
                                    break;
                                }
                                break;
                            default:
                                j3 j3Var3 = this.f6844b;
                                j3Var3.getClass();
                                if (i15 == -3 || i15 == -2 || i15 == -1) {
                                    j3Var3.c();
                                    break;
                                }
                                break;
                        }
                    }
                });
                AudioFocusRequest audioFocusRequestBuild = builder.build();
                j3Var.H = audioFocusRequestBuild;
                if (j3Var.A.requestAudioFocus(audioFocusRequestBuild) != 1) {
                    j3Var.H = null;
                }
            } else {
                final int i15 = 1;
                ?? r22 = new AudioManager.OnAudioFocusChangeListener(j3Var) { // from class: ha.c3

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ j3 f6844b;

                    {
                        this.f6844b = j3Var;
                    }

                    @Override // android.media.AudioManager.OnAudioFocusChangeListener
                    public final void onAudioFocusChange(int i152) {
                        switch (i15) {
                            case 0:
                                j3 j3Var2 = this.f6844b;
                                j3Var2.getClass();
                                if (i152 == -3 || i152 == -2 || i152 == -1) {
                                    j3Var2.c();
                                    break;
                                }
                                break;
                            default:
                                j3 j3Var3 = this.f6844b;
                                j3Var3.getClass();
                                if (i152 == -3 || i152 == -2 || i152 == -1) {
                                    j3Var3.c();
                                    break;
                                }
                                break;
                        }
                    }
                };
                j3Var.I = r22;
                if (j3Var.A.requestAudioFocus(r22, 5, i13) != 1) {
                    j3Var.I = null;
                }
            }
        }
        if (!j3Var.f7239h.f18365b.toLowerCase().endsWith(".pcm")) {
            MediaPlayer mediaPlayer2 = new MediaPlayer();
            j3Var.f7245p = mediaPlayer2;
            try {
                mediaPlayer2.setDataSource(wa.t.f17728a.f17735d, Uri.fromFile(new File(j3Var.f7239h.f18365b)));
                MediaPlayer mediaPlayer3 = j3Var.f7245p;
                if (mediaPlayer3 != null) {
                    try {
                        int i16 = Build.VERSION.SDK_INT;
                        if (i16 >= 21) {
                            AudioAttributes.Builder builder2 = new AudioAttributes.Builder();
                            builder2.setUsage(j3Var.f7248t.gn_type);
                            builder2.setContentType(2);
                            if (i16 >= 29) {
                                builder2.setHapticChannelsMuted(true);
                            }
                            j3Var.f7245p.setAudioAttributes(builder2.build());
                        } else {
                            mediaPlayer3.setAudioStreamType(j3Var.f7248t.gn_type);
                        }
                        if (i16 >= 28 && j3Var.f7250w.gn_type != -1) {
                            AudioDeviceInfo[] devices = j3Var.A.getDevices(2);
                            int length = devices.length;
                            while (true) {
                                if (i11 >= length) {
                                    break;
                                }
                                AudioDeviceInfo audioDeviceInfo = devices[i11];
                                if (audioDeviceInfo.getId() == j3Var.f7250w.gn_type) {
                                    j3Var.f7245p.setPreferredDevice(audioDeviceInfo);
                                    break;
                                }
                                i11++;
                            }
                        }
                        j3Var.f7245p.setOnPreparedListener(new e3(j3Var, 0));
                        j3Var.f7245p.setOnCompletionListener(new f3(j3Var, 0));
                        j3Var.f7245p.prepareAsync();
                        return;
                    } catch (Exception unused6) {
                        com.yunpan.appmanage.util.a0.u("警告：系统不支持此通道");
                        j3Var.f7245p.release();
                        j3Var.f7245p = null;
                        j3Var.c();
                        j3Var.l.setText("试听播放");
                        return;
                    }
                }
                return;
            } catch (IOException e7) {
                com.yunpan.appmanage.util.a0.u("报错：" + e7.getMessage());
                j3Var.f7245p.release();
                j3Var.f7245p = null;
                j3Var.c();
                j3Var.l.setText("试听播放");
                return;
            }
        }
        if (j3Var.r == null) {
            int minBufferSize = AudioTrack.getMinBufferSize(44100, 4, 2);
            try {
                if (Build.VERSION.SDK_INT >= 21) {
                    AudioTrack audioTrack2 = new AudioTrack(new AudioAttributes.Builder().setUsage(j3Var.f7248t.gn_type).setContentType(2).build(), new AudioFormat.Builder().setEncoding(2).setSampleRate(44100).setChannelMask(4).build(), minBufferSize, 1, 0);
                    j3Var.r = audioTrack2;
                    audioTrack2.setVolume(AudioTrack.getMaxVolume());
                } else {
                    j3Var.r = new AudioTrack(j3Var.f7248t.gn_type, 44100, 4, 2, minBufferSize, 1);
                }
            } catch (Exception unused7) {
                com.yunpan.appmanage.util.a0.u("警告：系统不支持此通道");
                j3Var.l.setText("试听播放");
                j3Var.c();
                return;
            }
        }
        if (Build.VERSION.SDK_INT >= 23 && j3Var.f7250w.gn_type != -1) {
            AudioDeviceInfo[] devices2 = j3Var.A.getDevices(2);
            int length2 = devices2.length;
            int i17 = 0;
            while (true) {
                if (i17 < length2) {
                    AudioDeviceInfo audioDeviceInfo2 = devices2[i17];
                    if (audioDeviceInfo2.getId() == j3Var.f7250w.gn_type) {
                        j3Var.r.setPreferredDevice(audioDeviceInfo2);
                        break;
                    }
                    i17++;
                }
            }
        }
        try {
            j3Var.r.play();
            int i18 = j3Var.f7251x.gn_type;
            if (i18 >= 0) {
                j3Var.f7252y = i18;
                if (i18 >= 100) {
                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                    j3Var.z = k0Var.f(i18 - 100);
                    k0Var.h(j3Var.f7251x.gn_type - 100, j3Var.f7243m.getProgress());
                } else {
                    j3Var.z = j3Var.A.getStreamVolume(i18);
                    j3Var.A.setStreamVolume(j3Var.f7251x.gn_type, j3Var.f7243m.getProgress(), 0);
                }
            }
            if (Build.VERSION.SDK_INT >= 19 && j3Var.f7244n.getProgress() > 0) {
                LoudnessEnhancer loudnessEnhancer2 = new LoudnessEnhancer(j3Var.r.getAudioSessionId());
                j3Var.D = loudnessEnhancer2;
                loudnessEnhancer2.setTargetGain(j3Var.f7244n.getProgress() * 100);
                j3Var.D.setEnabled(true);
            }
            j3Var.f7246q = false;
            j3Var.f7247s.submit(new b3(j3Var, 1));
        } catch (IllegalStateException e10) {
            com.yunpan.appmanage.util.a0.u("报错：" + e10.getMessage());
            j3Var.l.setText("试听播放");
            j3Var.c();
        }
    }

    public static void b(j3 j3Var, MediaPlayer mediaPlayer) {
        int i10;
        int i11 = j3Var.f7251x.gn_type;
        if (i11 >= 0) {
            j3Var.f7252y = i11;
            if (i11 >= 100) {
                com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                j3Var.z = k0Var.f(i11 - 100);
                k0Var.h(j3Var.f7252y - 100, j3Var.f7243m.getProgress());
            } else {
                j3Var.z = j3Var.A.getStreamVolume(i11);
                j3Var.A.setStreamVolume(j3Var.f7251x.gn_type, j3Var.f7243m.getProgress(), 0);
            }
        }
        if (Build.VERSION.SDK_INT >= 19 && j3Var.f7244n.getProgress() > 0) {
            LoudnessEnhancer loudnessEnhancer = new LoudnessEnhancer(j3Var.f7245p.getAudioSessionId());
            j3Var.D = loudnessEnhancer;
            loudnessEnhancer.setTargetGain(j3Var.f7244n.getProgress() * 100);
            j3Var.D.setEnabled(true);
        }
        try {
            mediaPlayer.start();
        } catch (Exception e7) {
            com.yunpan.appmanage.util.a0.u("报错：" + e7.getMessage());
            if (j3Var.f7252y >= 0 && (i10 = j3Var.z) >= 0) {
                int i12 = j3Var.f7252y;
                if (i12 >= 100) {
                    com.yunpan.appmanage.carsdk.j0.f3843a.h(i12 - 100, i10);
                } else {
                    j3Var.A.setStreamVolume(i12, i10, 0);
                }
                j3Var.f7252y = -1;
                j3Var.z = -1;
            }
            LoudnessEnhancer loudnessEnhancer2 = j3Var.D;
            if (loudnessEnhancer2 != null) {
                try {
                    loudnessEnhancer2.release();
                } catch (Exception unused) {
                }
                j3Var.D = null;
            }
            j3Var.f7245p.release();
            j3Var.f7245p = null;
            j3Var.c();
            j3Var.l.setText("试听播放");
        }
    }

    public final void c() {
        AudioManager audioManager = (AudioManager) this.f6725b.getSystemService("audio");
        if (Build.VERSION.SDK_INT < 26) {
            if (this.I != null) {
                audioManager.abandonAudioFocus(null);
                this.I = null;
                return;
            }
            return;
        }
        AudioFocusRequest audioFocusRequest = this.H;
        if (audioFocusRequest != null) {
            audioManager.abandonAudioFocusRequest(audioFocusRequest);
            this.H = null;
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() throws IllegalStateException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10;
        this.E.set(true);
        int i11 = this.z;
        if (i11 >= 0 && (i10 = this.f7252y) >= 0) {
            if (i10 >= 100) {
                com.yunpan.appmanage.carsdk.j0.f3843a.h(i10 - 100, i11);
            } else {
                this.A.setStreamVolume(i10, i11, 0);
            }
        }
        MediaPlayer mediaPlayer = this.f7245p;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
                this.f7245p.release();
            } catch (Exception unused) {
            }
        }
        LoudnessEnhancer loudnessEnhancer = this.D;
        if (loudnessEnhancer != null) {
            try {
                loudnessEnhancer.release();
            } catch (Exception unused2) {
            }
            this.D = null;
        }
        this.f7246q = true;
        this.f7247s.shutdown();
        AudioTrack audioTrack = this.r;
        if (audioTrack != null) {
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    audioTrack.setPreferredDevice(null);
                }
                this.r.stop();
            } catch (Exception unused3) {
            }
            try {
                this.r.flush();
            } catch (Exception unused4) {
            }
            try {
                this.r.release();
            } catch (Exception unused5) {
            }
        }
        c();
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i10 = 4;
        final int i11 = 3;
        final int i12 = 2;
        final int i13 = 0;
        final int i14 = 1;
        super.onCreate(bundle);
        Context context = this.f6725b;
        this.A = (AudioManager) context.getSystemService("audio");
        final ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 21) {
            for (int i15 = 0; i15 < 101; i15++) {
                try {
                    new AudioAttributes.Builder().setUsage(i15);
                    arrayList.add(new KeyMapSelectBean(da.b.a(i15, "通道"), i15));
                } catch (Exception unused) {
                }
            }
        } else {
            for (int i16 = 0; i16 < 16; i16++) {
                arrayList.add(new KeyMapSelectBean(da.b.a(i16, "通道"), i16));
            }
        }
        int i17 = Build.VERSION.SDK_INT;
        if (i17 >= 21) {
            this.f7248t = new KeyMapSelectBean("通道1", 1);
        } else {
            this.f7248t = new KeyMapSelectBean("通道3", 3);
        }
        final TextView textView = (TextView) findViewById(R.id.v_type_td_name);
        textView.setText(this.f7248t.gn_name);
        findViewById(R.id.v_type_td).setOnClickListener(new View.OnClickListener(this) { // from class: ha.x2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j3 f8034b;

            {
                this.f8034b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        final j3 j3Var = this.f8034b;
                        j3Var.getClass();
                        final ArrayList arrayList2 = arrayList;
                        final TextView textView2 = textView;
                        final int i18 = 0;
                        new ie(j3Var.f6724a, j3Var.f6725b, arrayList2, new he() { // from class: ha.z2
                            @Override // ha.he, ha.ea
                            public final void b(int i19) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i18) {
                                    case 0:
                                        j3 j3Var2 = j3Var;
                                        j3Var2.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList2.get(i19);
                                        j3Var2.f7249v = keyMapSelectBean;
                                        textView2.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        j3 j3Var3 = j3Var;
                                        j3Var3.getClass();
                                        ArrayList arrayList3 = arrayList2;
                                        int i20 = ((KeyMapSelectBean) arrayList3.get(i19)).gn_type;
                                        TextView textView3 = textView2;
                                        if (i20 == -1) {
                                            KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList3.get(i19);
                                            j3Var3.f7251x = keyMapSelectBean2;
                                            textView3.setText(keyMapSelectBean2.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList3.get(i19)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList3.get(i19)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList3.get(i19)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = j3Var3.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList3.get(i19)).gn_type);
                                                    streamVolume = j3Var3.A.getStreamVolume(((KeyMapSelectBean) arrayList3.get(i19)).gn_type);
                                                }
                                                j3Var3.f7243m.setProgress(0);
                                                j3Var3.f7243m.setMax(streamMaxVolume);
                                                j3Var3.f7243m.setProgress(streamVolume);
                                                j3Var3.B.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList3.get(i19);
                                                j3Var3.f7251x = keyMapSelectBean3;
                                                textView3.setText(keyMapSelectBean3.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                                return;
                                            }
                                        }
                                    default:
                                        j3 j3Var4 = j3Var;
                                        j3Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList2.get(i19);
                                        j3Var4.f7248t = keyMapSelectBean4;
                                        textView2.setText(keyMapSelectBean4.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final j3 j3Var2 = this.f8034b;
                        j3Var2.getClass();
                        final ArrayList arrayList3 = arrayList;
                        final TextView textView3 = textView;
                        final int i19 = 1;
                        new ie(j3Var2.f6724a, j3Var2.f6725b, arrayList3, new he() { // from class: ha.z2
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i19) {
                                    case 0:
                                        j3 j3Var22 = j3Var2;
                                        j3Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList3.get(i192);
                                        j3Var22.f7249v = keyMapSelectBean;
                                        textView3.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        j3 j3Var3 = j3Var2;
                                        j3Var3.getClass();
                                        ArrayList arrayList32 = arrayList3;
                                        int i20 = ((KeyMapSelectBean) arrayList32.get(i192)).gn_type;
                                        TextView textView32 = textView3;
                                        if (i20 == -1) {
                                            KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList32.get(i192);
                                            j3Var3.f7251x = keyMapSelectBean2;
                                            textView32.setText(keyMapSelectBean2.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i192)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = j3Var3.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                    streamVolume = j3Var3.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                }
                                                j3Var3.f7243m.setProgress(0);
                                                j3Var3.f7243m.setMax(streamMaxVolume);
                                                j3Var3.f7243m.setProgress(streamVolume);
                                                j3Var3.B.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i192);
                                                j3Var3.f7251x = keyMapSelectBean3;
                                                textView32.setText(keyMapSelectBean3.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                                return;
                                            }
                                        }
                                    default:
                                        j3 j3Var4 = j3Var2;
                                        j3Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList3.get(i192);
                                        j3Var4.f7248t = keyMapSelectBean4;
                                        textView3.setText(keyMapSelectBean4.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    default:
                        final j3 j3Var3 = this.f8034b;
                        j3Var3.getClass();
                        final ArrayList arrayList4 = arrayList;
                        final TextView textView4 = textView;
                        final int i20 = 2;
                        new ie(j3Var3.f6724a, j3Var3.f6725b, arrayList4, new he() { // from class: ha.z2
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i20) {
                                    case 0:
                                        j3 j3Var22 = j3Var3;
                                        j3Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList4.get(i192);
                                        j3Var22.f7249v = keyMapSelectBean;
                                        textView4.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        j3 j3Var32 = j3Var3;
                                        j3Var32.getClass();
                                        ArrayList arrayList32 = arrayList4;
                                        int i202 = ((KeyMapSelectBean) arrayList32.get(i192)).gn_type;
                                        TextView textView32 = textView4;
                                        if (i202 == -1) {
                                            KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList32.get(i192);
                                            j3Var32.f7251x = keyMapSelectBean2;
                                            textView32.setText(keyMapSelectBean2.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i192)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = j3Var32.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                    streamVolume = j3Var32.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                }
                                                j3Var32.f7243m.setProgress(0);
                                                j3Var32.f7243m.setMax(streamMaxVolume);
                                                j3Var32.f7243m.setProgress(streamVolume);
                                                j3Var32.B.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i192);
                                                j3Var32.f7251x = keyMapSelectBean3;
                                                textView32.setText(keyMapSelectBean3.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                                return;
                                            }
                                        }
                                    default:
                                        j3 j3Var4 = j3Var3;
                                        j3Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList4.get(i192);
                                        j3Var4.f7248t = keyMapSelectBean4;
                                        textView4.setText(keyMapSelectBean4.gn_name);
                                        break;
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
        this.f7249v = keyMapSelectBean;
        arrayList2.add(keyMapSelectBean);
        if (i17 >= 21) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j || p000if.a.h0(context, StartService.class)) {
                g.b.u("播放时暂停其它音乐app音频(智)", 200, arrayList2);
            }
        }
        final TextView textView2 = (TextView) findViewById(R.id.v_zhk_focus_name);
        textView2.setText(this.f7249v.gn_name);
        findViewById(R.id.v_zhk_focus).setOnClickListener(new View.OnClickListener(this) { // from class: ha.x2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j3 f8034b;

            {
                this.f8034b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i13) {
                    case 0:
                        final j3 j3Var = this.f8034b;
                        j3Var.getClass();
                        final ArrayList arrayList22 = arrayList2;
                        final TextView textView22 = textView2;
                        final int i18 = 0;
                        new ie(j3Var.f6724a, j3Var.f6725b, arrayList22, new he() { // from class: ha.z2
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i18) {
                                    case 0:
                                        j3 j3Var22 = j3Var;
                                        j3Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList22.get(i192);
                                        j3Var22.f7249v = keyMapSelectBean2;
                                        textView22.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        j3 j3Var32 = j3Var;
                                        j3Var32.getClass();
                                        ArrayList arrayList32 = arrayList22;
                                        int i202 = ((KeyMapSelectBean) arrayList32.get(i192)).gn_type;
                                        TextView textView32 = textView22;
                                        if (i202 == -1) {
                                            KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList32.get(i192);
                                            j3Var32.f7251x = keyMapSelectBean22;
                                            textView32.setText(keyMapSelectBean22.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i192)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = j3Var32.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                    streamVolume = j3Var32.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                }
                                                j3Var32.f7243m.setProgress(0);
                                                j3Var32.f7243m.setMax(streamMaxVolume);
                                                j3Var32.f7243m.setProgress(streamVolume);
                                                j3Var32.B.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i192);
                                                j3Var32.f7251x = keyMapSelectBean3;
                                                textView32.setText(keyMapSelectBean3.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                                return;
                                            }
                                        }
                                    default:
                                        j3 j3Var4 = j3Var;
                                        j3Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList22.get(i192);
                                        j3Var4.f7248t = keyMapSelectBean4;
                                        textView22.setText(keyMapSelectBean4.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final j3 j3Var2 = this.f8034b;
                        j3Var2.getClass();
                        final ArrayList arrayList3 = arrayList2;
                        final TextView textView3 = textView2;
                        final int i19 = 1;
                        new ie(j3Var2.f6724a, j3Var2.f6725b, arrayList3, new he() { // from class: ha.z2
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i19) {
                                    case 0:
                                        j3 j3Var22 = j3Var2;
                                        j3Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList3.get(i192);
                                        j3Var22.f7249v = keyMapSelectBean2;
                                        textView3.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        j3 j3Var32 = j3Var2;
                                        j3Var32.getClass();
                                        ArrayList arrayList32 = arrayList3;
                                        int i202 = ((KeyMapSelectBean) arrayList32.get(i192)).gn_type;
                                        TextView textView32 = textView3;
                                        if (i202 == -1) {
                                            KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList32.get(i192);
                                            j3Var32.f7251x = keyMapSelectBean22;
                                            textView32.setText(keyMapSelectBean22.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i192)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = j3Var32.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                    streamVolume = j3Var32.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                }
                                                j3Var32.f7243m.setProgress(0);
                                                j3Var32.f7243m.setMax(streamMaxVolume);
                                                j3Var32.f7243m.setProgress(streamVolume);
                                                j3Var32.B.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i192);
                                                j3Var32.f7251x = keyMapSelectBean3;
                                                textView32.setText(keyMapSelectBean3.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                                return;
                                            }
                                        }
                                    default:
                                        j3 j3Var4 = j3Var2;
                                        j3Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList3.get(i192);
                                        j3Var4.f7248t = keyMapSelectBean4;
                                        textView3.setText(keyMapSelectBean4.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    default:
                        final j3 j3Var3 = this.f8034b;
                        j3Var3.getClass();
                        final ArrayList arrayList4 = arrayList2;
                        final TextView textView4 = textView2;
                        final int i20 = 2;
                        new ie(j3Var3.f6724a, j3Var3.f6725b, arrayList4, new he() { // from class: ha.z2
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i20) {
                                    case 0:
                                        j3 j3Var22 = j3Var3;
                                        j3Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList4.get(i192);
                                        j3Var22.f7249v = keyMapSelectBean2;
                                        textView4.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        j3 j3Var32 = j3Var3;
                                        j3Var32.getClass();
                                        ArrayList arrayList32 = arrayList4;
                                        int i202 = ((KeyMapSelectBean) arrayList32.get(i192)).gn_type;
                                        TextView textView32 = textView4;
                                        if (i202 == -1) {
                                            KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList32.get(i192);
                                            j3Var32.f7251x = keyMapSelectBean22;
                                            textView32.setText(keyMapSelectBean22.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i192)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = j3Var32.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                    streamVolume = j3Var32.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                }
                                                j3Var32.f7243m.setProgress(0);
                                                j3Var32.f7243m.setMax(streamMaxVolume);
                                                j3Var32.f7243m.setProgress(streamVolume);
                                                j3Var32.B.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i192);
                                                j3Var32.f7251x = keyMapSelectBean3;
                                                textView32.setText(keyMapSelectBean3.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                                return;
                                            }
                                        }
                                    default:
                                        j3 j3Var4 = j3Var3;
                                        j3Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList4.get(i192);
                                        j3Var4.f7248t = keyMapSelectBean4;
                                        textView4.setText(keyMapSelectBean4.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                }
            }
        });
        final ArrayList arrayList3 = new ArrayList();
        KeyMapSelectBean keyMapSelectBean2 = new KeyMapSelectBean("不修改系统音量", -1);
        this.f7251x = keyMapSelectBean2;
        arrayList3.add(keyMapSelectBean2);
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(通话音量)", 0));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(系统音量)", 1));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(铃声音量)", 2));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(媒体音量)", 3));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(闹钟音量)", 4));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(通知音量)", 5));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(MF音量)", 8));
        if (i17 >= 26) {
            g.b.u("播放时修改音量(ACC音量)", 10, arrayList3);
        }
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(6)", 6));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(7)", 7));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(9)", 9));
        arrayList3.add(new KeyMapSelectBean("播放时修改音量(11)", 11));
        if (i17 >= 26 && com.yunpan.appmanage.carsdk.j0.f3843a.f3848d != null) {
            for (int i18 = 0; i18 < 32; i18++) {
                try {
                    if (com.yunpan.appmanage.carsdk.j0.f3843a.d(i18 - 100) > 0) {
                        arrayList3.add(new KeyMapSelectBean("播放时修改音量(Car通道0)", i18 + 100));
                    }
                } catch (Exception unused2) {
                }
            }
        }
        final TextView textView3 = (TextView) findViewById(R.id.v_type_vol_name);
        textView3.setText(this.f7251x.gn_name);
        findViewById(R.id.v_type_vol).setOnClickListener(new View.OnClickListener(this) { // from class: ha.x2

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j3 f8034b;

            {
                this.f8034b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i14) {
                    case 0:
                        final j3 j3Var = this.f8034b;
                        j3Var.getClass();
                        final ArrayList arrayList22 = arrayList3;
                        final TextView textView22 = textView3;
                        final int i182 = 0;
                        new ie(j3Var.f6724a, j3Var.f6725b, arrayList22, new he() { // from class: ha.z2
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i182) {
                                    case 0:
                                        j3 j3Var22 = j3Var;
                                        j3Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList22.get(i192);
                                        j3Var22.f7249v = keyMapSelectBean22;
                                        textView22.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        j3 j3Var32 = j3Var;
                                        j3Var32.getClass();
                                        ArrayList arrayList32 = arrayList22;
                                        int i202 = ((KeyMapSelectBean) arrayList32.get(i192)).gn_type;
                                        TextView textView32 = textView22;
                                        if (i202 == -1) {
                                            KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList32.get(i192);
                                            j3Var32.f7251x = keyMapSelectBean222;
                                            textView32.setText(keyMapSelectBean222.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList32.get(i192)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList32.get(i192)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = j3Var32.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                    streamVolume = j3Var32.A.getStreamVolume(((KeyMapSelectBean) arrayList32.get(i192)).gn_type);
                                                }
                                                j3Var32.f7243m.setProgress(0);
                                                j3Var32.f7243m.setMax(streamMaxVolume);
                                                j3Var32.f7243m.setProgress(streamVolume);
                                                j3Var32.B.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i192);
                                                j3Var32.f7251x = keyMapSelectBean3;
                                                textView32.setText(keyMapSelectBean3.gn_name);
                                                break;
                                            } catch (Exception unused22) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                                return;
                                            }
                                        }
                                    default:
                                        j3 j3Var4 = j3Var;
                                        j3Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList22.get(i192);
                                        j3Var4.f7248t = keyMapSelectBean4;
                                        textView22.setText(keyMapSelectBean4.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    case 1:
                        final j3 j3Var2 = this.f8034b;
                        j3Var2.getClass();
                        final ArrayList arrayList32 = arrayList3;
                        final TextView textView32 = textView3;
                        final int i19 = 1;
                        new ie(j3Var2.f6724a, j3Var2.f6725b, arrayList32, new he() { // from class: ha.z2
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i19) {
                                    case 0:
                                        j3 j3Var22 = j3Var2;
                                        j3Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList32.get(i192);
                                        j3Var22.f7249v = keyMapSelectBean22;
                                        textView32.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        j3 j3Var32 = j3Var2;
                                        j3Var32.getClass();
                                        ArrayList arrayList322 = arrayList32;
                                        int i202 = ((KeyMapSelectBean) arrayList322.get(i192)).gn_type;
                                        TextView textView322 = textView32;
                                        if (i202 == -1) {
                                            KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList322.get(i192);
                                            j3Var32.f7251x = keyMapSelectBean222;
                                            textView322.setText(keyMapSelectBean222.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList322.get(i192)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList322.get(i192)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList322.get(i192)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = j3Var32.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i192)).gn_type);
                                                    streamVolume = j3Var32.A.getStreamVolume(((KeyMapSelectBean) arrayList322.get(i192)).gn_type);
                                                }
                                                j3Var32.f7243m.setProgress(0);
                                                j3Var32.f7243m.setMax(streamMaxVolume);
                                                j3Var32.f7243m.setProgress(streamVolume);
                                                j3Var32.B.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList322.get(i192);
                                                j3Var32.f7251x = keyMapSelectBean3;
                                                textView322.setText(keyMapSelectBean3.gn_name);
                                                break;
                                            } catch (Exception unused22) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                                return;
                                            }
                                        }
                                    default:
                                        j3 j3Var4 = j3Var2;
                                        j3Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i192);
                                        j3Var4.f7248t = keyMapSelectBean4;
                                        textView32.setText(keyMapSelectBean4.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    default:
                        final j3 j3Var3 = this.f8034b;
                        j3Var3.getClass();
                        final ArrayList arrayList4 = arrayList3;
                        final TextView textView4 = textView3;
                        final int i20 = 2;
                        new ie(j3Var3.f6724a, j3Var3.f6725b, arrayList4, new he() { // from class: ha.z2
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                int streamMaxVolume;
                                int streamVolume;
                                switch (i20) {
                                    case 0:
                                        j3 j3Var22 = j3Var3;
                                        j3Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList4.get(i192);
                                        j3Var22.f7249v = keyMapSelectBean22;
                                        textView4.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        j3 j3Var32 = j3Var3;
                                        j3Var32.getClass();
                                        ArrayList arrayList322 = arrayList4;
                                        int i202 = ((KeyMapSelectBean) arrayList322.get(i192)).gn_type;
                                        TextView textView322 = textView4;
                                        if (i202 == -1) {
                                            KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList322.get(i192);
                                            j3Var32.f7251x = keyMapSelectBean222;
                                            textView322.setText(keyMapSelectBean222.gn_name);
                                            break;
                                        } else {
                                            try {
                                                if (((KeyMapSelectBean) arrayList322.get(i192)).gn_type >= 100) {
                                                    com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                                                    streamMaxVolume = k0Var.d(((KeyMapSelectBean) arrayList322.get(i192)).gn_type - 100);
                                                    streamVolume = k0Var.f(((KeyMapSelectBean) arrayList322.get(i192)).gn_type - 100);
                                                } else {
                                                    streamMaxVolume = j3Var32.A.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i192)).gn_type);
                                                    streamVolume = j3Var32.A.getStreamVolume(((KeyMapSelectBean) arrayList322.get(i192)).gn_type);
                                                }
                                                j3Var32.f7243m.setProgress(0);
                                                j3Var32.f7243m.setMax(streamMaxVolume);
                                                j3Var32.f7243m.setProgress(streamVolume);
                                                j3Var32.B.setText(String.valueOf(streamVolume));
                                                KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList322.get(i192);
                                                j3Var32.f7251x = keyMapSelectBean3;
                                                textView322.setText(keyMapSelectBean3.gn_name);
                                                break;
                                            } catch (Exception unused22) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                                return;
                                            }
                                        }
                                    default:
                                        j3 j3Var4 = j3Var3;
                                        j3Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList4.get(i192);
                                        j3Var4.f7248t = keyMapSelectBean4;
                                        textView4.setText(keyMapSelectBean4.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                }
            }
        });
        KeyMapSelectBean keyMapSelectBean3 = new KeyMapSelectBean("默认", -1);
        this.f7250w = keyMapSelectBean3;
        ArrayList arrayList4 = this.F;
        arrayList4.add(keyMapSelectBean3);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                for (AudioDeviceInfo audioDeviceInfo : this.A.getDevices(2)) {
                    arrayList4.add(new KeyMapSelectBean(((Object) audioDeviceInfo.getProductName()) + "(" + audioDeviceInfo.getId() + ")", audioDeviceInfo.getId()));
                }
            } catch (Exception unused3) {
            }
        }
        this.G = (ConstraintLayout) findViewById(R.id.v_speaker);
        TextView textView4 = (TextView) findViewById(R.id.v_speaker_name);
        textView4.setText(this.f7250w.gn_name);
        this.G.setOnClickListener(new c6.c(this, i10, textView4));
        TextView textView5 = (TextView) findViewById(R.id.v_btn_test);
        this.f7242k = textView5;
        textView5.setOnClickListener(new View.OnClickListener(this) { // from class: ha.d3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j3 f6885b;

            {
                this.f6885b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
                switch (i13) {
                    case 0:
                        j3 j3Var = this.f6885b;
                        boolean zStartsWith = j3Var.f7242k.getText().toString().startsWith("停止测试");
                        AtomicBoolean atomicBoolean = j3Var.E;
                        if (!zStartsWith) {
                            if (Build.VERSION.SDK_INT >= 23) {
                                j3Var.f7242k.setText("停止测试");
                                atomicBoolean.set(false);
                                new mc.c(0, new w2(j3Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(5, j3Var));
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.t("系统版本太低，不能使用此功能");
                                break;
                            }
                        } else {
                            atomicBoolean.set(true);
                            j3Var.f7242k.setText("测试通道");
                            break;
                        }
                    case 1:
                        j3 j3Var2 = this.f6885b;
                        j3Var2.getClass();
                        PopupMenu popupMenu = new PopupMenu(j3Var2.f6725b, view);
                        popupMenu.getMenuInflater().inflate(R.menu.menu_file_selected, popupMenu.getMenu());
                        popupMenu.setOnMenuItemClickListener(new y2(j3Var2, 0));
                        popupMenu.show();
                        break;
                    case 2:
                        j3.a(this.f6885b);
                        break;
                    default:
                        j3 j3Var3 = this.f6885b;
                        if (j3Var3.f7239h != null) {
                            if (j3Var3.f7243m.getProgress() >= 1) {
                                x9.w3 w3Var = j3Var3.f7239h;
                                int i19 = j3Var3.f7251x.gn_type;
                                j3Var3.f7238g.c(w3Var, i19, i19 == -1 ? -1 : j3Var3.f7243m.getProgress(), j3Var3.f7248t, j3Var3.f7249v, j3Var3.f7250w, j3Var3.f7244n.getProgress() * 100);
                                j3Var3.dismiss();
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.u("请设置播放音量");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("请选择文件");
                            break;
                        }
                }
            }
        });
        this.f7240i = (TextView) findViewById(R.id.v_text_app_name);
        TextView textView6 = (TextView) findViewById(R.id.v_btn_select);
        this.f7241j = textView6;
        textView6.requestFocus();
        this.f7241j.setOnClickListener(new View.OnClickListener(this) { // from class: ha.d3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j3 f6885b;

            {
                this.f6885b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
                switch (i14) {
                    case 0:
                        j3 j3Var = this.f6885b;
                        boolean zStartsWith = j3Var.f7242k.getText().toString().startsWith("停止测试");
                        AtomicBoolean atomicBoolean = j3Var.E;
                        if (!zStartsWith) {
                            if (Build.VERSION.SDK_INT >= 23) {
                                j3Var.f7242k.setText("停止测试");
                                atomicBoolean.set(false);
                                new mc.c(0, new w2(j3Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(5, j3Var));
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.t("系统版本太低，不能使用此功能");
                                break;
                            }
                        } else {
                            atomicBoolean.set(true);
                            j3Var.f7242k.setText("测试通道");
                            break;
                        }
                    case 1:
                        j3 j3Var2 = this.f6885b;
                        j3Var2.getClass();
                        PopupMenu popupMenu = new PopupMenu(j3Var2.f6725b, view);
                        popupMenu.getMenuInflater().inflate(R.menu.menu_file_selected, popupMenu.getMenu());
                        popupMenu.setOnMenuItemClickListener(new y2(j3Var2, 0));
                        popupMenu.show();
                        break;
                    case 2:
                        j3.a(this.f6885b);
                        break;
                    default:
                        j3 j3Var3 = this.f6885b;
                        if (j3Var3.f7239h != null) {
                            if (j3Var3.f7243m.getProgress() >= 1) {
                                x9.w3 w3Var = j3Var3.f7239h;
                                int i19 = j3Var3.f7251x.gn_type;
                                j3Var3.f7238g.c(w3Var, i19, i19 == -1 ? -1 : j3Var3.f7243m.getProgress(), j3Var3.f7248t, j3Var3.f7249v, j3Var3.f7250w, j3Var3.f7244n.getProgress() * 100);
                                j3Var3.dismiss();
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.u("请设置播放音量");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("请选择文件");
                            break;
                        }
                }
            }
        });
        this.B = (TextView) findViewById(R.id.v_vol);
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek);
        this.f7243m = appCompatSeekBar;
        appCompatSeekBar.setMax(100);
        this.f7243m.setProgress(80);
        this.f7243m.setOnSeekBarChangeListener(new g3(this, 0));
        this.C = (TextView) findViewById(R.id.v_gain);
        AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) findViewById(R.id.v_seek_gain);
        this.f7244n = appCompatSeekBar2;
        appCompatSeekBar2.setMax(80);
        this.f7244n.setProgress(0);
        this.f7244n.setOnSeekBarChangeListener(new g3(this, 1));
        TextView textView7 = (TextView) findViewById(R.id.v_btn_bf);
        this.l = textView7;
        textView7.setOnClickListener(new View.OnClickListener(this) { // from class: ha.d3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j3 f6885b;

            {
                this.f6885b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
                switch (i12) {
                    case 0:
                        j3 j3Var = this.f6885b;
                        boolean zStartsWith = j3Var.f7242k.getText().toString().startsWith("停止测试");
                        AtomicBoolean atomicBoolean = j3Var.E;
                        if (!zStartsWith) {
                            if (Build.VERSION.SDK_INT >= 23) {
                                j3Var.f7242k.setText("停止测试");
                                atomicBoolean.set(false);
                                new mc.c(0, new w2(j3Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(5, j3Var));
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.t("系统版本太低，不能使用此功能");
                                break;
                            }
                        } else {
                            atomicBoolean.set(true);
                            j3Var.f7242k.setText("测试通道");
                            break;
                        }
                    case 1:
                        j3 j3Var2 = this.f6885b;
                        j3Var2.getClass();
                        PopupMenu popupMenu = new PopupMenu(j3Var2.f6725b, view);
                        popupMenu.getMenuInflater().inflate(R.menu.menu_file_selected, popupMenu.getMenu());
                        popupMenu.setOnMenuItemClickListener(new y2(j3Var2, 0));
                        popupMenu.show();
                        break;
                    case 2:
                        j3.a(this.f6885b);
                        break;
                    default:
                        j3 j3Var3 = this.f6885b;
                        if (j3Var3.f7239h != null) {
                            if (j3Var3.f7243m.getProgress() >= 1) {
                                x9.w3 w3Var = j3Var3.f7239h;
                                int i19 = j3Var3.f7251x.gn_type;
                                j3Var3.f7238g.c(w3Var, i19, i19 == -1 ? -1 : j3Var3.f7243m.getProgress(), j3Var3.f7248t, j3Var3.f7249v, j3Var3.f7250w, j3Var3.f7244n.getProgress() * 100);
                                j3Var3.dismiss();
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.u("请设置播放音量");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("请选择文件");
                            break;
                        }
                }
            }
        });
        ((TextView) findViewById(R.id.v_btn_yes)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.d3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ j3 f6885b;

            {
                this.f6885b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, SecurityException, IllegalArgumentException, InvocationTargetException {
                switch (i11) {
                    case 0:
                        j3 j3Var = this.f6885b;
                        boolean zStartsWith = j3Var.f7242k.getText().toString().startsWith("停止测试");
                        AtomicBoolean atomicBoolean = j3Var.E;
                        if (!zStartsWith) {
                            if (Build.VERSION.SDK_INT >= 23) {
                                j3Var.f7242k.setText("停止测试");
                                atomicBoolean.set(false);
                                new mc.c(0, new w2(j3Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(5, j3Var));
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.t("系统版本太低，不能使用此功能");
                                break;
                            }
                        } else {
                            atomicBoolean.set(true);
                            j3Var.f7242k.setText("测试通道");
                            break;
                        }
                    case 1:
                        j3 j3Var2 = this.f6885b;
                        j3Var2.getClass();
                        PopupMenu popupMenu = new PopupMenu(j3Var2.f6725b, view);
                        popupMenu.getMenuInflater().inflate(R.menu.menu_file_selected, popupMenu.getMenu());
                        popupMenu.setOnMenuItemClickListener(new y2(j3Var2, 0));
                        popupMenu.show();
                        break;
                    case 2:
                        j3.a(this.f6885b);
                        break;
                    default:
                        j3 j3Var3 = this.f6885b;
                        if (j3Var3.f7239h != null) {
                            if (j3Var3.f7243m.getProgress() >= 1) {
                                x9.w3 w3Var = j3Var3.f7239h;
                                int i19 = j3Var3.f7251x.gn_type;
                                j3Var3.f7238g.c(w3Var, i19, i19 == -1 ? -1 : j3Var3.f7243m.getProgress(), j3Var3.f7248t, j3Var3.f7249v, j3Var3.f7250w, j3Var3.f7244n.getProgress() * 100);
                                j3Var3.dismiss();
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.u("请设置播放音量");
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.u("请选择文件");
                            break;
                        }
                }
            }
        });
    }
}
