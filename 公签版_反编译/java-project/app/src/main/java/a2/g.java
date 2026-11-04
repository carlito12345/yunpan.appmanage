package a2;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.AudioProfile;
import android.os.Build;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import j$.util.Objects;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: e, reason: collision with root package name */
    public static final u7.y0 f163e;

    /* renamed from: f, reason: collision with root package name */
    public static final g f164f;

    /* renamed from: g, reason: collision with root package name */
    public static final u7.y0 f165g;

    /* renamed from: h, reason: collision with root package name */
    public static final u7.d1 f166h;

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f167a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public final int f168b;

    /* renamed from: c, reason: collision with root package name */
    public final u7.g0 f169c;

    /* renamed from: d, reason: collision with root package name */
    public final u7.g0 f170d;

    static {
        u7.y0 y0VarR = u7.g0.r(12);
        f163e = y0VarR;
        f164f = new g(u7.g0.r(f.f154d), y0VarR, u7.y0.f15549e);
        Object[] objArr = {2, 5, 6};
        u7.q.b(3, objArr);
        f165g = u7.g0.i(3, objArr);
        androidx.room.s sVar = new androidx.room.s(4, 12);
        sVar.A(5, 6);
        sVar.A(17, 6);
        sVar.A(7, 6);
        sVar.A(30, 10);
        sVar.A(18, 6);
        sVar.A(6, 8);
        sVar.A(8, 8);
        sVar.A(14, 8);
        f166h = sVar.b(true);
    }

    public g(u7.y0 y0Var, u7.g0 g0Var, List list) {
        for (int i10 = 0; i10 < y0Var.f15551d; i10++) {
            f fVar = (f) y0Var.get(i10);
            this.f167a.put(fVar.f155a, fVar);
        }
        int iMax = 0;
        for (int i11 = 0; i11 < this.f167a.size(); i11++) {
            iMax = Math.max(iMax, ((f) this.f167a.valueAt(i11)).f156b);
        }
        this.f168b = iMax;
        this.f169c = u7.g0.m(g0Var);
        this.f170d = u7.g0.m(list);
    }

    public static u7.y0 a(int i10, int[] iArr) {
        u7.e0 e0Var = u7.g0.f15471b;
        u7.q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i11 = 0;
        if (iArr == null) {
            iArr = new int[0];
        }
        int i12 = 0;
        while (i11 < iArr.length) {
            f fVar = new f(iArr[i11], i10);
            int i13 = i12 + 1;
            int iF = u7.a0.f(objArrCopyOf.length, i13);
            if (iF > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[i12] = fVar;
            i11++;
            i12 = i13;
        }
        return u7.g0.i(i12, objArrCopyOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01af  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static g b(Context context, Intent intent, r1.d dVar, AudioDeviceInfo audioDeviceInfo, List list) {
        AudioManager audioManagerV = s1.g.v(context);
        int i10 = 0;
        if (audioDeviceInfo == null) {
            if (Build.VERSION.SDK_INT >= 33) {
                List audioDevicesForAttributes = audioManagerV.getAudioDevicesForAttributes(dVar.a());
                audioDeviceInfo = audioDevicesForAttributes.isEmpty() ? null : a.f(audioDevicesForAttributes.get(0));
            }
        }
        u7.g0 g0VarB = audioDeviceInfo != null ? t1.b(audioDeviceInfo) : f163e;
        if (Build.VERSION.SDK_INT >= 33 && (u1.f0.F(context) || context.getPackageManager().hasSystemFeature("android.hardware.type.automotive"))) {
            List directProfilesForAttributes = audioManagerV.getDirectProfilesForAttributes(dVar.a());
            HashMap map = new HashMap();
            map.put(2, new HashSet(d.b.a(12)));
            for (int i11 = 0; i11 < directProfilesForAttributes.size(); i11++) {
                AudioProfile audioProfileJ = b.j(directProfilesForAttributes.get(i11));
                if (audioProfileJ.getEncapsulationType() != 1) {
                    int format = audioProfileJ.getFormat();
                    if (u1.f0.D(format) || f166h.containsKey(Integer.valueOf(format))) {
                        if (map.containsKey(Integer.valueOf(format))) {
                            Set set = (Set) map.get(Integer.valueOf(format));
                            set.getClass();
                            set.addAll(d.b.a(audioProfileJ.getChannelMasks()));
                        } else {
                            map.put(Integer.valueOf(format), new HashSet(d.b.a(audioProfileJ.getChannelMasks())));
                        }
                    }
                }
            }
            u7.e0 e0Var = u7.g0.f15471b;
            u7.q.c(4, "initialCapacity");
            Object[] objArrCopyOf = new Object[4];
            for (Map.Entry entry : map.entrySet()) {
                f fVar = new f(((Integer) entry.getKey()).intValue(), (Set) entry.getValue());
                int i12 = i10 + 1;
                int iF = u7.a0.f(objArrCopyOf.length, i12);
                if (iF > objArrCopyOf.length) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                }
                objArrCopyOf[i10] = fVar;
                i10 = i12;
            }
            return new g(u7.g0.i(i10, objArrCopyOf), g0VarB, list);
        }
        for (AudioDeviceInfo audioDeviceInfo2 : audioDeviceInfo == null ? audioManagerV.getDevices(2) : new AudioDeviceInfo[]{audioDeviceInfo}) {
            if (android.support.v4.media.session.b.t(audioDeviceInfo2.getType())) {
                return new g(u7.g0.r(f.f154d), g0VarB, list);
            }
        }
        u7.i0 i0Var = new u7.i0();
        i0Var.b(2);
        if (Build.VERSION.SDK_INT >= 29 && (u1.f0.F(context) || context.getPackageManager().hasSystemFeature("android.hardware.type.automotive"))) {
            u7.y0 y0VarB = d.b(dVar);
            y0VarB.getClass();
            i0Var.d(y0VarB);
            return new g(a(10, d.b.r0(i0Var.h())), g0VarB, list);
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if (!z) {
            String str = Build.MANUFACTURER;
            if (str.equals("Amazon") || str.equals("Xiaomi")) {
                if (Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
                    u7.y0 y0Var = f165g;
                    y0Var.getClass();
                    i0Var.d(y0Var);
                }
            }
        }
        if (intent == null || z || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new g(a(10, d.b.r0(i0Var.h())), g0VarB, list);
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            List listA = d.b.a(intArrayExtra);
            listA.getClass();
            i0Var.d(listA);
        }
        return new g(a(intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10), d.b.r0(i0Var.h())), g0VarB, list);
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Pair c(r1.d dVar, r1.p pVar) {
        String str = pVar.f13523o;
        str.getClass();
        int iB = r1.e0.b(str, pVar.f13520k);
        Integer numValueOf = Integer.valueOf(iB);
        u7.d1 d1Var = f166h;
        if (!d1Var.containsKey(numValueOf)) {
            return null;
        }
        SparseArray sparseArray = this.f167a;
        int i10 = 6;
        if (iB == 18 && !u1.f0.i(18, sparseArray)) {
            iB = 6;
        } else if ((iB == 8 && !u1.f0.i(8, sparseArray)) || (iB == 30 && !u1.f0.i(30, sparseArray))) {
            iB = 7;
        }
        if (!u1.f0.i(iB, sparseArray)) {
            return null;
        }
        f fVar = (f) sparseArray.get(iB);
        fVar.getClass();
        boolean zContains = false;
        int iIntValue = fVar.f156b;
        u7.j0 j0Var = fVar.f157c;
        int i11 = pVar.G;
        if (i11 == -1 || iB == 18) {
            int i12 = pVar.H;
            if (i12 == -1) {
                i12 = 48000;
            }
            if (j0Var == null) {
                int i13 = Build.VERSION.SDK_INT;
                int i14 = fVar.f155a;
                if (i13 >= 29) {
                    iIntValue = d.c(i14, i12, dVar);
                } else {
                    Object obj = d1Var.get(Integer.valueOf(i14));
                    iIntValue = ((Integer) (obj != null ? obj : 0)).intValue();
                }
            }
            i11 = iIntValue;
        } else if (!pVar.f13523o.equals("audio/vnd.dts.uhd;profile=p2") || Build.VERSION.SDK_INT >= 33) {
            if (j0Var != null) {
                int iN = u1.f0.n(i11);
                if (iN != 0) {
                    zContains = j0Var.contains(Integer.valueOf(iN));
                }
            } else if (i11 <= iIntValue) {
                zContains = true;
            }
            if (!zContains) {
                return null;
            }
        } else if (i11 > 10) {
            return null;
        }
        int i15 = Build.VERSION.SDK_INT;
        if (i15 > 28) {
            i10 = i11;
        } else if (i11 == 7) {
            i10 = 8;
        } else if (i11 != 3 && i11 != 4 && i11 != 5) {
        }
        if (i15 <= 26 && "fugu".equals(Build.DEVICE) && i10 == 1) {
            i10 = 2;
        }
        int iN2 = u1.f0.n(i10);
        if (iN2 == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iB), Integer.valueOf(iN2));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0019 A[EDGE_INSN: B:13:0x0019->B:27:0x004a BREAK  A[LOOP:0: B:21:0x0032->B:25:0x0047]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean zContentEquals;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        SparseArray sparseArray = this.f167a;
        SparseArray sparseArray2 = gVar.f167a;
        String str = u1.f0.f15206a;
        if (sparseArray == null) {
            if (sparseArray2 != null) {
                zContentEquals = false;
                break;
            }
            zContentEquals = true;
        } else if (sparseArray2 != null) {
            if (Build.VERSION.SDK_INT < 31) {
                int size = sparseArray.size();
                if (size == sparseArray2.size()) {
                    for (int i10 = 0; i10 < size; i10++) {
                        if (Objects.equals(sparseArray.valueAt(i10), sparseArray2.get(sparseArray.keyAt(i10)))) {
                        }
                    }
                    zContentEquals = true;
                }
                zContentEquals = false;
                break;
            } else {
                zContentEquals = sparseArray.contentEquals(sparseArray2);
            }
        }
        return zContentEquals && this.f168b == gVar.f168b && Objects.equals(this.f169c, gVar.f169c) && Objects.equals(this.f170d, gVar.f170d);
    }

    public final int hashCode() {
        int iContentHashCode;
        int i10 = this.f168b * 31;
        SparseArray sparseArray = this.f167a;
        String str = u1.f0.f15206a;
        if (Build.VERSION.SDK_INT >= 31) {
            iContentHashCode = sparseArray.contentHashCode();
        } else {
            int iHashCode = 17;
            for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                iHashCode = Objects.hashCode(sparseArray.valueAt(i11)) + ((sparseArray.keyAt(i11) + (iHashCode * 31)) * 31);
            }
            iContentHashCode = iHashCode;
        }
        return Objects.hashCode(this.f170d) + ((Objects.hashCode(this.f169c) + ((i10 + iContentHashCode) * 31)) * 31);
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f168b + ", audioProfiles=" + this.f167a + ", speakerLayoutChannelMasks=" + this.f169c + ", spatializerChannelMasks=" + this.f170d + "]";
    }
}
