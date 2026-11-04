package net.sf.sevenzipjbinding;

/* loaded from: classes.dex */
public interface IOutCreateArchiveZip extends IOutCreateArchive<IOutItemZip>, IOutFeatureSetLevel {
    void createArchive(IOutStream iOutStream, int i10, IOutCreateCallback<? extends IOutItemZip> iOutCreateCallback);
}
