package net.sf.sevenzipjbinding;

import net.sf.sevenzipjbinding.IOutItemBase;
import net.sf.sevenzipjbinding.impl.OutItemFactory;

/* loaded from: classes.dex */
public interface IOutCreateCallback<T extends IOutItemBase> extends IProgress {
    T getItemInformation(int i10, OutItemFactory<T> outItemFactory);

    ISequentialInStream getStream(int i10);

    void setOperationResult(boolean z);
}
