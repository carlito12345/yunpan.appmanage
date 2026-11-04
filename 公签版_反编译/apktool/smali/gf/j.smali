.class public final enum Lgf/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lgf/j;

.field public static final enum b:Lgf/j;

.field public static final enum c:Lgf/j;

.field public static final synthetic d:[Lgf/j;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lgf/j;

    .line 2
    .line 3
    const-string v1, "ANY"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lgf/j;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lgf/j;->a:Lgf/j;

    .line 10
    .line 11
    new-instance v1, Lgf/j;

    .line 12
    .line 13
    const-string v3, "CHOICE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lgf/j;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lgf/j;->b:Lgf/j;

    .line 20
    .line 21
    new-instance v3, Lgf/j;

    .line 22
    .line 23
    const-string v5, "INTEGER"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lgf/j;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lgf/j;

    .line 30
    .line 31
    const-string v7, "OBJECT_IDENTIFIER"

    .line 32
    .line 33
    const/4 v8, 0x3

    .line 34
    invoke-direct {v5, v7, v8}, Lgf/j;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lgf/j;

    .line 38
    .line 39
    const-string v9, "OCTET_STRING"

    .line 40
    .line 41
    const/4 v10, 0x4

    .line 42
    invoke-direct {v7, v9, v10}, Lgf/j;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    new-instance v9, Lgf/j;

    .line 46
    .line 47
    const-string v11, "SEQUENCE"

    .line 48
    .line 49
    const/4 v12, 0x5

    .line 50
    invoke-direct {v9, v11, v12}, Lgf/j;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    sput-object v9, Lgf/j;->c:Lgf/j;

    .line 54
    .line 55
    new-instance v11, Lgf/j;

    .line 56
    .line 57
    const-string v13, "SEQUENCE_OF"

    .line 58
    .line 59
    const/4 v14, 0x6

    .line 60
    invoke-direct {v11, v13, v14}, Lgf/j;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    new-instance v13, Lgf/j;

    .line 64
    .line 65
    const-string v15, "SET_OF"

    .line 66
    .line 67
    const/4 v14, 0x7

    .line 68
    invoke-direct {v13, v15, v14}, Lgf/j;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    const/16 v15, 0x8

    .line 72
    .line 73
    new-array v15, v15, [Lgf/j;

    .line 74
    .line 75
    aput-object v0, v15, v2

    .line 76
    .line 77
    aput-object v1, v15, v4

    .line 78
    .line 79
    aput-object v3, v15, v6

    .line 80
    .line 81
    aput-object v5, v15, v8

    .line 82
    .line 83
    aput-object v7, v15, v10

    .line 84
    .line 85
    aput-object v9, v15, v12

    .line 86
    .line 87
    const/4 v0, 0x6

    .line 88
    aput-object v11, v15, v0

    .line 89
    .line 90
    aput-object v13, v15, v14

    .line 91
    .line 92
    sput-object v15, Lgf/j;->d:[Lgf/j;

    .line 93
    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgf/j;
    .locals 1

    .line 1
    const-class v0, Lgf/j;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lgf/j;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lgf/j;
    .locals 1

    .line 1
    sget-object v0, Lgf/j;->d:[Lgf/j;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lgf/j;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lgf/j;

    .line 8
    .line 9
    return-object v0
.end method
