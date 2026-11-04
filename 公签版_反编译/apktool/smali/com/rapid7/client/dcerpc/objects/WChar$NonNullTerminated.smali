.class public Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;
.super Lcom/rapid7/client/dcerpc/objects/WChar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/objects/WChar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonNullTerminated"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/objects/WChar;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/rapid7/client/dcerpc/objects/WChar;->setValue(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public isNullTerminated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
