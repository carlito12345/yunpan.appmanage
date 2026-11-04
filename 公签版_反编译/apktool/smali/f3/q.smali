.class public final Lf3/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Landroidx/room/s;

.field public static final e:Landroidx/room/s;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lt7/b;

    .line 2
    .line 3
    const/16 v1, 0x3a

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lt7/b;-><init>(C)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/room/s;

    .line 9
    .line 10
    new-instance v2, Ll5/y;

    .line 11
    .line 12
    const/16 v3, 0x11

    .line 13
    .line 14
    invoke-direct {v2, v3, v0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroidx/room/s;-><init>(Lt7/m;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lf3/q;->d:Landroidx/room/s;

    .line 21
    .line 22
    new-instance v0, Lt7/b;

    .line 23
    .line 24
    const/16 v1, 0x2a

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lt7/b;-><init>(C)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroidx/room/s;

    .line 30
    .line 31
    new-instance v2, Ll5/y;

    .line 32
    .line 33
    const/16 v3, 0x11

    .line 34
    .line 35
    invoke-direct {v2, v3, v0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v1, v2}, Landroidx/room/s;-><init>(Lt7/m;)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lf3/q;->e:Landroidx/room/s;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf3/q;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lf3/q;->b:I

    .line 13
    .line 14
    return-void
.end method
