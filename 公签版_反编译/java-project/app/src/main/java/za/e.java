package za;

import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.RandomAccessFile;
import java.text.DecimalFormat;
import java.util.ArrayList;
import net.sf.sevenzipjbinding.IOutItem7z;
import net.sf.sevenzipjbinding.IOutItemBase;
import net.sf.sevenzipjbinding.ISequentialInStream;
import net.sf.sevenzipjbinding.SevenZipException;
import net.sf.sevenzipjbinding.impl.OutItemFactory;
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream;
import ta.q;
import x9.w3;

/* loaded from: classes.dex */
public final class e extends ab.a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f19532c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f19533d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ a f19534e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ mc.b f19535f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(String str, ArrayList arrayList, a aVar, mc.b bVar) {
        super(0);
        this.f19532c = str;
        this.f19533d = arrayList;
        this.f19534e = aVar;
        this.f19535f = bVar;
    }

    @Override // net.sf.sevenzipjbinding.ICryptoGetTextPassword
    public final String cryptoGetTextPassword() {
        String str = this.f19532c;
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    @Override // net.sf.sevenzipjbinding.IOutCreateCallback
    public final IOutItemBase getItemInformation(int i10, OutItemFactory outItemFactory) {
        int i11;
        IOutItem7z iOutItem7z = (IOutItem7z) outItemFactory.createOutItem();
        ArrayList arrayList = this.f19533d;
        if (((w3) arrayList.get(i10)).f18366c) {
            iOutItem7z.setPropertyIsDir(Boolean.TRUE);
            i11 = -2115141616;
        } else {
            iOutItem7z.setDataSize(Long.valueOf(((w3) arrayList.get(i10)).f18367d));
            i11 = -2119925760;
        }
        iOutItem7z.setPropertyPath(((w3) arrayList.get(i10)).f18377o);
        iOutItem7z.setPropertyAttributes(Integer.valueOf(i11));
        return iOutItem7z;
    }

    @Override // net.sf.sevenzipjbinding.IOutCreateCallback
    public final ISequentialInStream getStream(int i10) throws SevenZipException {
        ArrayList arrayList = this.f19533d;
        if (((w3) arrayList.get(i10)).f18366c) {
            return null;
        }
        try {
            return new RandomAccessFileInStream(new RandomAccessFile(new File(((w3) arrayList.get(i10)).f18365b), "r"));
        } catch (FileNotFoundException e7) {
            throw new SevenZipException(e7);
        }
    }

    @Override // net.sf.sevenzipjbinding.IProgress
    public final void setCompleted(long j10) {
        a aVar = this.f19534e;
        aVar.f19514b = j10;
        int i10 = this.f567b + 1;
        this.f567b = i10;
        mc.b bVar = this.f19535f;
        if (i10 % 10 == 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(p000if.a.D0(aVar.f19514b));
            sb2.append("/");
            sb2.append(p000if.a.D0(aVar.f19513a));
            sb2.append("  ");
            DecimalFormat decimalFormat = k.f4034u0;
            k kVar = j.f4033a;
            DecimalFormat decimalFormat2 = k.f4034u0;
            double d10 = aVar.f19514b;
            Double.isNaN(d10);
            double d11 = aVar.f19513a;
            Double.isNaN(d11);
            aVar.f19515c = q.n(decimalFormat2, (d10 * 100.0d) / d11, sb2, "%");
            bVar.f(aVar);
        }
    }

    @Override // net.sf.sevenzipjbinding.IProgress
    public final void setTotal(long j10) {
        this.f19534e.f19513a = j10;
    }

    @Override // net.sf.sevenzipjbinding.IOutCreateCallback
    public final void setOperationResult(boolean z) {
    }
}
