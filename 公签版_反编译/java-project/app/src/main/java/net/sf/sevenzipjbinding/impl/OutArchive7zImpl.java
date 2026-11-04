package net.sf.sevenzipjbinding.impl;

import net.sf.sevenzipjbinding.IOutCreateArchive7z;
import net.sf.sevenzipjbinding.IOutItem7z;
import net.sf.sevenzipjbinding.IOutUpdateArchive7z;
import net.sf.sevenzipjbinding.SevenZipException;

/* loaded from: classes.dex */
public class OutArchive7zImpl extends OutArchiveImpl<IOutItem7z> implements IOutCreateArchive7z, IOutUpdateArchive7z {
    private boolean solidExtension;
    private boolean solid = true;
    private int countOfFilesPerBlock = -1;
    private long countOfBytesPerBlock = -1;

    @Override // net.sf.sevenzipjbinding.impl.OutArchiveImpl
    public void applyFeatures() throws SevenZipException {
        super.applyFeatures();
        StringBuilder sb2 = new StringBuilder();
        if (this.solidExtension) {
            sb2.append("E");
        }
        int i10 = this.countOfFilesPerBlock;
        if (i10 != -1) {
            sb2.append(i10);
            sb2.append("F");
        }
        long j10 = this.countOfBytesPerBlock;
        if (j10 != -1) {
            sb2.append(j10);
            sb2.append("B");
        }
        if (sb2.length() > 0) {
            nativeSetSolidSpec(sb2.toString());
        }
        if (this.solid) {
            return;
        }
        nativeSetSolidSpec(null);
    }

    @Override // net.sf.sevenzipjbinding.IOutFeatureSetEncryptHeader
    public void setHeaderEncryption(boolean z) {
        featureSetHeaderEncryption(z);
    }

    @Override // net.sf.sevenzipjbinding.IOutFeatureSetLevel
    public void setLevel(int i10) {
        featureSetLevel(i10);
    }

    @Override // net.sf.sevenzipjbinding.IOutFeatureSetSolid
    public void setSolid(boolean z) {
        this.solid = z;
    }

    @Override // net.sf.sevenzipjbinding.IOutFeatureSetSolid
    public void setSolidExtension(boolean z) {
        this.solidExtension = z;
    }

    @Override // net.sf.sevenzipjbinding.IOutFeatureSetSolid
    public void setSolidFiles(int i10) {
        this.countOfFilesPerBlock = i10;
    }

    @Override // net.sf.sevenzipjbinding.IOutFeatureSetSolid
    public void setSolidSize(long j10) {
        this.countOfBytesPerBlock = j10;
    }

    @Override // net.sf.sevenzipjbinding.IOutFeatureSetMultithreading
    public void setThreadCount(int i10) {
        featureSetThreadCount(i10);
    }
}
