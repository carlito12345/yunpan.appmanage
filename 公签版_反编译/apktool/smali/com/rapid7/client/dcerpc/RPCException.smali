.class public Lcom/rapid7/client/dcerpc/RPCException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final errorCode:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

.field private final returnValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/rapid7/client/dcerpc/RPCException;->formatMessage(Ljava/lang/String;I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput p2, p0, Lcom/rapid7/client/dcerpc/RPCException;->returnValue:I

    .line 9
    .line 10
    invoke-static {p2}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->getErrorCode(I)Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/RPCException;->errorCode:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 15
    .line 16
    return-void
.end method

.method private static formatMessage(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->getErrorCode(I)Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "("

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ")"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v1, 0x3

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    aput-object p0, v1, v2

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    aput-object p1, v1, p0

    .line 41
    .line 42
    const/4 p0, 0x2

    .line 43
    aput-object v0, v1, p0

    .line 44
    .line 45
    const-string p0, "%s returned error code: 0x%08X %s"

    .line 46
    .line 47
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method


# virtual methods
.method public getErrorCode()Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/RPCException;->errorCode:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReturnValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/RPCException;->returnValue:I

    .line 2
    .line 3
    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/RPCException;->errorCode:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
