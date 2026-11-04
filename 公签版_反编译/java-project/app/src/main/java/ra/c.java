package ra;

import a2.c0;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AutomaticGainControl;
import android.media.audiofx.NoiseSuppressor;
import android.os.Build;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final d f13732a;

    /* renamed from: b, reason: collision with root package name */
    public final a f13733b;

    /* renamed from: c, reason: collision with root package name */
    public final b f13734c;

    /* renamed from: e, reason: collision with root package name */
    public float f13736e;

    /* renamed from: f, reason: collision with root package name */
    public AcousticEchoCanceler f13737f;

    /* renamed from: g, reason: collision with root package name */
    public NoiseSuppressor f13738g;

    /* renamed from: h, reason: collision with root package name */
    public AutomaticGainControl f13739h;

    /* renamed from: i, reason: collision with root package name */
    public final AudioManager f13740i;

    /* renamed from: j, reason: collision with root package name */
    public AudioTrack f13741j;

    /* renamed from: k, reason: collision with root package name */
    public AudioRecord f13742k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public final int f13743m;

    /* renamed from: o, reason: collision with root package name */
    public Thread f13745o;

    /* renamed from: d, reason: collision with root package name */
    public float f13735d = 1.0f;

    /* renamed from: n, reason: collision with root package name */
    public final AtomicBoolean f13744n = new AtomicBoolean(true);

    /* renamed from: p, reason: collision with root package name */
    public final Object f13746p = new Object();

    public c(Context context, int i10, int i11, int i12, int i13, int i14) throws Exception {
        this.f13741j = null;
        this.f13742k = null;
        d dVar = new d();
        dVar.f13748b = true;
        dVar.f13749c = true;
        dVar.f13750d = true;
        this.f13732a = dVar;
        this.f13733b = new a();
        this.f13734c = new b();
        this.f13743m = i14;
        dVar.f13747a = ((i11 / 100.0f) * 2.0f) + 1.0f;
        this.f13740i = (AudioManager) context.getSystemService("audio");
        int iMax = Math.max(Math.max(AudioRecord.getMinBufferSize(48000, 16, 2), AudioTrack.getMinBufferSize(48000, 4, 2)), 4096);
        this.l = iMax;
        if (i14 == 2) {
            AudioRecord audioRecord = new AudioRecord(0, 48000, 16, 2, iMax);
            this.f13742k = audioRecord;
            if (audioRecord.getState() != 1) {
                throw new Exception("无法创建收音器");
            }
        } else {
            try {
                try {
                    try {
                        AudioRecord audioRecord2 = new AudioRecord(7, 48000, 16, 2, iMax);
                        this.f13742k = audioRecord2;
                        if (audioRecord2.getState() != 1) {
                            throw new Exception("AudioRecord init failed");
                        }
                    } catch (Exception unused) {
                        AudioRecord audioRecord3 = new AudioRecord(0, 48000, 16, 2, this.l);
                        this.f13742k = audioRecord3;
                        if (audioRecord3.getState() != 1) {
                            throw new Exception("无法创建收音器");
                        }
                    }
                } catch (Exception unused2) {
                    AudioRecord audioRecord4 = new AudioRecord(1, 48000, 16, 2, this.l);
                    this.f13742k = audioRecord4;
                    if (audioRecord4.getState() != 1) {
                        throw new Exception("AudioRecord init failed");
                    }
                }
            } catch (Exception unused3) {
                AudioRecord audioRecord5 = new AudioRecord(6, 48000, 16, 2, this.l);
                this.f13742k = audioRecord5;
                if (audioRecord5.getState() != 1) {
                    throw new Exception("AudioRecord init failed");
                }
            }
        }
        int i15 = 0;
        if (Build.VERSION.SDK_INT >= 23 && i10 != -1) {
            AudioDeviceInfo[] devices = this.f13740i.getDevices(1);
            int length = devices.length;
            int i16 = 0;
            while (true) {
                if (i16 >= length) {
                    break;
                }
                AudioDeviceInfo audioDeviceInfo = devices[i16];
                if (audioDeviceInfo.getId() == i10) {
                    this.f13742k.setPreferredDevice(audioDeviceInfo);
                    break;
                }
                i16++;
            }
        }
        AudioAttributes.Builder contentType = new AudioAttributes.Builder().setContentType(1);
        try {
            try {
                contentType.setUsage(i12);
            } catch (Exception unused4) {
                Field declaredField = AudioAttributes.Builder.class.getDeclaredField("mUsage");
                declaredField.setAccessible(true);
                declaredField.setInt(contentType, i12);
            }
        } catch (Throwable unused5) {
            contentType.setUsage(2);
        }
        AudioTrack audioTrack = new AudioTrack(contentType.build(), new AudioFormat.Builder().setEncoding(2).setSampleRate(48000).setChannelMask(4).build(), this.l, 1, 0);
        this.f13741j = audioTrack;
        if (audioTrack.getState() != 1) {
            throw new Exception("初始化失败");
        }
        if (Build.VERSION.SDK_INT >= 23 && i13 != -1) {
            AudioDeviceInfo[] devices2 = this.f13740i.getDevices(2);
            int length2 = devices2.length;
            while (true) {
                if (i15 >= length2) {
                    break;
                }
                AudioDeviceInfo audioDeviceInfo2 = devices2[i15];
                if (audioDeviceInfo2.getId() == i13) {
                    this.f13741j.setPreferredDevice(audioDeviceInfo2);
                    break;
                }
                i15++;
            }
        }
        int i17 = this.f13743m;
        if (i17 == 0 || i17 == 2) {
            int audioSessionId = this.f13742k.getAudioSessionId();
            b();
            this.f13732a.getClass();
            if (AcousticEchoCanceler.isAvailable()) {
                AcousticEchoCanceler acousticEchoCancelerCreate = AcousticEchoCanceler.create(audioSessionId);
                this.f13737f = acousticEchoCancelerCreate;
                if (acousticEchoCancelerCreate != null) {
                    acousticEchoCancelerCreate.setEnabled(true);
                }
            }
            if (NoiseSuppressor.isAvailable()) {
                NoiseSuppressor noiseSuppressorCreate = NoiseSuppressor.create(audioSessionId);
                this.f13738g = noiseSuppressorCreate;
                if (noiseSuppressorCreate != null) {
                    noiseSuppressorCreate.setEnabled(true);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        float fMax;
        int i10 = this.l / 2;
        short[] sArr = new short[i10];
        float[] fArr = new float[i10];
        while (true) {
            AtomicBoolean atomicBoolean = this.f13744n;
            if (!atomicBoolean.get()) {
                return;
            }
            int i11 = this.f13742k.read(sArr, 0, i10);
            if (i11 > 0) {
                d dVar = this.f13732a;
                dVar.getClass();
                a aVar = this.f13733b;
                aVar.a();
                b bVar = this.f13734c;
                bVar.a();
                int i12 = 0;
                while (true) {
                    int i13 = -32768;
                    if (i12 >= i11) {
                        break;
                    }
                    float f10 = sArr[i12];
                    float f11 = ((aVar.f13728d + f10) - aVar.f13727c) * aVar.f13726b;
                    aVar.f13727c = f10;
                    aVar.f13728d = f11;
                    float f12 = bVar.f13731c;
                    float fB = g.b.b(f11, f12, bVar.f13730b, f12);
                    bVar.f13731c = fB;
                    int iRound = Math.round(fB);
                    if (iRound > 32767) {
                        i13 = 32767;
                    } else if (iRound >= -32768) {
                        i13 = iRound;
                    }
                    sArr[i12] = (short) i13;
                    i12++;
                }
                for (int i14 = 0; i14 < i11; i14++) {
                    fArr[i14] = sArr[i14] / 32768.0f;
                }
                float f13 = 0.0f;
                if (dVar.f13748b) {
                    float fMax2 = Math.max(0.003f, 0.0f);
                    float f14 = 1.5f * fMax2;
                    for (int i15 = 0; i15 < i11; i15++) {
                        float fAbs = Math.abs(fArr[i15]);
                        if (fAbs < fMax2) {
                            fMax = fMax2 > 0.0f ? fAbs / fMax2 : 1.0f;
                        } else if (fAbs < f14) {
                            fMax = (((fAbs - fMax2) / Math.max(1.0E-6f, f14 - fMax2)) * 0.3f) + 0.7f;
                        }
                        fArr[i15] = fArr[i15] * (1.0f - ((1.0f - fMax) * 0.5f));
                    }
                }
                if (dVar.f13750d) {
                    double d10 = 5.0f;
                    Double.isNaN(d10);
                    float f15 = (float) ((d10 * 6.283185307179586d) / 48000.0d);
                    for (int i16 = 0; i16 < i11; i16++) {
                        fArr[i16] = fArr[i16] * ((float) Math.cos(this.f13736e));
                        float f16 = this.f13736e + f15;
                        this.f13736e = f16;
                        if (f16 > 6.283185307179586d) {
                            this.f13736e = f16 - 6.2831855f;
                        }
                    }
                }
                float f17 = dVar.f13747a;
                for (int i17 = 0; i17 < i11; i17++) {
                    int iRound2 = Math.round(fArr[i17] * 32768.0f * f17);
                    if (iRound2 > 32767) {
                        iRound2 = 32767;
                    } else if (iRound2 < -32768) {
                        iRound2 = -32768;
                    }
                    sArr[i17] = (short) iRound2;
                }
                if (dVar.f13749c) {
                    if (i11 > 0) {
                        double d11 = 0.0d;
                        for (int i18 = 0; i18 < i11; i18++) {
                            double d12 = sArr[i18];
                            Double.isNaN(d12);
                            Double.isNaN(d12);
                            d11 += d12 * d12;
                        }
                        double d13 = i11;
                        Double.isNaN(d13);
                        float fSqrt = (float) (Math.sqrt(d11 / d13) / 32767.0d);
                        if (fSqrt >= 0.0f) {
                            f13 = fSqrt > 1.0f ? 1.0f : fSqrt;
                        }
                    }
                    if (f13 > 0.45f) {
                        float fMax3 = 0.45f / Math.max(f13, 1.0E-6f);
                        if (fMax3 < 0.05f) {
                            fMax3 = 0.05f;
                        } else if (fMax3 > 1.0f) {
                            fMax3 = 1.0f;
                        }
                        float f18 = this.f13735d;
                        float f19 = ((fMax3 - f18) * (fMax3 < f18 ? 0.15f : 0.02f)) + f18;
                        float f20 = f19 < 0.05f ? 0.05f : f19 > 1.0f ? 1.0f : f19;
                        this.f13735d = f20;
                        if (f20 < 0.99f) {
                            for (int i19 = 0; i19 < i11; i19++) {
                                int iRound3 = Math.round(sArr[i19] * this.f13735d);
                                if (iRound3 > 32767) {
                                    iRound3 = 32767;
                                } else if (iRound3 < -32768) {
                                    iRound3 = -32768;
                                }
                                sArr[i19] = (short) iRound3;
                            }
                        }
                    }
                }
                this.f13741j.write(sArr, 0, i11);
            } else if (!atomicBoolean.get()) {
                return;
            }
        }
    }

    public final void b() {
        AcousticEchoCanceler acousticEchoCanceler = this.f13737f;
        if (acousticEchoCanceler != null) {
            acousticEchoCanceler.release();
            this.f13737f = null;
        }
        NoiseSuppressor noiseSuppressor = this.f13738g;
        if (noiseSuppressor != null) {
            noiseSuppressor.release();
            this.f13738g = null;
        }
        AutomaticGainControl automaticGainControl = this.f13739h;
        if (automaticGainControl != null) {
            automaticGainControl.release();
            this.f13739h = null;
        }
    }

    public final void c() {
        AudioRecord audioRecord = this.f13742k;
        if (audioRecord != null) {
            try {
                audioRecord.stop();
            } catch (Exception unused) {
            }
            this.f13742k.release();
            this.f13742k = null;
        }
        AudioTrack audioTrack = this.f13741j;
        if (audioTrack != null) {
            try {
                audioTrack.stop();
            } catch (Exception unused2) {
            }
            this.f13741j.release();
            this.f13741j = null;
        }
        b();
    }

    public final void d(ea.b bVar) {
        Thread thread = this.f13745o;
        if (thread == null || !thread.isAlive()) {
            this.f13744n.set(true);
            Thread thread2 = new Thread(new c0(this, 29, bVar), "TalkAudioEngine-Thread");
            this.f13745o = thread2;
            thread2.setPriority(10);
            this.f13745o.start();
        }
    }

    public final void e() {
        this.f13744n.set(false);
        synchronized (this.f13746p) {
            Thread thread = this.f13745o;
            if (thread != null) {
                try {
                    thread.join(500L);
                } catch (InterruptedException e7) {
                    e7.printStackTrace();
                }
                this.f13745o = null;
            }
        }
    }
}
