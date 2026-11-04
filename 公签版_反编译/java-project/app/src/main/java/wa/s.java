package wa;

import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFocusRequest;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.MediaPlayer;
import android.media.audiofx.LoudnessEnhancer;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.speech.tts.TextToSpeech;
import android.speech.tts.Voice;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.carsdk.j0;
import com.yunpan.appmanage.carsdk.k0;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.service.StartService;
import com.yunpan.appmanage.util.a0;
import ha.fe;
import j$.util.Iterator$EL;
import j$.util.concurrent.ThreadLocalRandom;
import j$.util.function.Consumer$CC;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;
import ua.g6;

/* loaded from: classes.dex */
public final class s {
    public static s O;
    public p A;
    public final AudioManager C;
    public MediaPlayer D;
    public ArrayList L;
    public TextToSpeech M;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f17705a;

    /* renamed from: x, reason: collision with root package name */
    public AudioFocusRequest f17726x;

    /* renamed from: y, reason: collision with root package name */
    public k f17727y;
    public AudioFocusRequest z;

    /* renamed from: b, reason: collision with root package name */
    public List f17706b = null;

    /* renamed from: c, reason: collision with root package name */
    public v8.a f17707c = null;

    /* renamed from: d, reason: collision with root package name */
    public String f17708d = "";

    /* renamed from: e, reason: collision with root package name */
    public AccService f17709e = null;

    /* renamed from: f, reason: collision with root package name */
    public StartService f17710f = null;

    /* renamed from: g, reason: collision with root package name */
    public int f17711g = 0;

    /* renamed from: h, reason: collision with root package name */
    public long f17712h = 0;

    /* renamed from: i, reason: collision with root package name */
    public final HashMap f17713i = new HashMap();

    /* renamed from: j, reason: collision with root package name */
    public final HashMap f17714j = new HashMap();

    /* renamed from: k, reason: collision with root package name */
    public final HashSet f17715k = new HashSet();
    public final HashSet l = new HashSet();

    /* renamed from: m, reason: collision with root package name */
    public ag.c f17716m = null;

    /* renamed from: n, reason: collision with root package name */
    public final HashSet f17717n = new HashSet();

    /* renamed from: o, reason: collision with root package name */
    public final HashMap f17718o = new HashMap();

    /* renamed from: p, reason: collision with root package name */
    public boolean f17719p = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f17720q = false;
    public final ArrayList r = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public final HashMap f17721s = new HashMap();

    /* renamed from: t, reason: collision with root package name */
    public final HashMap f17722t = new HashMap();

    /* renamed from: u, reason: collision with root package name */
    public final HashMap f17723u = new HashMap();

    /* renamed from: v, reason: collision with root package name */
    public final HashMap f17724v = new HashMap();

    /* renamed from: w, reason: collision with root package name */
    public z7.s f17725w = null;
    public MediaController B = null;
    public AudioTrack E = null;
    public boolean F = false;
    public ra.c G = null;
    public v8.a H = null;
    public int I = -1;
    public int J = -1;
    public LoudnessEnhancer K = null;
    public final androidx.activity.h N = new androidx.activity.h(20, this);

    public s() {
        this.f17705a = false;
        try {
            AppStart appStart = AppStart.f3772h;
            this.f17705a = appStart.f3775c.checkPermission("android.permission.DEVICE_POWER", appStart.getPackageName()) == 0;
        } catch (Exception unused) {
        }
        this.C = (AudioManager) AppStart.f3772h.getSystemService("audio");
    }

