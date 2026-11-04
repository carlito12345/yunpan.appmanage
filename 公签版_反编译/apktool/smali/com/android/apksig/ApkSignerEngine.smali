.class public interface abstract Lcom/android/apksig/ApkSignerEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;,
        Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest;,
        Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;,
        Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;,
        Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract generateSourceStampCertificateDigest()[B
.end method

.method public abstract initWith([BLjava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract inputApkSigningBlock(Lcom/android/apksig/util/DataSource;)V
.end method

.method public abstract inputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;
.end method

.method public abstract inputJarEntryRemoved(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;
.end method

.method public abstract isEligibleForSourceStamp()Z
.end method

.method public abstract outputDone()V
.end method

.method public abstract outputJarEntries()Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;
.end method

.method public abstract outputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;
.end method

.method public abstract outputJarEntryRemoved(Ljava/lang/String;)V
.end method

.method public abstract outputZipSections(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract outputZipSections2(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;
.end method

.method public abstract setExecutor(Lcom/android/apksig/util/RunnablesExecutor;)V
.end method

.method public abstract signV4(Lcom/android/apksig/util/DataSource;Ljava/io/File;Z)V
.end method
