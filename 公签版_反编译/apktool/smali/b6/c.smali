.class public abstract Lb6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lgf/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgf/g;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lgf/g;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lb6/c;->a:Lgf/g;

    .line 9
    .line 10
    return-void
.end method

.method public static a(ILb6/a;)Lv3/f;
    .locals 3

    .line 1
    new-instance v0, Lw0/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lw0/d;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lb6/c;->a:Lgf/g;

    .line 7
    .line 8
    new-instance v1, Lv3/f;

    .line 9
    .line 10
    const/4 v2, 0x6

    .line 11
    invoke-direct {v1, v0, p1, p0, v2}, Lv3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method
