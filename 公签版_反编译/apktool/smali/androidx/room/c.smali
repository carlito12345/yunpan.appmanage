.class public final Landroidx/room/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/room/o;

.field public final c:Ljava/util/ArrayList;

.field public final d:I

.field public final e:Ljava/util/LinkedHashSet;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgf/g;Landroidx/room/o;Ljava/util/ArrayList;ILjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    const-string p2, "migrationContainer"

    .line 2
    .line 3
    invoke-static {p3, p2}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "journalMode"

    .line 7
    .line 8
    invoke-static {p5, p2}, Lta/q;->p(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/room/c;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/room/c;->b:Landroidx/room/o;

    .line 17
    .line 18
    iput-object p4, p0, Landroidx/room/c;->c:Ljava/util/ArrayList;

    .line 19
    .line 20
    iput p5, p0, Landroidx/room/c;->d:I

    .line 21
    .line 22
    iput-object p6, p0, Landroidx/room/c;->e:Ljava/util/LinkedHashSet;

    .line 23
    .line 24
    iput-object p7, p0, Landroidx/room/c;->f:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-object p8, p0, Landroidx/room/c;->g:Ljava/util/ArrayList;

    .line 27
    .line 28
    return-void
.end method
