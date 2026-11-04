.class public interface abstract Lxd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final K0:[I

.field public static final L0:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    const/16 v2, 0x9

    .line 4
    .line 5
    new-array v3, v2, [I

    .line 6
    .line 7
    fill-array-data v3, :array_0

    .line 8
    .line 9
    .line 10
    sput-object v3, Lxd/d;->K0:[I

    .line 11
    .line 12
    new-array v2, v2, [Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "DCERPC_FAULT_OTHER"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 18
    .line 19
    const-string v3, "DCERPC_FAULT_ACCESS_DENIED"

    .line 20
    .line 21
    aput-object v3, v2, v0

    .line 22
    .line 23
    const-string v0, "DCERPC_FAULT_CANT_PERFORM"

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    const-string v0, "DCERPC_FAULT_NDR"

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    aput-object v0, v2, v3

    .line 32
    .line 33
    const-string v0, "DCERPC_FAULT_INVALID_TAG"

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    aput-object v0, v2, v3

    .line 37
    .line 38
    const-string v0, "DCERPC_FAULT_CONTEXT_MISMATCH"

    .line 39
    .line 40
    aput-object v0, v2, v1

    .line 41
    .line 42
    const-string v0, "DCERPC_FAULT_OP_RNG_ERROR"

    .line 43
    .line 44
    const/4 v1, 0x6

    .line 45
    aput-object v0, v2, v1

    .line 46
    .line 47
    const-string v0, "DCERPC_FAULT_UNK_IF"

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    aput-object v0, v2, v1

    .line 51
    .line 52
    const-string v0, "DCERPC_FAULT_PROTO_ERROR"

    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    aput-object v0, v2, v1

    .line 57
    .line 58
    sput-object v2, Lxd/d;->L0:[Ljava/lang/String;

    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 4
        0x1
        0x5
        0x6d8
        0x6f7
        0x1c000006
        0x1c00001a
        0x1c010002
        0x1c010003
        0x1c01000b
    .end array-data
.end method
