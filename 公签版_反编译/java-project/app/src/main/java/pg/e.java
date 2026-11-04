package pg;

import j$.time.Instant;
import j$.util.Objects;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public String f12686a;

    /* renamed from: c, reason: collision with root package name */
    public b f12688c;

    /* renamed from: d, reason: collision with root package name */
    public String f12689d;

    /* renamed from: f, reason: collision with root package name */
    public boolean f12691f;

    /* renamed from: i, reason: collision with root package name */
    public long f12694i;

    /* renamed from: j, reason: collision with root package name */
    public long f12695j;

    /* renamed from: b, reason: collision with root package name */
    public int f12687b = -1;

    /* renamed from: e, reason: collision with root package name */
    public Charset f12690e = f.f12696a;

    /* renamed from: g, reason: collision with root package name */
    public Instant f12692g = Instant.EPOCH;

    /* renamed from: h, reason: collision with root package name */
    public int f12693h = 12;

    public final void a(String str) {
        int iMax;
        int i10 = zg.b.f19574a;
        if (str.length() == 0) {
            return;
        }
        byte[] bytes = str.getBytes(this.f12690e);
        if (bytes == null) {
            iMax = -1;
        } else {
            iMax = Math.max(0, 0);
            while (iMax < bytes.length) {
                if (bytes[iMax] == 0) {
                    break;
                } else {
                    iMax++;
                }
            }
            iMax = -1;
        }
        if (iMax != -1) {
            throw new IllegalArgumentException("String encoded in Charset '" + this.f12690e + "' contains the nul byte 0 which is not supported in gzip.");
        }
    }

    public final void b(int i10) {
        if (i10 < -1 || i10 > 9) {
            throw new IllegalArgumentException(da.b.a(i10, "Invalid gzip compression level: "));
        }
        this.f12687b = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        eVar.getClass();
        return Objects.equals(this.f12686a, eVar.f12686a) && this.f12687b == eVar.f12687b && Objects.equals(this.f12688c, eVar.f12688c) && Objects.equals(this.f12689d, eVar.f12689d) && Objects.equals(this.f12690e, eVar.f12690e) && this.f12691f == eVar.f12691f && Objects.equals(this.f12692g, eVar.f12692g) && this.f12693h == eVar.f12693h && this.f12694i == eVar.f12694i && this.f12695j == eVar.f12695j;
    }

    public final int hashCode() {
        String str = this.f12686a;
        Integer numValueOf = Integer.valueOf(this.f12687b);
        b bVar = this.f12688c;
        String str2 = this.f12689d;
        Charset charset = this.f12690e;
        Boolean boolValueOf = Boolean.valueOf(this.f12691f);
        Instant instant = this.f12692g;
        int i10 = this.f12693h;
        return Objects.hash(512, str, numValueOf, 0, bVar, str2, charset, boolValueOf, instant, i10 == 0 ? null : Integer.valueOf(i10 - 1), Long.valueOf(this.f12694i), Long.valueOf(this.f12695j));
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("GzipParameters [bufferSize=512, comment=");
        sb2.append(this.f12686a);
        sb2.append(", compressionLevel=");
        sb2.append(this.f12687b);
        sb2.append(", deflateStrategy=0, extraField=");
        sb2.append(this.f12688c);
        sb2.append(", fileName=");
        sb2.append(this.f12689d);
        sb2.append(", fileNameCharset=");
        sb2.append(this.f12690e);
        sb2.append(", headerCrc=");
        sb2.append(this.f12691f);
        sb2.append(", modificationInstant=");
        sb2.append(this.f12692g);
        sb2.append(", operatingSystem=");
        switch (this.f12693h) {
            case 1:
                str = "ACORN_RISCOS";
                break;
            case 2:
                str = "AMIGA";
                break;
            case 3:
                str = "ATARI_TOS";
                break;
            case 4:
                str = "CPM";
                break;
            case 5:
                str = "FAT";
                break;
            case 6:
                str = "HPFS";
                break;
            case 7:
                str = "MACINTOSH";
                break;
            case 8:
                str = "NTFS";
                break;
            case 9:
                str = "QDOS";
                break;
            case 10:
                str = "TOPS_20";
                break;
            case 11:
                str = "UNIX";
                break;
            case 12:
                str = "UNKNOWN";
                break;
            case 13:
                str = "VM_CMS";
                break;
            case 14:
                str = "VMS";
                break;
            case 15:
                str = "Z_SYSTEM";
                break;
            default:
                str = "null";
                break;
        }
        sb2.append(str);
        sb2.append(", trailerCrc=");
        sb2.append(this.f12694i);
        sb2.append(", trailerISize=");
        return android.support.v4.media.session.a.t(sb2, this.f12695j, "]");
    }
}
