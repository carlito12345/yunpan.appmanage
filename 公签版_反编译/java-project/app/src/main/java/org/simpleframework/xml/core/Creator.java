package org.simpleframework.xml.core;

/* loaded from: classes3.dex */
interface Creator {
    Object getInstance();

    Object getInstance(Criteria criteria);

    double getScore(Criteria criteria);

    Signature getSignature();

    Class getType();
}
