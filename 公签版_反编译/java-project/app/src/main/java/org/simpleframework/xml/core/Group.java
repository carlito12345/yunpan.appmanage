package org.simpleframework.xml.core;

/* loaded from: classes3.dex */
interface Group {
    LabelMap getElements();

    Label getLabel(Class cls);

    Label getText();

    boolean isInline();

    boolean isTextList();

    String toString();
}
