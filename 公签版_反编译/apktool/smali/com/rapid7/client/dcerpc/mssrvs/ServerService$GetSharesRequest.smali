.class abstract Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssrvs/ServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "GetSharesRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;",
        "N:",
        "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final preferredMaximumLength:J

.field private final shares:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rapid7/client/dcerpc/mssrvs/ServerService;


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->this$0:Lcom/rapid7/client/dcerpc/mssrvs/ServerService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->preferredMaximumLength:J

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->shares:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public call()Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest<",
            "TS;TN;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lbh/b;

    .line 4
    .line 5
    invoke-direct {v2}, Lbh/b;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    iget-wide v3, p0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->preferredMaximumLength:J

    .line 9
    .line 10
    iget-wide v5, v2, Lbh/b;->a:J

    .line 11
    .line 12
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {p0, v3, v4, v5}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->createRequest(JLjava/lang/Long;)Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->this$0:Lcom/rapid7/client/dcerpc/mssrvs/ServerService;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x2

    .line 27
    new-array v6, v6, [Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 28
    .line 29
    sget-object v7, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_MORE_DATA:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 30
    .line 31
    aput-object v7, v6, v1

    .line 32
    .line 33
    sget-object v7, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 34
    .line 35
    aput-object v7, v6, v0

    .line 36
    .line 37
    invoke-static {v4, v3, v5, v6}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->access$600(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->getShareEnumStruct()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct;->getShareInfoContainer()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer;->getBuffer()[Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eqz v4, :cond_0

    .line 60
    .line 61
    array-length v5, v4

    .line 62
    const/4 v6, 0x0

    .line 63
    :goto_1
    if-ge v6, v5, :cond_0

    .line 64
    .line 65
    aget-object v7, v4, v6

    .line 66
    .line 67
    iget-object v8, p0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->shares:Ljava/util/List;

    .line 68
    .line 69
    invoke-virtual {p0, v7}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->convert(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/2addr v6, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    sget-object v4, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-virtual {v4, v5}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_1

    .line 89
    .line 90
    return-object p0

    .line 91
    :cond_1
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumResponse;->getResumeHandle()Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v4

    .line 101
    iget-wide v6, v2, Lbh/b;->a:J

    .line 102
    .line 103
    cmp-long v8, v4, v6

    .line 104
    .line 105
    if-eqz v8, :cond_2

    .line 106
    .line 107
    iget-wide v4, v2, Lbh/b;->a:J

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    add-long/2addr v6, v4

    .line 114
    iput-wide v6, v2, Lbh/b;->a:J

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    new-instance v0, Lcom/hierynomus/protocol/transport/TransportException;

    .line 118
    .line 119
    const-string v1, "NetrShareEnum resume handle not updated."

    .line 120
    .line 121
    invoke-direct {v0, v1}, Lcom/hierynomus/protocol/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_3
    new-instance v0, Lcom/hierynomus/protocol/transport/TransportException;

    .line 126
    .line 127
    const-string v1, "NetrShareEnum resume handle null."

    .line 128
    .line 129
    invoke-direct {v0, v1}, Lcom/hierynomus/protocol/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :goto_2
    throw v0

    .line 134
    :goto_3
    goto :goto_2
.end method

.method public abstract convert(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TN;"
        }
    .end annotation
.end method

.method public abstract createRequest(JLjava/lang/Long;)Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            ")",
            "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareEnumRequest<",
            "+",
            "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareEnumStruct<",
            "+",
            "Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfoContainer<",
            "TS;>;>;>;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getShares()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->shares:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
