package ha;

import android.app.Activity;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFocusRequest;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.permissions.XXPermissions;
import com.hjq.permissions.permission.PermissionLists;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.service.StartService;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class g1 extends a4 {
    public final ArrayList A;
    public ConstraintLayout B;
    public AudioFocusRequest C;
    public e1 D;

    /* renamed from: g, reason: collision with root package name */
    public final f8 f7076g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7077h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7078i;

    /* renamed from: j, reason: collision with root package name */
    public AppCompatSeekBar f7079j;

    /* renamed from: k, reason: collision with root package name */
    public AppCompatSeekBar f7080k;
    public ra.c l;

    /* renamed from: m, reason: collision with root package name */
    public KeyMapSelectBean f7081m;

    /* renamed from: n, reason: collision with root package name */
    public KeyMapSelectBean f7082n;

    /* renamed from: p, reason: collision with root package name */
    public KeyMapSelectBean f7083p;

    /* renamed from: q, reason: collision with root package name */
    public KeyMapSelectBean f7084q;
    public KeyMapSelectBean r;

    /* renamed from: s, reason: collision with root package name */
    public KeyMapSelectBean f7085s;

    /* renamed from: t, reason: collision with root package name */
    public int f7086t;

    /* renamed from: v, reason: collision with root package name */
    public int f7087v;

    /* renamed from: w, reason: collision with root package name */
    public AudioManager f7088w;

    /* renamed from: x, reason: collision with root package name */
    public final AtomicBoolean f7089x;

    /* renamed from: y, reason: collision with root package name */
    public final ArrayList f7090y;
    public ConstraintLayout z;

    public g1(Activity activity, Context context, f8 f8Var) {
        super(activity, context, R.layout.dialog_add_record);
        this.l = null;
        this.f7086t = -1;
        this.f7087v = -1;
        this.f7089x = new AtomicBoolean(false);
        this.f7090y = new ArrayList();
        this.A = new ArrayList();
        this.f7076g = f8Var;
    }

    public static void a(final g1 g1Var, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10;
        if (!z) {
            int i11 = g1Var.f7086t;
            if (i11 >= 0 && (i10 = g1Var.f7087v) >= 0) {
                if (i11 >= 100) {
                    com.yunpan.appmanage.carsdk.j0.f3843a.h(i11 - 100, i10);
                } else {
                    g1Var.f7088w.setStreamVolume(i11, i10, 0);
                }
                g1Var.f7086t = -1;
                g1Var.f7087v = -1;
            }
            g1Var.b();
            final int i12 = 1;
            g1Var.f7077h.post(new Runnable(g1Var) { // from class: ha.d1

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ g1 f6879b;

                {
                    this.f6879b = g1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i12) {
                        case 0:
                            this.f6879b.f7077h.setText("停止喊麦");
                            break;
                        default:
                            this.f6879b.f7077h.setText("测试喊麦");
                            break;
                    }
                }
            });
            return;
        }
        final int i13 = 0;
        g1Var.f7077h.post(new Runnable(g1Var) { // from class: ha.d1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f6879b;

            {
                this.f6879b = g1Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i13) {
                    case 0:
                        this.f6879b.f7077h.setText("停止喊麦");
                        break;
                    default:
                        this.f6879b.f7077h.setText("测试喊麦");
                        break;
                }
            }
        });
        int i14 = g1Var.f7083p.gn_type;
        if (i14 != -1 && i14 <= 50) {
            if (Build.VERSION.SDK_INT >= 26) {
                AudioFocusRequest.Builder builder = new AudioFocusRequest.Builder(i14);
                builder.setAudioAttributes(new AudioAttributes.Builder().setUsage(12).build());
                builder.setOnAudioFocusChangeListener(new e1(0, g1Var));
                AudioFocusRequest audioFocusRequestBuild = builder.build();
                g1Var.C = audioFocusRequestBuild;
                if (g1Var.f7088w.requestAudioFocus(audioFocusRequestBuild) != 1) {
                    g1Var.C = null;
                }
            } else {
                e1 e1Var = new e1(1, g1Var);
                g1Var.D = e1Var;
                if (g1Var.f7088w.requestAudioFocus(e1Var, 5, i14) != 1) {
                    g1Var.D = null;
                }
            }
        }
        int i15 = g1Var.f7085s.gn_type;
        if (i15 >= 0) {
            g1Var.f7086t = i15;
            if (i15 < 100) {
                g1Var.f7087v = g1Var.f7088w.getStreamVolume(i15);
                g1Var.f7088w.setStreamVolume(g1Var.f7085s.gn_type, g1Var.f7079j.getProgress(), 0);
            } else {
                com.yunpan.appmanage.carsdk.k0 k0Var = com.yunpan.appmanage.carsdk.j0.f3843a;
                g1Var.f7087v = k0Var.f(i15 - 100);
                k0Var.h(g1Var.f7085s.gn_type - 100, g1Var.f7079j.getProgress());
            }
        }
    }

    public static void c(Context context, AtomicBoolean atomicBoolean) {
        boolean zStartsWith;
        AudioDeviceInfo[] devices = ((AudioManager) context.getSystemService("audio")).getDevices(2);
        int i10 = 0;
        while (i10 <= devices.length && !atomicBoolean.get()) {
            int i11 = 0;
            while (true) {
                if (i11 > 100 || atomicBoolean.get()) {
                    break;
                }
                AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
                AudioTrack audioTrackBuild = null;
                try {
                    AudioAttributes.Builder contentType = new AudioAttributes.Builder().setContentType(1);
                    contentType.setUsage(i11);
                    audioTrackBuild = new AudioTrack.Builder().setAudioAttributes(contentType.build()).setAudioFormat(new AudioFormat.Builder().setEncoding(2).setSampleRate(48000).setChannelMask(4).build()).setBufferSizeInBytes(Math.max(AudioTrack.getMinBufferSize(48000, 4, 2), 4096)).setTransferMode(1).build();
                    if (i10 > 0) {
                        int i12 = i10 - 1;
                        audioTrackBuild.setPreferredDevice(devices[i12]);
                        com.yunpan.appmanage.util.a0.w("音响：" + ((Object) devices[i12].getProductName()) + "(" + devices[i12].getId() + ")\n通道：" + i11);
                    } else {
                        com.yunpan.appmanage.util.a0.w("音响：默认\n通道：" + i11);
                    }
                    audioTrackBuild.play();
                    d(audioTrackBuild, atomicBoolean2);
                    Thread.sleep(200L);
                    atomicBoolean2.set(true);
                } finally {
                    try {
                        if (!zStartsWith) {
                            if (audioTrackBuild != null) {
                                audioTrackBuild.stop();
                                audioTrackBuild.release();
                            }
                            i11++;
                        }
                    } finally {
                    }
                }
                try {
                    audioTrackBuild.stop();
                } catch (Throwable unused) {
                }
                audioTrackBuild.release();
                i11++;
            }
            i10++;
        }
    }

    public static void d(AudioTrack audioTrack, AtomicBoolean atomicBoolean) throws InterruptedException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        short[] sArr = new short[1024];
        int i10 = 0;
        int i11 = 0;
        while (i10 < 4800) {
            int iMin = Math.min(1024, 4800 - i10);
            for (int i12 = 0; i12 < iMin; i12++) {
                if (atomicBoolean.get()) {
                    return;
                }
                Double.isNaN(i10 + i12);
                Double.isNaN(48000);
                sArr[i12] = (short) (Math.sin((r9 * 2764.601535159018d) / r11) * 32767.0d * 0.3d);
            }
            int iWrite = audioTrack.write(sArr, 0, iMin);
            if (System.currentTimeMillis() - jCurrentTimeMillis > 500) {
                PrintStream printStream = System.out;
                System.currentTimeMillis();
                printStream.getClass();
                throw new RuntimeException("此音响写入太慢，不适合使用");
            }
            if (iWrite < 0) {
                throw new RuntimeException(da.b.a(iWrite, "AudioTrack write failed: "));
            }
            if (iWrite == 0) {
                i11++;
                if (i11 > 2) {
                    throw new RuntimeException(da.b.a(iWrite, "AudioTrack write failed: "));
                }
                try {
                    Thread.sleep(50L);
                } catch (Exception unused) {
                }
            } else {
                i10 += iWrite;
            }
        }
    }

    public final void b() {
        AudioManager audioManager = (AudioManager) this.f6725b.getSystemService("audio");
        if (Build.VERSION.SDK_INT < 26) {
            if (this.D != null) {
                audioManager.abandonAudioFocus(null);
                this.D = null;
                return;
            }
            return;
        }
        AudioFocusRequest audioFocusRequest = this.C;
        if (audioFocusRequest != null) {
            audioManager.abandonAudioFocusRequest(audioFocusRequest);
            this.C = null;
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10;
        this.f7089x.set(false);
        int i11 = this.f7087v;
        if (i11 >= 0 && (i10 = this.f7086t) >= 0) {
            if (i10 >= 100) {
                com.yunpan.appmanage.carsdk.j0.f3843a.h(i10 - 100, i11);
            } else {
                this.f7088w.setStreamVolume(i10, i11, 0);
            }
        }
        ra.c cVar = this.l;
        if (cVar != null) {
            try {
                cVar.e();
            } catch (Exception unused) {
            } catch (Throwable th2) {
                this.l = null;
                throw th2;
            }
            this.l = null;
        }
        b();
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
        this.f7088w = (AudioManager) context.getSystemService("audio");
        if (Build.VERSION.SDK_INT >= 23) {
            AudioDeviceInfo[] devices = ((AudioManager) context.getSystemService("audio")).getDevices(2);
            int length = devices.length;
            for (int i14 = 0; i14 < length && devices[i14].getType() != 21; i14++) {
            }
        }
        AudioAttributes.Builder contentType = new AudioAttributes.Builder().setContentType(1);
        final ArrayList arrayList = new ArrayList();
        for (int i15 = 0; i15 < 101; i15++) {
            try {
                contentType.setUsage(i15);
                arrayList.add(new KeyMapSelectBean(da.b.a(i15, "通道"), i15));
            } catch (Exception unused) {
            }
        }
        int i16 = Build.VERSION.SDK_INT;
        if (i16 >= 21) {
            this.f7081m = new KeyMapSelectBean("通道1", 1);
        } else {
            this.f7081m = new KeyMapSelectBean("通道3", 3);
        }
        final TextView textView = (TextView) findViewById(R.id.v_type_td_name);
        textView.setText(this.f7081m.gn_name);
        findViewById(R.id.v_type_td).setOnClickListener(new View.OnClickListener(this) { // from class: ha.a1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f6717b;

            {
                this.f6717b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i13) {
                    case 0:
                        final g1 g1Var = this.f6717b;
                        g1Var.getClass();
                        final ArrayList arrayList2 = arrayList;
                        final TextView textView2 = textView;
                        final int i17 = 3;
                        new ie(g1Var.f6724a, g1Var.f6725b, arrayList2, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i18) {
                                switch (i17) {
                                    case 0:
                                        g1 g1Var2 = g1Var;
                                        g1Var2.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList2.get(i18);
                                        g1Var2.f7083p = keyMapSelectBean;
                                        textView2.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var3 = g1Var;
                                        g1Var3.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList2.get(i18);
                                        g1Var3.f7081m = keyMapSelectBean2;
                                        textView2.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var4 = g1Var;
                                        g1Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList2.get(i18);
                                        g1Var4.f7082n = keyMapSelectBean3;
                                        textView2.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var;
                                        g1Var5.getClass();
                                        ArrayList arrayList3 = arrayList2;
                                        int i19 = ((KeyMapSelectBean) arrayList3.get(i18)).gn_type;
                                        TextView textView3 = textView2;
                                        if (i19 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList3.get(i18);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView3.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList3.get(i18)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList3.get(i18);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView3.setText(keyMapSelectBean5.gn_name);
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
                        final g1 g1Var2 = this.f6717b;
                        g1Var2.getClass();
                        final ArrayList arrayList3 = arrayList;
                        final TextView textView3 = textView;
                        final int i18 = 1;
                        new ie(g1Var2.f6724a, g1Var2.f6725b, arrayList3, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i18) {
                                    case 0:
                                        g1 g1Var22 = g1Var2;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList3.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean;
                                        textView3.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var3 = g1Var2;
                                        g1Var3.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList3.get(i182);
                                        g1Var3.f7081m = keyMapSelectBean2;
                                        textView3.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var4 = g1Var2;
                                        g1Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList3.get(i182);
                                        g1Var4.f7082n = keyMapSelectBean3;
                                        textView3.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var2;
                                        g1Var5.getClass();
                                        ArrayList arrayList32 = arrayList3;
                                        int i19 = ((KeyMapSelectBean) arrayList32.get(i182)).gn_type;
                                        TextView textView32 = textView3;
                                        if (i19 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView32.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList32.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView32.setText(keyMapSelectBean5.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        final g1 g1Var3 = this.f6717b;
                        g1Var3.getClass();
                        final ArrayList arrayList4 = arrayList;
                        final TextView textView4 = textView;
                        final int i19 = 0;
                        new ie(g1Var3.f6724a, g1Var3.f6725b, arrayList4, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i19) {
                                    case 0:
                                        g1 g1Var22 = g1Var3;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList4.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean;
                                        textView4.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var3;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList4.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean2;
                                        textView4.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var4 = g1Var3;
                                        g1Var4.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList4.get(i182);
                                        g1Var4.f7082n = keyMapSelectBean3;
                                        textView4.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var3;
                                        g1Var5.getClass();
                                        ArrayList arrayList32 = arrayList4;
                                        int i192 = ((KeyMapSelectBean) arrayList32.get(i182)).gn_type;
                                        TextView textView32 = textView4;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView32.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList32.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView32.setText(keyMapSelectBean5.gn_name);
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
                        final g1 g1Var4 = this.f6717b;
                        g1Var4.getClass();
                        final ArrayList arrayList5 = arrayList;
                        final TextView textView5 = textView;
                        final int i20 = 2;
                        new ie(g1Var4.f6724a, g1Var4.f6725b, arrayList5, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i20) {
                                    case 0:
                                        g1 g1Var22 = g1Var4;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean;
                                        textView5.setText(keyMapSelectBean.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var4;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean2;
                                        textView5.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var4;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean3;
                                        textView5.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var4;
                                        g1Var5.getClass();
                                        ArrayList arrayList32 = arrayList5;
                                        int i192 = ((KeyMapSelectBean) arrayList32.get(i182)).gn_type;
                                        TextView textView32 = textView5;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView32.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList32.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView32.setText(keyMapSelectBean5.gn_name);
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
        KeyMapSelectBean keyMapSelectBean = new KeyMapSelectBean("方案一：系统降噪+软件降噪", 0);
        this.f7082n = keyMapSelectBean;
        arrayList2.add(keyMapSelectBean);
        arrayList2.add(new KeyMapSelectBean("方案二：系统降噪", 1));
        arrayList2.add(new KeyMapSelectBean("方案三：软件降噪", 2));
        final TextView textView2 = (TextView) findViewById(R.id.v_zhk_noise_name);
        textView2.setText(this.f7082n.gn_name);
        findViewById(R.id.v_zhk_noise).setOnClickListener(new View.OnClickListener(this) { // from class: ha.a1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f6717b;

            {
                this.f6717b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        final g1 g1Var = this.f6717b;
                        g1Var.getClass();
                        final ArrayList arrayList22 = arrayList2;
                        final TextView textView22 = textView2;
                        final int i17 = 3;
                        new ie(g1Var.f6724a, g1Var.f6725b, arrayList22, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i17) {
                                    case 0:
                                        g1 g1Var22 = g1Var;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList22.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean2;
                                        textView22.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList22.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean22;
                                        textView22.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList22.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean3;
                                        textView22.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var;
                                        g1Var5.getClass();
                                        ArrayList arrayList32 = arrayList22;
                                        int i192 = ((KeyMapSelectBean) arrayList32.get(i182)).gn_type;
                                        TextView textView32 = textView22;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView32.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList32.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView32.setText(keyMapSelectBean5.gn_name);
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
                        final g1 g1Var2 = this.f6717b;
                        g1Var2.getClass();
                        final ArrayList arrayList3 = arrayList2;
                        final TextView textView3 = textView2;
                        final int i18 = 1;
                        new ie(g1Var2.f6724a, g1Var2.f6725b, arrayList3, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i18) {
                                    case 0:
                                        g1 g1Var22 = g1Var2;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList3.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean2;
                                        textView3.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var2;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList3.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean22;
                                        textView3.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var2;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList3.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean3;
                                        textView3.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var2;
                                        g1Var5.getClass();
                                        ArrayList arrayList32 = arrayList3;
                                        int i192 = ((KeyMapSelectBean) arrayList32.get(i182)).gn_type;
                                        TextView textView32 = textView3;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView32.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList32.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView32.setText(keyMapSelectBean5.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        final g1 g1Var3 = this.f6717b;
                        g1Var3.getClass();
                        final ArrayList arrayList4 = arrayList2;
                        final TextView textView4 = textView2;
                        final int i19 = 0;
                        new ie(g1Var3.f6724a, g1Var3.f6725b, arrayList4, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i19) {
                                    case 0:
                                        g1 g1Var22 = g1Var3;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList4.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean2;
                                        textView4.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var3;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList4.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean22;
                                        textView4.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var3;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList4.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean3;
                                        textView4.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var3;
                                        g1Var5.getClass();
                                        ArrayList arrayList32 = arrayList4;
                                        int i192 = ((KeyMapSelectBean) arrayList32.get(i182)).gn_type;
                                        TextView textView32 = textView4;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView32.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList32.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView32.setText(keyMapSelectBean5.gn_name);
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
                        final g1 g1Var4 = this.f6717b;
                        g1Var4.getClass();
                        final ArrayList arrayList5 = arrayList2;
                        final TextView textView5 = textView2;
                        final int i20 = 2;
                        new ie(g1Var4.f6724a, g1Var4.f6725b, arrayList5, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i20) {
                                    case 0:
                                        g1 g1Var22 = g1Var4;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean2;
                                        textView5.setText(keyMapSelectBean2.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var4;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean22;
                                        textView5.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var4;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean3;
                                        textView5.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var4;
                                        g1Var5.getClass();
                                        ArrayList arrayList32 = arrayList5;
                                        int i192 = ((KeyMapSelectBean) arrayList32.get(i182)).gn_type;
                                        TextView textView32 = textView5;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView32.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList32.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView32.setText(keyMapSelectBean5.gn_name);
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
        arrayList3.add(new KeyMapSelectBean("无", -1));
        arrayList3.add(new KeyMapSelectBean("播放时降低其它音量", 3));
        KeyMapSelectBean keyMapSelectBean2 = new KeyMapSelectBean("播放时暂停其它音频", 2);
        this.f7083p = keyMapSelectBean2;
        arrayList3.add(keyMapSelectBean2);
        if (i16 >= 21) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4053j || p000if.a.h0(context, StartService.class)) {
                g.b.u("播放时暂停其它音乐app音频(智)", 200, arrayList3);
            }
        }
        final TextView textView3 = (TextView) findViewById(R.id.v_zhk_focus_name);
        textView3.setText(this.f7083p.gn_name);
        findViewById(R.id.v_zhk_focus).setOnClickListener(new View.OnClickListener(this) { // from class: ha.a1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f6717b;

            {
                this.f6717b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        final g1 g1Var = this.f6717b;
                        g1Var.getClass();
                        final ArrayList arrayList22 = arrayList3;
                        final TextView textView22 = textView3;
                        final int i17 = 3;
                        new ie(g1Var.f6724a, g1Var.f6725b, arrayList22, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i17) {
                                    case 0:
                                        g1 g1Var22 = g1Var;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList22.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean22;
                                        textView22.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList22.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean222;
                                        textView22.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList22.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean3;
                                        textView22.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var;
                                        g1Var5.getClass();
                                        ArrayList arrayList32 = arrayList22;
                                        int i192 = ((KeyMapSelectBean) arrayList32.get(i182)).gn_type;
                                        TextView textView32 = textView22;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList32.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView32.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList32.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList32.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView32.setText(keyMapSelectBean5.gn_name);
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
                        final g1 g1Var2 = this.f6717b;
                        g1Var2.getClass();
                        final ArrayList arrayList32 = arrayList3;
                        final TextView textView32 = textView3;
                        final int i18 = 1;
                        new ie(g1Var2.f6724a, g1Var2.f6725b, arrayList32, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i18) {
                                    case 0:
                                        g1 g1Var22 = g1Var2;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList32.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean22;
                                        textView32.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var2;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList32.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean222;
                                        textView32.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var2;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList32.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean3;
                                        textView32.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var2;
                                        g1Var5.getClass();
                                        ArrayList arrayList322 = arrayList32;
                                        int i192 = ((KeyMapSelectBean) arrayList322.get(i182)).gn_type;
                                        TextView textView322 = textView32;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList322.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView322.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList322.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView322.setText(keyMapSelectBean5.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        final g1 g1Var3 = this.f6717b;
                        g1Var3.getClass();
                        final ArrayList arrayList4 = arrayList3;
                        final TextView textView4 = textView3;
                        final int i19 = 0;
                        new ie(g1Var3.f6724a, g1Var3.f6725b, arrayList4, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i19) {
                                    case 0:
                                        g1 g1Var22 = g1Var3;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList4.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean22;
                                        textView4.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var3;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList4.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean222;
                                        textView4.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var3;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList4.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean3;
                                        textView4.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var3;
                                        g1Var5.getClass();
                                        ArrayList arrayList322 = arrayList4;
                                        int i192 = ((KeyMapSelectBean) arrayList322.get(i182)).gn_type;
                                        TextView textView322 = textView4;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList322.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView322.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList322.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView322.setText(keyMapSelectBean5.gn_name);
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
                        final g1 g1Var4 = this.f6717b;
                        g1Var4.getClass();
                        final ArrayList arrayList5 = arrayList3;
                        final TextView textView5 = textView3;
                        final int i20 = 2;
                        new ie(g1Var4.f6724a, g1Var4.f6725b, arrayList5, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i20) {
                                    case 0:
                                        g1 g1Var22 = g1Var4;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean22;
                                        textView5.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var4;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean222;
                                        textView5.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var4;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean3 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean3;
                                        textView5.setText(keyMapSelectBean3.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var4;
                                        g1Var5.getClass();
                                        ArrayList arrayList322 = arrayList5;
                                        int i192 = ((KeyMapSelectBean) arrayList322.get(i182)).gn_type;
                                        TextView textView322 = textView5;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList322.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView322.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList322.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView322.setText(keyMapSelectBean5.gn_name);
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
        final ArrayList arrayList4 = new ArrayList();
        KeyMapSelectBean keyMapSelectBean3 = new KeyMapSelectBean("不修改系统音量", -1);
        this.f7085s = keyMapSelectBean3;
        arrayList4.add(keyMapSelectBean3);
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(通话音量)", 0));
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(系统音量)", 1));
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(铃声音量)", 2));
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(媒体音量)", 3));
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(闹钟音量)", 4));
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(通知音量)", 5));
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(MF音量)", 8));
        if (i16 >= 26) {
            g.b.u("播放时修改音量(ACC音量)", 10, arrayList4);
        }
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(6)", 6));
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(7)", 7));
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(9)", 9));
        arrayList4.add(new KeyMapSelectBean("播放时修改音量(11)", 11));
        if (i16 >= 26 && com.yunpan.appmanage.carsdk.j0.f3843a.f3848d != null) {
            for (int i17 = 0; i17 < 32; i17++) {
                if (com.yunpan.appmanage.carsdk.j0.f3843a.d(i17 - 100) > 0) {
                    arrayList4.add(new KeyMapSelectBean("播放时修改音量(Car通道0)", i17 + 100));
                }
            }
        }
        final TextView textView4 = (TextView) findViewById(R.id.v_type_vol_name);
        textView4.setText(this.f7085s.gn_name);
        findViewById(R.id.v_type_vol).setOnClickListener(new View.OnClickListener(this) { // from class: ha.a1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f6717b;

            {
                this.f6717b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        final g1 g1Var = this.f6717b;
                        g1Var.getClass();
                        final ArrayList arrayList22 = arrayList4;
                        final TextView textView22 = textView4;
                        final int i172 = 3;
                        new ie(g1Var.f6724a, g1Var.f6725b, arrayList22, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i172) {
                                    case 0:
                                        g1 g1Var22 = g1Var;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList22.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean22;
                                        textView22.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList22.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean222;
                                        textView22.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean32 = (KeyMapSelectBean) arrayList22.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean32;
                                        textView22.setText(keyMapSelectBean32.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var;
                                        g1Var5.getClass();
                                        ArrayList arrayList322 = arrayList22;
                                        int i192 = ((KeyMapSelectBean) arrayList322.get(i182)).gn_type;
                                        TextView textView322 = textView22;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList322.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView322.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList322.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView322.setText(keyMapSelectBean5.gn_name);
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
                        final g1 g1Var2 = this.f6717b;
                        g1Var2.getClass();
                        final ArrayList arrayList32 = arrayList4;
                        final TextView textView32 = textView4;
                        final int i18 = 1;
                        new ie(g1Var2.f6724a, g1Var2.f6725b, arrayList32, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i18) {
                                    case 0:
                                        g1 g1Var22 = g1Var2;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList32.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean22;
                                        textView32.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var2;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList32.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean222;
                                        textView32.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var2;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean32 = (KeyMapSelectBean) arrayList32.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean32;
                                        textView32.setText(keyMapSelectBean32.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var2;
                                        g1Var5.getClass();
                                        ArrayList arrayList322 = arrayList32;
                                        int i192 = ((KeyMapSelectBean) arrayList322.get(i182)).gn_type;
                                        TextView textView322 = textView32;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList322.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView322.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList322.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView322.setText(keyMapSelectBean5.gn_name);
                                                break;
                                            } catch (Exception unused2) {
                                                Toaster.show((CharSequence) "系统没有此音量");
                                            }
                                        }
                                }
                            }
                        }).show();
                        break;
                    case 2:
                        final g1 g1Var3 = this.f6717b;
                        g1Var3.getClass();
                        final ArrayList arrayList42 = arrayList4;
                        final TextView textView42 = textView4;
                        final int i19 = 0;
                        new ie(g1Var3.f6724a, g1Var3.f6725b, arrayList42, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i19) {
                                    case 0:
                                        g1 g1Var22 = g1Var3;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList42.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean22;
                                        textView42.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var3;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList42.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean222;
                                        textView42.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var3;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean32 = (KeyMapSelectBean) arrayList42.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean32;
                                        textView42.setText(keyMapSelectBean32.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var3;
                                        g1Var5.getClass();
                                        ArrayList arrayList322 = arrayList42;
                                        int i192 = ((KeyMapSelectBean) arrayList322.get(i182)).gn_type;
                                        TextView textView322 = textView42;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList322.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView322.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList322.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView322.setText(keyMapSelectBean5.gn_name);
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
                        final g1 g1Var4 = this.f6717b;
                        g1Var4.getClass();
                        final ArrayList arrayList5 = arrayList4;
                        final TextView textView5 = textView4;
                        final int i20 = 2;
                        new ie(g1Var4.f6724a, g1Var4.f6725b, arrayList5, new he() { // from class: ha.c1
                            @Override // ha.he, ha.ea
                            public final void b(int i182) {
                                switch (i20) {
                                    case 0:
                                        g1 g1Var22 = g1Var4;
                                        g1Var22.getClass();
                                        KeyMapSelectBean keyMapSelectBean22 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var22.f7083p = keyMapSelectBean22;
                                        textView5.setText(keyMapSelectBean22.gn_name);
                                        break;
                                    case 1:
                                        g1 g1Var32 = g1Var4;
                                        g1Var32.getClass();
                                        KeyMapSelectBean keyMapSelectBean222 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var32.f7081m = keyMapSelectBean222;
                                        textView5.setText(keyMapSelectBean222.gn_name);
                                        break;
                                    case 2:
                                        g1 g1Var42 = g1Var4;
                                        g1Var42.getClass();
                                        KeyMapSelectBean keyMapSelectBean32 = (KeyMapSelectBean) arrayList5.get(i182);
                                        g1Var42.f7082n = keyMapSelectBean32;
                                        textView5.setText(keyMapSelectBean32.gn_name);
                                        break;
                                    default:
                                        g1 g1Var5 = g1Var4;
                                        g1Var5.getClass();
                                        ArrayList arrayList322 = arrayList5;
                                        int i192 = ((KeyMapSelectBean) arrayList322.get(i182)).gn_type;
                                        TextView textView322 = textView5;
                                        if (i192 == -1) {
                                            KeyMapSelectBean keyMapSelectBean4 = (KeyMapSelectBean) arrayList322.get(i182);
                                            g1Var5.f7085s = keyMapSelectBean4;
                                            textView322.setText(keyMapSelectBean4.gn_name);
                                            break;
                                        } else {
                                            try {
                                                int streamMaxVolume = g1Var5.f7088w.getStreamMaxVolume(((KeyMapSelectBean) arrayList322.get(i182)).gn_type);
                                                g1Var5.f7079j.setProgress(0);
                                                g1Var5.f7079j.setMax(streamMaxVolume);
                                                g1Var5.f7079j.setProgress(streamMaxVolume);
                                                KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) arrayList322.get(i182);
                                                g1Var5.f7085s = keyMapSelectBean5;
                                                textView322.setText(keyMapSelectBean5.gn_name);
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
        KeyMapSelectBean keyMapSelectBean4 = new KeyMapSelectBean("系统默认", -1);
        this.f7084q = keyMapSelectBean4;
        ArrayList arrayList5 = this.f7090y;
        arrayList5.add(keyMapSelectBean4);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                for (AudioDeviceInfo audioDeviceInfo : this.f7088w.getDevices(2)) {
                    arrayList5.add(new KeyMapSelectBean(((Object) audioDeviceInfo.getProductName()) + "(" + audioDeviceInfo.getId() + ")", audioDeviceInfo.getId()));
                }
            } catch (Exception unused2) {
            }
        }
        this.z = (ConstraintLayout) findViewById(R.id.v_speaker);
        final TextView textView5 = (TextView) findViewById(R.id.v_speaker_name);
        textView5.setText(this.f7084q.gn_name);
        this.z.setOnClickListener(new View.OnClickListener(this) { // from class: ha.z0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f8119b;

            {
                this.f8119b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        final g1 g1Var = this.f8119b;
                        ArrayList arrayList6 = g1Var.f7090y;
                        final TextView textView6 = textView5;
                        final int i18 = 0;
                        new ie(g1Var.f6724a, g1Var.f6725b, arrayList6, new he() { // from class: ha.b1
                            @Override // ha.he, ha.ea
                            public final void b(int i19) {
                                switch (i18) {
                                    case 0:
                                        g1 g1Var2 = g1Var;
                                        KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) g1Var2.f7090y.get(i19);
                                        g1Var2.f7084q = keyMapSelectBean5;
                                        textView6.setText(keyMapSelectBean5.gn_name);
                                        break;
                                    default:
                                        g1 g1Var3 = g1Var;
                                        KeyMapSelectBean keyMapSelectBean6 = (KeyMapSelectBean) g1Var3.A.get(i19);
                                        g1Var3.r = keyMapSelectBean6;
                                        textView6.setText(keyMapSelectBean6.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    default:
                        final g1 g1Var2 = this.f8119b;
                        ArrayList arrayList7 = g1Var2.A;
                        final TextView textView7 = textView5;
                        final int i19 = 1;
                        new ie(g1Var2.f6724a, g1Var2.f6725b, arrayList7, new he() { // from class: ha.b1
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                switch (i19) {
                                    case 0:
                                        g1 g1Var22 = g1Var2;
                                        KeyMapSelectBean keyMapSelectBean5 = (KeyMapSelectBean) g1Var22.f7090y.get(i192);
                                        g1Var22.f7084q = keyMapSelectBean5;
                                        textView7.setText(keyMapSelectBean5.gn_name);
                                        break;
                                    default:
                                        g1 g1Var3 = g1Var2;
                                        KeyMapSelectBean keyMapSelectBean6 = (KeyMapSelectBean) g1Var3.A.get(i192);
                                        g1Var3.r = keyMapSelectBean6;
                                        textView7.setText(keyMapSelectBean6.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                }
            }
        });
        KeyMapSelectBean keyMapSelectBean5 = new KeyMapSelectBean("默认", -1);
        this.r = keyMapSelectBean5;
        ArrayList arrayList6 = this.A;
        arrayList6.add(keyMapSelectBean5);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                for (AudioDeviceInfo audioDeviceInfo2 : this.f7088w.getDevices(1)) {
                    arrayList6.add(new KeyMapSelectBean(((Object) audioDeviceInfo2.getProductName()) + "(" + audioDeviceInfo2.getId() + ")", audioDeviceInfo2.getId()));
                }
            } catch (Exception unused3) {
            }
        }
        this.B = (ConstraintLayout) findViewById(R.id.v_microphone);
        final TextView textView6 = (TextView) findViewById(R.id.v_microphone_name);
        textView6.setText(this.r.gn_name);
        this.B.setOnClickListener(new View.OnClickListener(this) { // from class: ha.z0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f8119b;

            {
                this.f8119b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i13) {
                    case 0:
                        final g1 g1Var = this.f8119b;
                        ArrayList arrayList62 = g1Var.f7090y;
                        final TextView textView62 = textView6;
                        final int i18 = 0;
                        new ie(g1Var.f6724a, g1Var.f6725b, arrayList62, new he() { // from class: ha.b1
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                switch (i18) {
                                    case 0:
                                        g1 g1Var22 = g1Var;
                                        KeyMapSelectBean keyMapSelectBean52 = (KeyMapSelectBean) g1Var22.f7090y.get(i192);
                                        g1Var22.f7084q = keyMapSelectBean52;
                                        textView62.setText(keyMapSelectBean52.gn_name);
                                        break;
                                    default:
                                        g1 g1Var3 = g1Var;
                                        KeyMapSelectBean keyMapSelectBean6 = (KeyMapSelectBean) g1Var3.A.get(i192);
                                        g1Var3.r = keyMapSelectBean6;
                                        textView62.setText(keyMapSelectBean6.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                    default:
                        final g1 g1Var2 = this.f8119b;
                        ArrayList arrayList7 = g1Var2.A;
                        final TextView textView7 = textView6;
                        final int i19 = 1;
                        new ie(g1Var2.f6724a, g1Var2.f6725b, arrayList7, new he() { // from class: ha.b1
                            @Override // ha.he, ha.ea
                            public final void b(int i192) {
                                switch (i19) {
                                    case 0:
                                        g1 g1Var22 = g1Var2;
                                        KeyMapSelectBean keyMapSelectBean52 = (KeyMapSelectBean) g1Var22.f7090y.get(i192);
                                        g1Var22.f7084q = keyMapSelectBean52;
                                        textView7.setText(keyMapSelectBean52.gn_name);
                                        break;
                                    default:
                                        g1 g1Var3 = g1Var2;
                                        KeyMapSelectBean keyMapSelectBean6 = (KeyMapSelectBean) g1Var3.A.get(i192);
                                        g1Var3.r = keyMapSelectBean6;
                                        textView7.setText(keyMapSelectBean6.gn_name);
                                        break;
                                }
                            }
                        }).show();
                        break;
                }
            }
        });
        TextView textView7 = (TextView) findViewById(R.id.v_btn_test2);
        this.f7078i = textView7;
        textView7.setOnClickListener(new View.OnClickListener(this) { // from class: ha.f1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f7009b;

            {
                this.f7009b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                int i18;
                switch (i12) {
                    case 0:
                        g1 g1Var = this.f7009b;
                        boolean zStartsWith = g1Var.f7078i.getText().toString().startsWith("停止测试");
                        AtomicBoolean atomicBoolean = g1Var.f7089x;
                        if (zStartsWith) {
                            atomicBoolean.set(true);
                            g1Var.f7078i.setText("逐一测试喇叭(请仔细聆听，自行甄别)");
                            return;
                        } else {
                            if (Build.VERSION.SDK_INT < 23) {
                                com.yunpan.appmanage.util.a0.t("系统版本太低，不能使用此功能");
                                return;
                            }
                            g1Var.f7078i.setText("停止测试 (测试声道中)");
                            atomicBoolean.set(false);
                            new mc.c(0, new y0(g1Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(2, g1Var));
                            return;
                        }
                    case 1:
                        g1 g1Var2 = this.f7009b;
                        if (!g1Var2.f7077h.getText().toString().startsWith("停止")) {
                            if (!XXPermissions.isGrantedPermission(g1Var2.f6725b, PermissionLists.getRecordAudioPermission())) {
                                XXPermissions.with(g1Var2.f6724a).permission(PermissionLists.getRecordAudioPermission()).request(new g2.c(3));
                                return;
                            }
                            try {
                                ra.c cVar = new ra.c(g1Var2.f6725b, g1Var2.r.gn_type, g1Var2.f7080k.getProgress(), g1Var2.f7081m.gn_type, g1Var2.f7084q.gn_type, g1Var2.f7082n.gn_type);
                                g1Var2.l = cVar;
                                cVar.d(new y0(g1Var2));
                                return;
                            } catch (Exception e7) {
                                com.yunpan.appmanage.util.a0.u(e7.getMessage());
                                return;
                            }
                        }
                        g1Var2.f7077h.setText("测试喊麦");
                        ra.c cVar2 = g1Var2.l;
                        if (cVar2 != null) {
                            try {
                                cVar2.e();
                            } catch (Exception unused4) {
                            } catch (Throwable th2) {
                                g1Var2.l = null;
                                throw th2;
                            }
                            g1Var2.l = null;
                        }
                        g1Var2.b();
                        int i19 = g1Var2.f7086t;
                        if (i19 < 0 || (i18 = g1Var2.f7087v) < 0) {
                            return;
                        }
                        if (i19 >= 100) {
                            com.yunpan.appmanage.carsdk.j0.f3843a.h(i19 - 100, i18);
                        } else {
                            g1Var2.f7088w.setStreamVolume(i19, i18, 0);
                        }
                        g1Var2.f7086t = -1;
                        g1Var2.f7087v = -1;
                        return;
                    default:
                        g1 g1Var3 = this.f7009b;
                        g1Var3.getClass();
                        z7.s sVar = new z7.s();
                        sVar.l("gnType", 417);
                        sVar.m("name", "喊麦(开始/停止)");
                        sVar.l("int1", Integer.valueOf(g1Var3.f7079j.getProgress()));
                        sVar.l("volumeType", Integer.valueOf(g1Var3.f7085s.gn_type));
                        sVar.l("tdType", Integer.valueOf(g1Var3.f7081m.gn_type));
                        sVar.l("noiseType", Integer.valueOf(g1Var3.f7082n.gn_type));
                        sVar.l("focusType", Integer.valueOf(g1Var3.f7083p.gn_type));
                        sVar.l("speakerId", Integer.valueOf(g1Var3.f7084q.gn_type));
                        sVar.l("microphoneId", Integer.valueOf(g1Var3.r.gn_type));
                        sVar.l("microphoneGain", Integer.valueOf(g1Var3.f7080k.getProgress()));
                        g1Var3.f7076g.k(sVar);
                        g1Var3.dismiss();
                        return;
                }
            }
        });
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek_vol);
        this.f7079j = appCompatSeekBar;
        appCompatSeekBar.setMax(100);
        this.f7079j.setProgress(80);
        AppCompatSeekBar appCompatSeekBar2 = (AppCompatSeekBar) findViewById(R.id.v_seek_micro);
        this.f7080k = appCompatSeekBar2;
        appCompatSeekBar2.setMax(100);
        this.f7080k.setProgress(30);
        TextView textView8 = (TextView) findViewById(R.id.v_btn_bf);
        this.f7077h = textView8;
        textView8.requestFocus();
        this.f7077h.setOnClickListener(new View.OnClickListener(this) { // from class: ha.f1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f7009b;

            {
                this.f7009b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                int i18;
                switch (i13) {
                    case 0:
                        g1 g1Var = this.f7009b;
                        boolean zStartsWith = g1Var.f7078i.getText().toString().startsWith("停止测试");
                        AtomicBoolean atomicBoolean = g1Var.f7089x;
                        if (zStartsWith) {
                            atomicBoolean.set(true);
                            g1Var.f7078i.setText("逐一测试喇叭(请仔细聆听，自行甄别)");
                            return;
                        } else {
                            if (Build.VERSION.SDK_INT < 23) {
                                com.yunpan.appmanage.util.a0.t("系统版本太低，不能使用此功能");
                                return;
                            }
                            g1Var.f7078i.setText("停止测试 (测试声道中)");
                            atomicBoolean.set(false);
                            new mc.c(0, new y0(g1Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(2, g1Var));
                            return;
                        }
                    case 1:
                        g1 g1Var2 = this.f7009b;
                        if (!g1Var2.f7077h.getText().toString().startsWith("停止")) {
                            if (!XXPermissions.isGrantedPermission(g1Var2.f6725b, PermissionLists.getRecordAudioPermission())) {
                                XXPermissions.with(g1Var2.f6724a).permission(PermissionLists.getRecordAudioPermission()).request(new g2.c(3));
                                return;
                            }
                            try {
                                ra.c cVar = new ra.c(g1Var2.f6725b, g1Var2.r.gn_type, g1Var2.f7080k.getProgress(), g1Var2.f7081m.gn_type, g1Var2.f7084q.gn_type, g1Var2.f7082n.gn_type);
                                g1Var2.l = cVar;
                                cVar.d(new y0(g1Var2));
                                return;
                            } catch (Exception e7) {
                                com.yunpan.appmanage.util.a0.u(e7.getMessage());
                                return;
                            }
                        }
                        g1Var2.f7077h.setText("测试喊麦");
                        ra.c cVar2 = g1Var2.l;
                        if (cVar2 != null) {
                            try {
                                cVar2.e();
                            } catch (Exception unused4) {
                            } catch (Throwable th2) {
                                g1Var2.l = null;
                                throw th2;
                            }
                            g1Var2.l = null;
                        }
                        g1Var2.b();
                        int i19 = g1Var2.f7086t;
                        if (i19 < 0 || (i18 = g1Var2.f7087v) < 0) {
                            return;
                        }
                        if (i19 >= 100) {
                            com.yunpan.appmanage.carsdk.j0.f3843a.h(i19 - 100, i18);
                        } else {
                            g1Var2.f7088w.setStreamVolume(i19, i18, 0);
                        }
                        g1Var2.f7086t = -1;
                        g1Var2.f7087v = -1;
                        return;
                    default:
                        g1 g1Var3 = this.f7009b;
                        g1Var3.getClass();
                        z7.s sVar = new z7.s();
                        sVar.l("gnType", 417);
                        sVar.m("name", "喊麦(开始/停止)");
                        sVar.l("int1", Integer.valueOf(g1Var3.f7079j.getProgress()));
                        sVar.l("volumeType", Integer.valueOf(g1Var3.f7085s.gn_type));
                        sVar.l("tdType", Integer.valueOf(g1Var3.f7081m.gn_type));
                        sVar.l("noiseType", Integer.valueOf(g1Var3.f7082n.gn_type));
                        sVar.l("focusType", Integer.valueOf(g1Var3.f7083p.gn_type));
                        sVar.l("speakerId", Integer.valueOf(g1Var3.f7084q.gn_type));
                        sVar.l("microphoneId", Integer.valueOf(g1Var3.r.gn_type));
                        sVar.l("microphoneGain", Integer.valueOf(g1Var3.f7080k.getProgress()));
                        g1Var3.f7076g.k(sVar);
                        g1Var3.dismiss();
                        return;
                }
            }
        });
        final int i18 = 2;
        ((TextView) findViewById(R.id.v_btn_yes)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.f1

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ g1 f7009b;

            {
                this.f7009b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                int i182;
                switch (i18) {
                    case 0:
                        g1 g1Var = this.f7009b;
                        boolean zStartsWith = g1Var.f7078i.getText().toString().startsWith("停止测试");
                        AtomicBoolean atomicBoolean = g1Var.f7089x;
                        if (zStartsWith) {
                            atomicBoolean.set(true);
                            g1Var.f7078i.setText("逐一测试喇叭(请仔细聆听，自行甄别)");
                            return;
                        } else {
                            if (Build.VERSION.SDK_INT < 23) {
                                com.yunpan.appmanage.util.a0.t("系统版本太低，不能使用此功能");
                                return;
                            }
                            g1Var.f7078i.setText("停止测试 (测试声道中)");
                            atomicBoolean.set(false);
                            new mc.c(0, new y0(g1Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(2, g1Var));
                            return;
                        }
                    case 1:
                        g1 g1Var2 = this.f7009b;
                        if (!g1Var2.f7077h.getText().toString().startsWith("停止")) {
                            if (!XXPermissions.isGrantedPermission(g1Var2.f6725b, PermissionLists.getRecordAudioPermission())) {
                                XXPermissions.with(g1Var2.f6724a).permission(PermissionLists.getRecordAudioPermission()).request(new g2.c(3));
                                return;
                            }
                            try {
                                ra.c cVar = new ra.c(g1Var2.f6725b, g1Var2.r.gn_type, g1Var2.f7080k.getProgress(), g1Var2.f7081m.gn_type, g1Var2.f7084q.gn_type, g1Var2.f7082n.gn_type);
                                g1Var2.l = cVar;
                                cVar.d(new y0(g1Var2));
                                return;
                            } catch (Exception e7) {
                                com.yunpan.appmanage.util.a0.u(e7.getMessage());
                                return;
                            }
                        }
                        g1Var2.f7077h.setText("测试喊麦");
                        ra.c cVar2 = g1Var2.l;
                        if (cVar2 != null) {
                            try {
                                cVar2.e();
                            } catch (Exception unused4) {
                            } catch (Throwable th2) {
                                g1Var2.l = null;
                                throw th2;
                            }
                            g1Var2.l = null;
                        }
                        g1Var2.b();
                        int i19 = g1Var2.f7086t;
                        if (i19 < 0 || (i182 = g1Var2.f7087v) < 0) {
                            return;
                        }
                        if (i19 >= 100) {
                            com.yunpan.appmanage.carsdk.j0.f3843a.h(i19 - 100, i182);
                        } else {
                            g1Var2.f7088w.setStreamVolume(i19, i182, 0);
                        }
                        g1Var2.f7086t = -1;
                        g1Var2.f7087v = -1;
                        return;
                    default:
                        g1 g1Var3 = this.f7009b;
                        g1Var3.getClass();
                        z7.s sVar = new z7.s();
                        sVar.l("gnType", 417);
                        sVar.m("name", "喊麦(开始/停止)");
                        sVar.l("int1", Integer.valueOf(g1Var3.f7079j.getProgress()));
                        sVar.l("volumeType", Integer.valueOf(g1Var3.f7085s.gn_type));
                        sVar.l("tdType", Integer.valueOf(g1Var3.f7081m.gn_type));
                        sVar.l("noiseType", Integer.valueOf(g1Var3.f7082n.gn_type));
                        sVar.l("focusType", Integer.valueOf(g1Var3.f7083p.gn_type));
                        sVar.l("speakerId", Integer.valueOf(g1Var3.f7084q.gn_type));
                        sVar.l("microphoneId", Integer.valueOf(g1Var3.r.gn_type));
                        sVar.l("microphoneGain", Integer.valueOf(g1Var3.f7080k.getProgress()));
                        g1Var3.f7076g.k(sVar);
                        g1Var3.dismiss();
                        return;
                }
            }
        });
    }
}
