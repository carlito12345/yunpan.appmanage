.class public final enum Lcom/hsae/autosdk/popup/constant/Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hsae/autosdk/popup/constant/Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum ERROR_EMPTY_CONTEXT:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum ERROR_EMPTY_POPUP_CALLBACK:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum ERROR_EMPTY_POPUP_TYPE:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum ERROR_EMPTY_VIEW:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum ERROR_EMPTY_WARN_TYPE:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum ERROR_ENUM_INDEX:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum ERROR_FORBIDDEN_POPUP_TYPE_TO_REGISTER:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum ERROR_POPUP_ALREADY_EXIST:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum EXCEPTION:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum REMOTE_EXCEPTION:Lcom/hsae/autosdk/popup/constant/Result;

.field public static final enum SUCCESS:Lcom/hsae/autosdk/popup/constant/Result;


# direct methods
.method private static synthetic $values()[Lcom/hsae/autosdk/popup/constant/Result;
    .locals 3

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [Lcom/hsae/autosdk/popup/constant/Result;

    .line 4
    .line 5
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->SUCCESS:Lcom/hsae/autosdk/popup/constant/Result;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->EXCEPTION:Lcom/hsae/autosdk/popup/constant/Result;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->REMOTE_EXCEPTION:Lcom/hsae/autosdk/popup/constant/Result;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_ENUM_INDEX:Lcom/hsae/autosdk/popup/constant/Result;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_CONTEXT:Lcom/hsae/autosdk/popup/constant/Result;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_VIEW:Lcom/hsae/autosdk/popup/constant/Result;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_POPUP_TYPE:Lcom/hsae/autosdk/popup/constant/Result;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_WARN_TYPE:Lcom/hsae/autosdk/popup/constant/Result;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_POPUP_CALLBACK:Lcom/hsae/autosdk/popup/constant/Result;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_POPUP_ALREADY_EXIST:Lcom/hsae/autosdk/popup/constant/Result;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    sget-object v1, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_FORBIDDEN_POPUP_TYPE_TO_REGISTER:Lcom/hsae/autosdk/popup/constant/Result;

    .line 58
    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    aput-object v1, v0, v2

    .line 62
    .line 63
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->SUCCESS:Lcom/hsae/autosdk/popup/constant/Result;

    .line 10
    .line 11
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 12
    .line 13
    const-string v1, "EXCEPTION"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->EXCEPTION:Lcom/hsae/autosdk/popup/constant/Result;

    .line 20
    .line 21
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 22
    .line 23
    const-string v1, "REMOTE_EXCEPTION"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->REMOTE_EXCEPTION:Lcom/hsae/autosdk/popup/constant/Result;

    .line 30
    .line 31
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 32
    .line 33
    const-string v1, "ERROR_ENUM_INDEX"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_ENUM_INDEX:Lcom/hsae/autosdk/popup/constant/Result;

    .line 40
    .line 41
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 42
    .line 43
    const-string v1, "ERROR_EMPTY_CONTEXT"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_CONTEXT:Lcom/hsae/autosdk/popup/constant/Result;

    .line 50
    .line 51
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 52
    .line 53
    const-string v1, "ERROR_EMPTY_VIEW"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_VIEW:Lcom/hsae/autosdk/popup/constant/Result;

    .line 60
    .line 61
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 62
    .line 63
    const-string v1, "ERROR_EMPTY_POPUP_TYPE"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_POPUP_TYPE:Lcom/hsae/autosdk/popup/constant/Result;

    .line 70
    .line 71
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 72
    .line 73
    const-string v1, "ERROR_EMPTY_WARN_TYPE"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_WARN_TYPE:Lcom/hsae/autosdk/popup/constant/Result;

    .line 80
    .line 81
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 82
    .line 83
    const-string v1, "ERROR_EMPTY_POPUP_CALLBACK"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_EMPTY_POPUP_CALLBACK:Lcom/hsae/autosdk/popup/constant/Result;

    .line 91
    .line 92
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 93
    .line 94
    const-string v1, "ERROR_POPUP_ALREADY_EXIST"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_POPUP_ALREADY_EXIST:Lcom/hsae/autosdk/popup/constant/Result;

    .line 102
    .line 103
    new-instance v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 104
    .line 105
    const-string v1, "ERROR_FORBIDDEN_POPUP_TYPE_TO_REGISTER"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lcom/hsae/autosdk/popup/constant/Result;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->ERROR_FORBIDDEN_POPUP_TYPE_TO_REGISTER:Lcom/hsae/autosdk/popup/constant/Result;

    .line 113
    .line 114
    invoke-static {}, Lcom/hsae/autosdk/popup/constant/Result;->$values()[Lcom/hsae/autosdk/popup/constant/Result;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/hsae/autosdk/popup/constant/Result;->$VALUES:[Lcom/hsae/autosdk/popup/constant/Result;

    .line 119
    .line 120
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final findByIndex(I)Lcom/hsae/autosdk/popup/constant/Result;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/hsae/autosdk/popup/constant/Result;->values()[Lcom/hsae/autosdk/popup/constant/Result;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :catch_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hsae/autosdk/popup/constant/Result;
    .locals 1

    .line 1
    const-class v0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hsae/autosdk/popup/constant/Result;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hsae/autosdk/popup/constant/Result;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/popup/constant/Result;->$VALUES:[Lcom/hsae/autosdk/popup/constant/Result;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hsae/autosdk/popup/constant/Result;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hsae/autosdk/popup/constant/Result;

    .line 8
    .line 9
    return-object v0
.end method
