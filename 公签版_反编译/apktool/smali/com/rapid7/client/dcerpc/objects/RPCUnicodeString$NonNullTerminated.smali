.class public Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
.super Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonNullTerminated"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->setValue(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public createWChar()Lcom/rapid7/client/dcerpc/objects/WChar;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
