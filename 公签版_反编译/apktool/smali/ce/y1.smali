.class public interface abstract Lce/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final y0:[I

.field public static final z0:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

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
    sput-object v3, Lce/y1;->y0:[I

    .line 11
    .line 12
    new-array v2, v2, [Ljava/lang/String;

    .line 13
    .line 14
    const-string v3, "The operation completed successfully."

    .line 15
    .line 16
    aput-object v3, v2, v0

    .line 17
    .line 18
    const-string v0, "Access is denied."

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object v0, v2, v3

    .line 22
    .line 23
    const-string v0, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    const-string v0, "The pipe state is invalid."

    .line 29
    .line 30
    const/4 v3, 0x3

    .line 31
    aput-object v0, v2, v3

    .line 32
    .line 33
    const-string v0, "All pipe instances are busy."

    .line 34
    .line 35
    const/4 v3, 0x4

    .line 36
    aput-object v0, v2, v3

    .line 37
    .line 38
    const-string v0, "The pipe is being closed."

    .line 39
    .line 40
    aput-object v0, v2, v1

    .line 41
    .line 42
    const-string v0, "No process is on the other end of the pipe."

    .line 43
    .line 44
    const/4 v1, 0x6

    .line 45
    aput-object v0, v2, v1

    .line 46
    .line 47
    const-string v0, "More data is available."

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    aput-object v0, v2, v1

    .line 51
    .line 52
    const-string v0, "The list of servers for this workgroup is not currently available."

    .line 53
    .line 54
    const/16 v1, 0x8

    .line 55
    .line 56
    aput-object v0, v2, v1

    .line 57
    .line 58
    sput-object v2, Lce/y1;->z0:[Ljava/lang/String;

    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 4
        0x0
        0x5
        0x47
        0xe6
        0xe7
        0xe8
        0xe9
        0xea
        0x17e6
    .end array-data
.end method
