package a2;

import android.media.AudioDescriptor;
import android.media.AudioDeviceInfo;
import android.media.AudioProfile;
import android.os.Build;
import j$.util.Comparator$CC;
import j$.util.Comparator$EL;
import j$.util.List;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public abstract class t1 {

    /* renamed from: a, reason: collision with root package name */
    public static final u7.y0 f320a = u7.g0.r(12);

    public static u7.g0 a(AudioDeviceInfo audioDeviceInfo) {
        List audioProfiles = audioDeviceInfo.getAudioProfiles();
        TreeSet treeSet = new TreeSet(Comparator$EL.reversed(Comparator$CC.comparing(new n(0))));
        Iterator it = audioProfiles.iterator();
        while (it.hasNext()) {
            AudioProfile audioProfileJ = b.j(it.next());
            if (audioProfileJ.getEncapsulationType() != 1 && u1.f0.D(audioProfileJ.getFormat())) {
                for (int i10 : audioProfileJ.getChannelMasks()) {
                    treeSet.add(Integer.valueOf(i10));
                }
            }
        }
        return u7.g0.m(treeSet);
    }

    public static u7.g0 b(AudioDeviceInfo audioDeviceInfo) {
        u7.g0 g0VarM;
        int i10;
        int speakerLayoutChannelMask;
        boolean zT = android.support.v4.media.session.b.t(audioDeviceInfo.getType());
        u7.y0 y0Var = f320a;
        if (zT) {
            return y0Var;
        }
        if (audioDeviceInfo.getType() == 1) {
            return u7.g0.r(4);
        }
        if (audioDeviceInfo.getType() == 2) {
            if (Build.VERSION.SDK_INT >= 36 && (speakerLayoutChannelMask = audioDeviceInfo.getSpeakerLayoutChannelMask()) != 0 && speakerLayoutChannelMask != 1) {
                return u7.g0.r(Integer.valueOf(speakerLayoutChannelMask));
            }
            u1.a.p("Built-in speaker's getSpeakerLayoutChannelMask not usable, defaulting to stereo.");
            return y0Var;
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 31 && android.support.v4.media.session.b.u(audioDeviceInfo.getType())) {
            u7.g0 g0VarA = a(audioDeviceInfo);
            if (!g0VarA.isEmpty()) {
                return g0VarA;
            }
            u7.g0 g0VarK = a9.o.K(audioDeviceInfo.getAudioDescriptors());
            return !g0VarK.isEmpty() ? g0VarK : y0Var;
        }
        if (i11 < 31 || !android.support.v4.media.session.b.v(audioDeviceInfo.getType())) {
            if (i11 < 31 || !android.support.v4.media.session.b.w(audioDeviceInfo.getType())) {
                return y0Var;
            }
            u7.g0 g0VarA2 = a(audioDeviceInfo);
            return !g0VarA2.isEmpty() ? g0VarA2 : y0Var;
        }
        u7.g0 g0VarA3 = a(audioDeviceInfo);
        if (!g0VarA3.isEmpty()) {
            return g0VarA3;
        }
        List audioDescriptors = audioDeviceInfo.getAudioDescriptors();
        if (i11 >= 34) {
            if (i11 < 34 || audioDescriptors == null) {
                u7.e0 e0Var = u7.g0.f15471b;
                g0VarM = u7.y0.f15549e;
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = audioDescriptors.iterator();
                while (it.hasNext()) {
                    AudioDescriptor audioDescriptorI = b.i(it.next());
                    if (audioDescriptorI.getStandard() == 2) {
                        byte[] descriptor = audioDescriptorI.getDescriptor();
                        if (descriptor.length != 3) {
                            u1.a.p("Invalid SADB length: " + descriptor.length);
                        } else {
                            if (Build.VERSION.SDK_INT < 34 || descriptor.length != 3) {
                                i10 = 0;
                            } else {
                                byte b10 = descriptor[0];
                                i10 = (b10 & 1) != 0 ? 12 : 0;
                                if ((b10 & 2) != 0) {
                                    i10 |= 32;
                                }
                                if ((b10 & 4) != 0) {
                                    i10 |= 16;
                                }
                                if ((b10 & 8) != 0) {
                                    i10 |= 192;
                                }
                                if ((b10 & 16) != 0) {
                                    i10 |= 1024;
                                }
                                if ((b10 & HebrewProber.SPACE) != 0) {
                                    i10 |= 768;
                                }
                                if ((b10 & 128) != 0) {
                                    i10 |= 201326592;
                                }
                                byte b11 = descriptor[1];
                                if ((b11 & 1) != 0) {
                                    i10 |= 81920;
                                }
                                if ((b11 & 2) != 0) {
                                    i10 |= 8192;
                                }
                                if ((b11 & 4) != 0) {
                                    i10 |= 32768;
                                }
                                if ((b11 & 8) != 0) {
                                    i10 |= 6144;
                                }
                                if ((b11 & 16) != 0) {
                                    i10 |= 33554432;
                                }
                                if ((b11 & HebrewProber.SPACE) != 0) {
                                    i10 |= 262144;
                                }
                                if ((b11 & 64) != 0) {
                                    i10 |= 6144;
                                }
                                if ((b11 & 128) != 0) {
                                    i10 |= 3145728;
                                }
                                byte b12 = descriptor[2];
                                if ((b12 & 1) != 0) {
                                    i10 |= 655360;
                                }
                                if ((b12 & 2) != 0) {
                                    i10 |= 8388608;
                                }
                                if ((b12 & 4) != 0) {
                                    i10 |= 20971520;
                                }
                            }
                            arrayList.add(Integer.valueOf(i10));
                        }
                    }
                }
                List.EL.sort(arrayList, new m(0));
                g0VarM = u7.g0.m(arrayList);
            }
            if (!g0VarM.isEmpty()) {
                return g0VarM;
            }
        }
        u7.g0 g0VarK2 = a9.o.K(audioDescriptors);
        return !g0VarK2.isEmpty() ? g0VarK2 : y0Var;
    }
}
