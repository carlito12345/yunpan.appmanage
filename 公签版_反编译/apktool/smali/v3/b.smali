.class public abstract Lv3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/room/s;

.field public static final b:Landroidx/room/s;

.field public static final c:Lbd/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/room/s;->r(Ljava/lang/String;)Landroidx/room/s;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Lv3/b;->a:Landroidx/room/s;

    .line 8
    .line 9
    const-string v1, "\r\n"

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/room/s;->r(Ljava/lang/String;)Landroidx/room/s;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lv3/b;->b:Landroidx/room/s;

    .line 16
    .line 17
    new-instance v1, Lbd/c;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lbd/c;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lv3/b;->c:Lbd/c;

    .line 23
    .line 24
    return-void
.end method
