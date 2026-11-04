package net.sf.sevenzipjbinding;

import java.io.Closeable;
import net.sf.sevenzipjbinding.simple.ISimpleInArchive;

/* loaded from: classes.dex */
public interface IInArchive extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void extract(int[] iArr, boolean z, IArchiveExtractCallback iArchiveExtractCallback);

    ExtractOperationResult extractSlow(int i10, ISequentialOutStream iSequentialOutStream);

    ExtractOperationResult extractSlow(int i10, ISequentialOutStream iSequentialOutStream, String str);

    ArchiveFormat getArchiveFormat();

    Object getArchiveProperty(PropID propID);

    PropertyInfo getArchivePropertyInfo(int i10);

    IOutUpdateArchive<IOutItemAllFormats> getConnectedOutArchive();

    IOutUpdateArchive7z getConnectedOutArchive7z();

    IOutUpdateArchiveBZip2 getConnectedOutArchiveBZip2();

    IOutUpdateArchiveGZip getConnectedOutArchiveGZip();

    IOutUpdateArchiveTar getConnectedOutArchiveTar();

    IOutUpdateArchiveZip getConnectedOutArchiveZip();

    int getNumberOfArchiveProperties();

    int getNumberOfItems();

    int getNumberOfProperties();

    Object getProperty(int i10, PropID propID);

    PropertyInfo getPropertyInfo(int i10);

    ISimpleInArchive getSimpleInterface();

    String getStringArchiveProperty(PropID propID);

    String getStringProperty(int i10, PropID propID);
}