    public static void a(s sVar, int i10, int i11, AudioManager audioManager, int i12, File file, int i13) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        MediaController mediaController;
        int i14;
        sVar.E.play();
        if (i10 >= 0 && i11 >= 0) {
            if (i10 >= 100) {
                k0 k0Var = j0.f3843a;
                sVar.J = k0Var.f(i10);
                k0Var.h(i10 - 100, i11);
            } else {
                sVar.J = audioManager.getStreamVolume(i10);
                audioManager.setStreamVolume(i10, i11, 0);
            }
            sVar.I = i10;
        }
        if (Build.VERSION.SDK_INT >= 19 && i12 > 0) {
            LoudnessEnhancer loudnessEnhancer = new LoudnessEnhancer(sVar.E.getAudioSessionId());
            sVar.K = loudnessEnhancer;
            loudnessEnhancer.setTargetGain(i12);
            sVar.K.setEnabled(true);
        }
        sVar.F = false;
        try {
            byte[] bArr = new byte[1024];
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int i15 = fileInputStream.read(bArr);
                if (i15 == -1 || sVar.F) {
                    break;
                } else {
                    sVar.E.write(bArr, 0, i15);
                }
            }
            LoudnessEnhancer loudnessEnhancer2 = sVar.K;
            if (loudnessEnhancer2 != null) {
                try {
                    loudnessEnhancer2.release();
                } catch (Exception unused) {
                }
                sVar.K = null;
            }
            int i16 = sVar.J;
            if (i16 >= 0 && (i14 = sVar.I) >= 0) {
                if (i14 >= 100) {
                    j0.f3843a.h(i14 - 100, i16);
                } else {
                    audioManager.setStreamVolume(i14, i16, 0);
                }
                sVar.I = -1;
                sVar.J = -1;
            }
            if (Build.VERSION.SDK_INT >= 21 && (mediaController = sVar.B) != null) {
                mediaController.getTransportControls().play();
                sVar.B = null;
            }
        } catch (Exception unused2) {
        }
        try {
            sVar.E.stop();
            if (i13 != -1 && Build.VERSION.SDK_INT >= 23) {
                sVar.E.setPreferredDevice(null);
            }
            sVar.E.flush();
        } catch (Exception unused3) {
        }
        sVar.e();
    }

    public static void b(s sVar, int i10, int i11, int i12, AudioManager audioManager, MediaPlayer mediaPlayer) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        sVar.getClass();
        if (Build.VERSION.SDK_INT >= 19 && i10 > 0) {
            LoudnessEnhancer loudnessEnhancer = new LoudnessEnhancer(sVar.D.getAudioSessionId());
            sVar.K = loudnessEnhancer;
            loudnessEnhancer.setTargetGain(i10);
            sVar.K.setEnabled(true);
        }
        mediaPlayer.start();
        if (i11 < 0 || i12 < 0) {
            return;
        }
        if (i11 >= 100) {
            k0 k0Var = j0.f3843a;
            sVar.J = k0Var.f(i11);
            k0Var.h(i11 - 100, i12);
        } else {
            sVar.J = audioManager.getStreamVolume(i11);
            audioManager.setStreamVolume(i11, i12, 0);
        }
        sVar.I = i11;
    }

    public static synchronized s c() {
        try {
            if (O == null) {
                O = new s();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return O;
    }

    public static boolean h(MediaController mediaController) {
        if (mediaController.getPlaybackState() == null || mediaController.getPlaybackState().getActions() == 0) {
            return false;
        }
        PrintStream printStream = System.out;
        mediaController.getPlaybackState().getState();
        mediaController.getPlaybackState().getActions();
        mediaController.getPlaybackState().getPosition();
        printStream.getClass();
        switch (mediaController.getPlaybackState().getState()) {
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.media.AudioManager$OnAudioFocusChangeListener, wa.p] */
    public final void d(int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 21 || i10 < 100) {
            if (i10 == -1 || i10 > 50) {
                return;
            }
            AudioManager audioManager = this.C;
            if (i11 < 26) {
                final int i12 = 1;
                ?? r02 = new AudioManager.OnAudioFocusChangeListener(this) { // from class: wa.p

                    /* renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ s f17699b;

                    {
                        this.f17699b = this;
                    }

                    @Override // android.media.AudioManager.OnAudioFocusChangeListener
                    public final void onAudioFocusChange(int i13) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                        switch (i12) {
                            case 0:
                                s sVar = this.f17699b;
                                sVar.getClass();
                                if (i13 == -3 || i13 == -2 || i13 == -1) {
                                    sVar.e();
                                    break;
                                }
                                break;
                            default:
                                s sVar2 = this.f17699b;
                                sVar2.getClass();
                                if (i13 == -3 || i13 == -2 || i13 == -1) {
                                    sVar2.e();
                                    break;
                                }
                                break;
                        }
                    }
                };
                this.A = r02;
                if (audioManager.requestAudioFocus(r02, 5, i10) != 1) {
                    this.A = null;
                    return;
                }
                return;
            }
            AudioFocusRequest.Builder builder = new AudioFocusRequest.Builder(i10);
            builder.setAudioAttributes(new AudioAttributes.Builder().setUsage(12).build());
            final int i13 = 0;
            builder.setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener(this) { // from class: wa.p

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ s f17699b;

                {
                    this.f17699b = this;
                }

                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public final void onAudioFocusChange(int i132) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    switch (i13) {
                        case 0:
                            s sVar = this.f17699b;
                            sVar.getClass();
                            if (i132 == -3 || i132 == -2 || i132 == -1) {
                                sVar.e();
                                break;
                            }
                            break;
                        default:
                            s sVar2 = this.f17699b;
                            sVar2.getClass();
                            if (i132 == -3 || i132 == -2 || i132 == -1) {
                                sVar2.e();
                                break;
                            }
                            break;
                    }
                }
            });
            AudioFocusRequest audioFocusRequestBuild = builder.build();
            this.z = audioFocusRequestBuild;
            if (audioManager.requestAudioFocus(audioFocusRequestBuild) != 1) {
                this.z = null;
                return;
            }
            return;
        }
        MediaController mediaController = this.B;
        if (mediaController != null) {
            if (h(mediaController)) {
                this.B.getTransportControls().pause();
                return;
            }
            return;
        }
        if (this.f17705a) {
            List<MediaController> activeSessions = ((MediaSessionManager) t.f17728a.f17735d.getSystemService("media_session")).getActiveSessions(null);
            if (!activeSessions.isEmpty()) {
                Iterator<MediaController> it = activeSessions.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediaController next = it.next();
                    if (h(next)) {
                        this.B = next;
                        break;
                    }
                }
            } else {
                return;
            }
        } else {
            List list = this.f17706b;
            if (list != null && !list.isEmpty()) {
                Iterator it2 = this.f17706b.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    MediaController mediaController2 = (MediaController) it2.next();
                    if (h(mediaController2)) {
                        this.B = mediaController2;
                        break;
                    }
                }
            }
        }
        MediaController mediaController3 = this.B;
        if (mediaController3 != null) {
            mediaController3.getTransportControls().pause();
        }
    }

    public final void e() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        int i10;
        int i11 = this.J;
        AudioManager audioManager = this.C;
        if (i11 >= 0 && (i10 = this.I) >= 0) {
            if (i10 >= 100) {
                j0.f3843a.h(i10 - 100, i11);
            } else {
                audioManager.setStreamVolume(i10, i11, 0);
            }
            this.I = -1;
            this.J = -1;
        }
        if (Build.VERSION.SDK_INT < 26) {
            if (this.A != null) {
                audioManager.abandonAudioFocus(null);
                this.A = null;
                return;
            }
            return;
        }
        AudioFocusRequest audioFocusRequest = this.z;
        if (audioFocusRequest != null) {
            audioManager.abandonAudioFocusRequest(audioFocusRequest);
            this.z = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.media.AudioManager$OnAudioFocusChangeListener, wa.k] */
    public final void f(final AccService accService, int i10) {
        if (i10 == 1) {
            if (Build.VERSION.SDK_INT >= 26) {
                if (this.f17726x != null) {
                    return;
                }
            } else if (this.f17727y != null) {
                return;
            }
        } else if (i10 == 2) {
            if (Build.VERSION.SDK_INT >= 26) {
                if (this.f17726x == null) {
                    return;
                }
            } else if (this.f17727y == null) {
                return;
            }
        }
        if (Build.VERSION.SDK_INT < 26) {
            final s sVarC = c();
            k kVar = sVarC.f17727y;
            if (kVar != null) {
                accService.O0.abandonAudioFocus(kVar);
                sVarC.f17727y = null;
                return;
            }
            final int i11 = 0;
            ?? r02 = new AudioManager.OnAudioFocusChangeListener(sVarC) { // from class: wa.k

                /* renamed from: b, reason: collision with root package name */
                public final /* synthetic */ s f17678b;

                {
                    this.f17678b = sVarC;
                }

                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public final void onAudioFocusChange(int i12) {
                    switch (i11) {
                        case 0:
                            s sVar = this.f17678b;
                            if (i12 == -3 || i12 == -2 || i12 == -1) {
                                accService.O0.abandonAudioFocus(sVar.f17727y);
                                sVar.f17727y = null;
                                break;
                            }
                            break;
                        default:
                            s sVar2 = this.f17678b;
                            if (i12 == -3 || i12 == -2 || i12 == -1) {
                                accService.O0.abandonAudioFocusRequest(sVar2.f17726x);
                                sVar2.f17726x = null;
                                break;
                            }
                            break;
                    }
                }
            };
            sVarC.f17727y = r02;
            if (accService.O0.requestAudioFocus(r02, 3, 4) != 1) {
                sVarC.f17727y = null;
                return;
            }
            return;
        }
        final s sVarC2 = c();
        AudioFocusRequest audioFocusRequest = sVarC2.f17726x;
        if (audioFocusRequest != null) {
            accService.O0.abandonAudioFocusRequest(audioFocusRequest);
            sVarC2.f17726x = null;
            return;
        }
        AudioFocusRequest.Builder builder = new AudioFocusRequest.Builder(4);
        final int i12 = 1;
        builder.setOnAudioFocusChangeListener(new AudioManager.OnAudioFocusChangeListener(sVarC2) { // from class: wa.k

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ s f17678b;

            {
                this.f17678b = sVarC2;
            }

            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i122) {
                switch (i12) {
                    case 0:
                        s sVar = this.f17678b;
                        if (i122 == -3 || i122 == -2 || i122 == -1) {
                            accService.O0.abandonAudioFocus(sVar.f17727y);
                            sVar.f17727y = null;
                            break;
                        }
                        break;
                    default:
                        s sVar2 = this.f17678b;
                        if (i122 == -3 || i122 == -2 || i122 == -1) {
                            accService.O0.abandonAudioFocusRequest(sVar2.f17726x);
                            sVar2.f17726x = null;
                            break;
                        }
                        break;
                }
            }
        });
        AudioFocusRequest audioFocusRequestBuild = builder.build();
        sVarC2.f17726x = audioFocusRequestBuild;
        if (accService.O0.requestAudioFocus(audioFocusRequestBuild) != 1) {
            sVarC2.f17726x = null;
        }
    }

    public final boolean g(String str) {
        String strTrim = str.trim();
        if (strTrim.isEmpty()) {
            return false;
        }
        String lowerCase = strTrim.toLowerCase();
        if (this.L == null) {
            ArrayList arrayList = new ArrayList(Arrays.asList(com.yunpan.appmanage.util.v.f4106a.B0.split("\\|")));
            this.L = arrayList;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str2 = (String) arrayList.get(size);
                if (str2.startsWith(".")) {
                    arrayList.set(size, str2.substring(1));
                }
                if (str2.isEmpty()) {
                    arrayList.remove(size);
                }
            }
        }
        Iterator it = this.L.iterator();
        while (it.hasNext()) {
            if (lowerCase.endsWith("." + ((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    public final void i(final int i10) {
        z7.s sVar = this.f17725w;
        if (sVar == null) {
            return;
        }
        Iterator$EL.forEachRemaining(sVar.p("keys").f19478a.iterator(), new Consumer() { // from class: wa.q
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                z7.p pVar = (z7.p) obj;
                s sVar2 = this.f17700a;
                sVar2.getClass();
                try {
                    if (pVar.g().o("isOpen").b() && pVar.g().q("event").o("type").e() == i10) {
                        sVar2.f17709e.b(pVar.g().p("click"));
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
    }

    public final void j(final int i10, final String str) {
        z7.s sVar;
        if (this.f17709e == null || (sVar = this.f17725w) == null) {
            return;
        }
        Iterator$EL.forEachRemaining(sVar.p("keys").f19478a.iterator(), new Consumer() { // from class: wa.r
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                String str2 = str;
                z7.p pVar = (z7.p) obj;
                s sVar2 = this.f17702a;
                sVar2.getClass();
                try {
                    if (pVar.g().o("isOpen").b()) {
                        z7.s sVarQ = pVar.g().q("event");
                        if (sVarQ.o("type").e() == i10 && sVarQ.o("str1").i().equals(str2)) {
                            sVar2.f17709e.b(pVar.g().p("click"));
                        }
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
    }

    public final void k(z7.s sVar) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (this.G != null) {
            a0.u("已停止喊麦");
            r(true);
            return;
        }
        try {
            b8.n nVar = sVar.f19480a;
            ra.c cVar = new ra.c(this.f17709e, nVar.containsKey("microphoneId") ? sVar.o("microphoneId").e() : -1, nVar.containsKey("microphoneGain") ? sVar.o("microphoneGain").e() : 50, sVar.o("tdType").e(), sVar.o("speakerId").e(), nVar.containsKey("noiseType") ? sVar.o("noiseType").e() : 0);
            this.G = cVar;
            cVar.d(new g6(this, 9, sVar));
        } catch (Exception e7) {
            a0.u("无法喊麦：" + e7.getMessage());
        }
    }

    public final void l(final File file, int i10, final int i11, final int i12, final int i13, final int i14) {
        final AudioManager audioManager = (AudioManager) AppStart.f3772h.getSystemService("audio");
        int i15 = 0;
        if (file.getPath().toLowerCase().endsWith(".pcm")) {
            int minBufferSize = AudioTrack.getMinBufferSize(44100, 4, 2);
            if (this.E == null) {
                if (Build.VERSION.SDK_INT >= 21) {
                    this.E = new AudioTrack(new AudioAttributes.Builder().setUsage(i10).setContentType(2).build(), new AudioFormat.Builder().setEncoding(2).setSampleRate(44100).setChannelMask(4).build(), minBufferSize, 1, 0);
                } else {
                    this.E = new AudioTrack(i10, 44100, 4, 2, minBufferSize, 1);
                }
            }
            if (i13 != -1 && Build.VERSION.SDK_INT >= 23) {
                AudioDeviceInfo[] devices = audioManager.getDevices(2);
                int length = devices.length;
                while (true) {
                    if (i15 >= length) {
                        break;
                    }
                    AudioDeviceInfo audioDeviceInfo = devices[i15];
                    if (audioDeviceInfo.getId() == i13) {
                        this.E.setPreferredDevice(audioDeviceInfo);
                        break;
                    }
                    i15++;
                }
            }
            new fg.b(new Runnable() { // from class: wa.m
                @Override // java.lang.Runnable
                public final void run() throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
                    s.a(this.f17684a, i11, i12, audioManager, i14, file, i13);
                }
            }, 1).start();
            return;
        }
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.D = mediaPlayer;
        try {
            mediaPlayer.setDataSource(t.f17728a.f17735d, Uri.fromFile(file));
        } catch (IOException unused) {
            this.D.release();
            this.D = null;
            e();
        }
        MediaPlayer mediaPlayer2 = this.D;
        if (mediaPlayer2 != null) {
            int i16 = Build.VERSION.SDK_INT;
            if (i16 >= 21) {
                this.D.setAudioAttributes(new AudioAttributes.Builder().setUsage(i10).setContentType(2).build());
            } else {
                mediaPlayer2.setAudioStreamType(i10);
            }
            if (i13 != -1 && i16 >= 28) {
                AudioDeviceInfo[] devices2 = audioManager.getDevices(2);
                int length2 = devices2.length;
                while (true) {
                    if (i15 >= length2) {
                        break;
                    }
                    AudioDeviceInfo audioDeviceInfo2 = devices2[i15];
                    if (audioDeviceInfo2.getId() == i13) {
                        this.D.setPreferredDevice(audioDeviceInfo2);
                        break;
                    }
                    i15++;
                }
            }
            this.D.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: wa.n
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer3) throws IllegalStateException, UnsupportedOperationException, IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    s.b(this.f17691a, i14, i11, i12, audioManager, mediaPlayer3);
                }
            });
            this.D.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: wa.o
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer3) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
                    MediaController mediaController;
                    int i17;
                    s sVar = this.f17696a;
                    LoudnessEnhancer loudnessEnhancer = sVar.K;
                    if (loudnessEnhancer != null) {
                        try {
                            loudnessEnhancer.release();
                        } catch (Exception unused2) {
                        }
                        sVar.K = null;
                    }
                    int i18 = sVar.J;
                    if (i18 >= 0 && (i17 = sVar.I) >= 0) {
                        if (i17 >= 100) {
                            j0.f3843a.h(i17 - 100, i18);
                        } else {
                            audioManager.setStreamVolume(i17, i18, 0);
                        }
                        sVar.I = -1;
                        sVar.J = -1;
                    }
                    if (Build.VERSION.SDK_INT >= 21 && (mediaController = sVar.B) != null) {
                        mediaController.getTransportControls().play();
                        sVar.B = null;
                    }
                    mediaPlayer3.release();
                    sVar.e();
                }
            });
            this.D.prepareAsync();
        }
    }

    public final void m(z7.s sVar) {
        int iE;
        int iE2;
        int iE3;
        File file = new File(sVar.o("str1").i());
        if (a0.f(file)) {
            try {
                iE = sVar.o("volumeType").e();
            } catch (Exception unused) {
                iE = -1;
            }
            int iE4 = sVar.o("int1").e();
            b8.n nVar = sVar.f19480a;
            int iE5 = nVar.containsKey("tdType") ? sVar.o("tdType").e() : Build.VERSION.SDK_INT >= 21 ? 1 : 3;
            try {
                iE2 = sVar.o("focusType").e();
            } catch (Exception unused2) {
                iE2 = 2;
            }
            try {
                iE3 = sVar.o("speakerId").e();
            } catch (Exception unused3) {
                iE3 = -1;
            }
            int iE6 = nVar.containsKey("volumeGain") ? sVar.o("volumeGain").e() : 0;
            r(true);
            d(iE2);
            if (iE >= 0 && iE4 >= 0 && iE2 > 0) {
                this.f17709e.f3938j.postDelayed(new j(this, file, iE5, iE, iE4, iE3, iE6, 0), 80L);
            } else {
                try {
                    l(file, iE5, iE, iE4, iE3, iE6);
                } catch (Exception unused4) {
                }
            }
        }
    }

    public final void n(z7.s sVar) {
        int iE;
        int iE2;
        int iE3;
        z7.o oVarF = sVar.o("list").f();
        File file = new File(oVarF.l(ThreadLocalRandom.current().nextInt(0, oVarF.f19478a.size())).i());
        if (a0.f(file)) {
            if (!file.isFile()) {
                try {
                    File[] fileArrListFiles = new File(file.getPath()).listFiles();
                    if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                        ArrayList arrayList = new ArrayList(Arrays.asList(fileArrListFiles));
                        PrintStream printStream = System.out;
                        arrayList.size();
                        printStream.getClass();
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            if (!((File) arrayList.get(size)).isFile() || !g(((File) arrayList.get(size)).getName())) {
                                arrayList.remove(size);
                            }
                        }
                        if (arrayList.isEmpty()) {
                            System.out.getClass();
                            return;
                        }
                        file = (File) arrayList.get(ThreadLocalRandom.current().nextInt(0, arrayList.size()));
                        PrintStream printStream2 = System.out;
                        file.getPath();
                        printStream2.getClass();
                    }
                    return;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            }
            File file2 = file;
            try {
                iE = sVar.o("volumeType").e();
            } catch (Exception unused) {
                iE = -1;
            }
            int iE4 = sVar.o("int1").e();
            b8.n nVar = sVar.f19480a;
            int iE5 = nVar.containsKey("tdType") ? sVar.o("tdType").e() : Build.VERSION.SDK_INT >= 21 ? 1 : 3;
            try {
                iE2 = sVar.o("focusType").e();
            } catch (Exception unused2) {
                iE2 = 2;
            }
            try {
                iE3 = sVar.o("speakerId").e();
            } catch (Exception unused3) {
                iE3 = -1;
            }
            int iE6 = nVar.containsKey("volumeGain") ? sVar.o("volumeGain").e() : 0;
            r(true);
            d(iE2);
            if (iE >= 0 && iE4 >= 0 && iE2 > 0) {
                this.f17709e.f3938j.postDelayed(new j(this, file2, iE5, iE, iE4, iE3, iE6, 1), 80L);
            } else {
                try {
                    l(file2, iE5, iE, iE4, iE3, iE6);
                } catch (Exception unused4) {
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0030 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void o(final z7.s sVar) {
        r(true);
        TextToSpeech textToSpeech = this.M;
        if (textToSpeech != null) {
            try {
                try {
                    if (!textToSpeech.getDefaultEngine().equals(sVar.o("ttsEngine").i())) {
                        this.M.shutdown();
                        this.M = null;
                    }
                } catch (Exception unused) {
                    this.M = null;
                    if (this.M != null) {
                    }
                }
            } catch (Exception unused2) {
                this.M.shutdown();
                this.M = null;
                if (this.M != null) {
                }
            }
        }
        if (this.M != null) {
            try {
                s(sVar);
            } catch (Exception unused3) {
            }
        } else {
            try {
                this.M = new TextToSpeech(this.f17709e, new TextToSpeech.OnInitListener() { // from class: wa.i
                    @Override // android.speech.tts.TextToSpeech.OnInitListener
                    public final void onInit(int i10) {
                        z7.s sVar2 = sVar;
                        s sVar3 = this.f17667a;
                        if (i10 == 0) {
                            sVar3.M.setOnUtteranceProgressListener(new fe(1, sVar3));
                            try {
                                sVar3.s(sVar2);
                            } catch (Exception unused4) {
                            }
                        } else {
                            sVar3.getClass();
                            a0.u("TTS引擎初始化失败，不可用");
                            try {
                                TextToSpeech textToSpeech2 = sVar3.M;
                                if (textToSpeech2 != null) {
                                    textToSpeech2.shutdown();
                                }
                            } catch (Exception unused5) {
                            }
                            sVar3.M = null;
                        }
                    }
                }, sVar.o("ttsEngine").i());
            } catch (Exception unused4) {
                a0.u("TTS引擎不可用");
                this.M = null;
            }
        }
    }

    public final void p(AccService accService) {
        this.f17709e = accService;
        this.f17725w = q4.a.I(new File(accService.getFilesDir().getAbsolutePath(), "KeyMapEvent.json"));
        this.f17713i.clear();
        if (this.f17725w == null) {
            return;
        }
        accService.l.removeCallbacksAndMessages(null);
        this.f17714j.clear();
        this.l.clear();
        this.r.clear();
        Iterator$EL.forEachRemaining(this.f17725w.p("keys").f19478a.iterator(), new l(this, accService, new AtomicInteger(0), 1));
    }

    public final void q() {
        MediaController mediaController;
        System.out.getClass();
        if (Build.VERSION.SDK_INT >= 21 && (mediaController = this.B) != null) {
            mediaController.getTransportControls().play();
            this.B = null;
        }
        e();
    }

    public final void r(boolean z) {
        MediaController mediaController;
        int i10;
        this.f17709e.f3938j.removeCallbacks(this.N);
        LoudnessEnhancer loudnessEnhancer = this.K;
        if (loudnessEnhancer != null) {
            try {
                loudnessEnhancer.release();
            } catch (Exception unused) {
            }
            this.K = null;
        }
        v8.a aVar = this.H;
        if (aVar != null) {
            try {
                aVar.c(0L);
                v8.a aVar2 = this.H;
                aVar2.getClass();
                Handler handler = v8.i.f16679a;
                Runnable runnable = aVar2.f16668p;
                handler.removeCallbacks(runnable);
                aVar2.i(runnable, 0L);
                this.H = null;
            } catch (Exception unused2) {
            }
        }
        ra.c cVar = this.G;
        if (cVar != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                cVar.e();
            }
            this.G = null;
        }
        TextToSpeech textToSpeech = this.M;
        if (textToSpeech != null && textToSpeech.isSpeaking()) {
            this.M.stop();
        }
        int i11 = this.J;
        if (i11 >= 0 && (i10 = this.I) >= 0) {
            if (i10 >= 100) {
                j0.f3843a.h(i10 - 100, i11);
            } else {
                this.C.setStreamVolume(i10, i11, 0);
            }
            this.I = -1;
            this.J = -1;
        }
        this.F = true;
        MediaPlayer mediaPlayer = this.D;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
                this.D.release();
            } catch (Exception unused3) {
            }
            this.D = null;
        }
        AudioTrack audioTrack = this.E;
        if (audioTrack != null) {
            if (audioTrack.getPlayState() == 3 || this.E.getPlayState() == 2) {
                try {
                    this.E.stop();
                    this.E.flush();
                } catch (Exception unused4) {
                }
            }
            if (Build.VERSION.SDK_INT >= 23) {
                this.E.setPreferredDevice(null);
            }
            this.E.release();
            this.E = null;
        }
        if (Build.VERSION.SDK_INT >= 21 && (mediaController = this.B) != null) {
            if (!z) {
                mediaController.getTransportControls().play();
                this.B = null;
            } else if (h(mediaController)) {
                this.B.getTransportControls().pause();
            }
        }
        e();
    }

    public final void s(z7.s sVar) {
        int iE = sVar.o("volumeType").e();
        int iE2 = sVar.o("int1").e();
        int iE3 = sVar.o("focusType").e();
        d(iE3);
        if (iE >= 0 && iE2 >= 0 && iE3 > 0) {
            this.f17709e.f3938j.postDelayed(new s1.f(this, 14, sVar), 80L);
            return;
        }
        try {
            t(sVar);
        } catch (Exception unused) {
            q();
        }
    }

    public final void t(z7.s sVar) {
        Set<Voice> voices = this.M.getVoices();
        if (!voices.isEmpty()) {
            for (Voice voice : voices) {
                if (voice.getName().equals(sVar.o("ttsVoice").i())) {
                    this.M.setVoice(voice);
                }
            }
        }
        Set<Locale> availableLanguages = this.M.getAvailableLanguages();
        if (!availableLanguages.isEmpty()) {
            for (Locale locale : availableLanguages) {
                if (locale.getDisplayName().equals(sVar.o("ttsLocale").i())) {
                    this.M.setLanguage(locale);
                }
            }
        }
        this.M.setSpeechRate(sVar.o("ttsSpeechRate").e() / 50.0f);
        try {
            this.M.setAudioAttributes(new AudioAttributes.Builder().setUsage(sVar.o("tdType").e()).setContentType(1).build());
        } catch (Exception unused) {
        }
        if (this.M.speak(sVar.o("tts").i(), 0, null, "gj_TTS") == -1) {
            a0.t("tts播报失败");
            q();
            return;
        }
        int iE = sVar.o("volumeType").e();
        int iE2 = sVar.o("int1").e();
        if (iE >= 0 && iE2 >= 0) {
            if (iE >= 100) {
                k0 k0Var = j0.f3843a;
                this.J = k0Var.f(iE);
                k0Var.h(iE - 100, iE2);
            } else {
                AudioManager audioManager = this.C;
                this.J = audioManager.getStreamVolume(iE);
                audioManager.setStreamVolume(iE, iE2, 0);
            }
            this.I = iE;
        }
        this.f17709e.f3938j.postDelayed(this.N, 1000L);
    }
}
